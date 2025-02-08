using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using OnlineBankingApp.Models;
using Microsoft.AspNetCore.DataProtection;

namespace OnlineBankingApp.Pages.Customers
{
    public class IndexModel : PageModel
    {
        private readonly OnlineBankingApp.Data.OnlineBankingAppContext _context;
        private readonly IDataProtector _protector;


        public IndexModel(OnlineBankingApp.Data.OnlineBankingAppContext context, IDataProtectionProvider dataProtectionProvider)
        {
            _context = context;
            //  Personally identifiable information (PII)
            _protector = dataProtectionProvider.CreateProtector("OnlineBankingApp.Pages.Customers");
        }

        public IList<Customer> Customer { get;set; }

        public async Task OnGetAsync()
        {
            foreach (var cust in _context.Customer)
            {
                cust.EncCustomerID = _protector.Protect(cust.ID.ToString());
            }
            Customer = await _context.Customer.ToListAsync();
        }

        
    }
}
