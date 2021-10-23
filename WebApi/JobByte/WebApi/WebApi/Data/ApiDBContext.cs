using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace WebApi.Data
{
    public class ApiDBContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var conString = "Server=tcp:techfestpyramid.database.windows.net,1433;Initial Catalog=JobByteDB;Persist Security Info=False;User ID=pyramidadmin;Password=Pyramid@5050;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            optionsBuilder.UseSqlServer(conString);
        }
        //public DbSet<Demo> Demo { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //modelBuilder.Entity<Demo>().HasNoKey();
        }
    }
}


