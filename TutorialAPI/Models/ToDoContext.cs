using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;

namespace TutorialAPI.Models
{
    public class TodoContext : DbContext
    {
        public TodoContext(DbContextOptions<TodoContext> options)
            : base(options)
        {
        }

        public DbSet<ToDoItem> TodoItems { get; set; } = null!;
    }
}