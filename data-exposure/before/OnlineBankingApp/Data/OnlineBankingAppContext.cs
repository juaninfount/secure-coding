using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using OnlineBankingApp.Models;

namespace OnlineBankingApp.Data
{
    public class OnlineBankingAppContext : IdentityDbContext<Customer>
    {
        public OnlineBankingAppContext (
            DbContextOptions<OnlineBankingAppContext> options)
            : base(options)
        {
        }

        public DbSet<OnlineBankingApp.Models.Customer> Customer { get; set; }
        public DbSet<OnlineBankingApp.Models.Account> Account { get; set; }
        public DbSet<OnlineBankingApp.Models.FundTransfer> FundTransfer { get; set; }
        public DbSet<OnlineBankingApp.Models.Backup> Backup { get; set; }
    
    }
}