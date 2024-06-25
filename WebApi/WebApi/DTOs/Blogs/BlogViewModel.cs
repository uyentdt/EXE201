﻿using System;

namespace WebApi.DTOs.Blogs
{
    public class BlogViewModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public string UserName { get; set; }
        public DateTime? CreatedAt { get; set; }
    }
}
