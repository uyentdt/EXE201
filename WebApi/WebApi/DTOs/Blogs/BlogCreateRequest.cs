using Microsoft.AspNetCore.Http;

namespace WebApi.DTOs.Blogs
{
    public class BlogCreateRequest
    {
        public int Id { get; set; }
        public int MyProperty { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string UserId { get; set; }
        public IFormFile files { get; set; }
    }
}
