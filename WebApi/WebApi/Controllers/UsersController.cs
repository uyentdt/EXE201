﻿using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Threading.Tasks;
using WebApi.DTOs;
using WebApi.DTOs.Users;
using WebApi.EF;
using WebApi.Helper.Common;
using WebApi.Helper.JwtConfigure;
using WebApi.Models;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly DBcontext _context;
        private readonly UserManager<AppUser> _userManager;
        private readonly IMapper _mapper;
        private readonly JsonSerializerSettings _serializerSettings;
        private readonly IJwtFactory _jwtFactory;
        private readonly JwtIssuerOptions _jwtOptions;
        private readonly IConfiguration _configuration;
        private readonly IEmailService _emailService;
        static string id;


        public UsersController(DBcontext context, UserManager<AppUser> userManager, IMapper mapper, IJwtFactory jwtFactory, IOptions<JwtIssuerOptions> jwtOptions, IConfiguration configuration, IEmailService emailService)
        {
            _context = context;
            _mapper = mapper;
            _userManager = userManager;
            _serializerSettings = new JsonSerializerSettings
            {
                Formatting = Formatting.Indented
            };
            _jwtFactory = jwtFactory;
            _jwtOptions = jwtOptions.Value;
            _configuration = configuration;
            _emailService = emailService;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<AppUser>>> GetAllUSers()
        {
            return await _userManager.Users.ToListAsync();
        }

        //register
        [HttpPost("register")]
        public async Task<IActionResult> Register([FromForm] UserCreateRequest request)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            var isEmailExist = _context.AppUsers.Where(e => e.Email == request.Email).SingleOrDefault();
            if (isEmailExist != null)
            {
                return BadRequest();
            }
            var userIdentity = _mapper.Map<AppUser>(request);
            var result = await _userManager.CreateAsync(userIdentity, request.Password);
            _context.AppUsers.Update(userIdentity);
            await _context.SaveChangesAsync();
            return Ok();
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] UserLoginrequest request)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            var identity = await GetClaimsIdentity(request.UserName, request.Password);
            if (identity == null)
            {
                return BadRequest();
            }

            var response = new
            {
                id = identity.Claims.Single(c => c.Type == "id").Value,
                role = _context.AppUsers.FirstOrDefault(s => s.Id == id).Role,
                fullname = _context.AppUsers.FirstOrDefault(s => s.Id == id).FirstName + " " + _context.AppUsers.FirstOrDefault(s => s.Id == id).LastName,
                email = _context.AppUsers.FirstOrDefault(s => s.Id == id).Email,
                auth_token = await _jwtFactory.GenerateEncodedToken(request.UserName, identity),
                expires_in = (int)_jwtOptions.ValidFor.TotalSeconds
            };
            var json = JsonConvert.SerializeObject(response, _serializerSettings);
            return new OkObjectResult(json);
        }

        private async Task<ClaimsIdentity> GetClaimsIdentity(string userName, string password)
        {
            if (!string.IsNullOrEmpty(userName) && !string.IsNullOrEmpty(password))
            {
                // get the user to verifty
                var userToVerify = await _userManager.FindByNameAsync(userName);
                if (userToVerify != null)
                {
                    // check the credentials  
                    if (await _userManager.CheckPasswordAsync(userToVerify, password))
                    {
                        AuthHistory auth = new AuthHistory();
                        auth.UserId = userToVerify.Id;
                        auth.CreatedAt = DateTime.Now;
                        _context.AuthHistories.Add(auth);
                        await _context.SaveChangesAsync();
                        id = userToVerify.Id;
                        return await Task.FromResult(_jwtFactory.GenerateClaimsIdentity(userName, userToVerify.Id, userToVerify.Role));
                    }
                }
            }
            return await Task.FromResult<ClaimsIdentity>(null);
        }

        [HttpGet("getUserAddress/{id}")]
        public async Task<IActionResult> GetUerAddress(string id)
        {
            var result = await _context.AppUsers.Where(d => d.Id == id).Select(d => d.Address).SingleOrDefaultAsync();
            return Ok(result);
        }


        [HttpGet("authHistory")]
        public async Task<ActionResult<AppUser>> GetAuthHistory()
        {
            var appUser = await _context.AppUsers.FindAsync(id);
            return appUser;
        }

        [HttpPost("logout")]
        public IActionResult logout()
        {
            id = null;
            return Ok();
        }


        [HttpPut("updateUser/{id}")]
        public async Task<IActionResult> UpdateUser(string id, [FromForm] UserUpdateRequest request)
        {
            var result = await _context.AppUsers.Where(d => d.Id == id).SingleOrDefaultAsync();
            result.FirstName = request.FirstName;
            result.LastName = request.LastName;
            result.PhoneNumber = request.PhoneNumber;
            result.Address = request.Address;
            result.Email = request.Email;
            result.NormalizedEmail = request.Email.ToUpper();
            await _userManager.ChangePasswordAsync(result, request.Password, request.PasswordNew);
            _context.AppUsers.Update(result);
            await _context.SaveChangesAsync();
            return Ok(result);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteUser(string id)
        {
            var user = await _context.AppUsers.FindAsync(id);
            if (user == null)
            {
                return NotFound();
            }
            var userAuth = _context.AuthHistories.Where(u => u.UserId == id);
            if (userAuth == null)
            {
                return NotFound();
            }
            foreach (var item in userAuth)
            {
                _context.AuthHistories.Remove(item);
            }
            _context.AppUsers.Remove(user);
            await _context.SaveChangesAsync();
            return Ok();
        }

        [HttpPost("send-reset-email/{email}")]
        public async Task<IActionResult> SendEmail(string email)
        {
            var user = await _context.AppUsers.FirstOrDefaultAsync(a => a.Email == email);
            if (user is null)
                return NotFound(new
                {
                    StatusCode = 404,
                    Message = "Email Doesn't Exist"
                });
            byte[] tokenBytes = new byte[64];
            using (var rng = RandomNumberGenerator.Create())
            {
                rng.GetBytes(tokenBytes);
            }

            var emailToken = Convert.ToBase64String(tokenBytes);
            user.ResetPasswordToken = emailToken;
            user.ResetPasswordExpiry = DateTime.Now.AddMinutes(5);
            string from = _configuration["EmailSettings:From"];
            var emailModel = new Email(email, "Đặt lại mật khẩu!", EmailBody.EmailStringBody(email, emailToken));
            _emailService.SendEmail(emailModel);
            _context.Entry(user).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return Ok(new
            {
                StatusCode = 200,
                Message = "Email sent!"
            });
        }


        [HttpPost("reset-password")]
        public async Task<IActionResult> ResetPassword(ResetPasswordDto resetPasswordDto)
        {
            var newToken = resetPasswordDto.EmailToken.Replace(" ", "+");
            var user = await _context.AppUsers.FirstOrDefaultAsync(a => resetPasswordDto.Email == a.Email);
            if (user is null)
                return NotFound(new
                {
                    StatusCode = 404,
                    Message = "No user found with this email!"
                });
            var tokenCode = user.ResetPasswordToken;
            DateTime emailTokenExpiry = user.ResetPasswordExpiry;
            if (tokenCode != resetPasswordDto.EmailToken || emailTokenExpiry < DateTime.Now)
                return NotFound(new
                {
                    StatusCode = 400,
                    Message = "Invalid reset link!"
                });
            user.PasswordHash = null;
            await _userManager.AddPasswordAsync(user, resetPasswordDto.NewPassword);
            await _context.SaveChangesAsync();
            return Ok(new
            {
                StatusCode = 200,
                Message = "Password Reset Successfully!"
            });
        }
    }
}
