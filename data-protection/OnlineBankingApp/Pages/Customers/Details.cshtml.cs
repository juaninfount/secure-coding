using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using OnlineBankingApp.Data;
using OnlineBankingApp.Models;
using Microsoft.AspNetCore.DataProtection;

namespace OnlineBankingApp.Pages.Customers
{
    public class DetailsModel : PageModel
    {
        private readonly OnlineBankingApp.Data.OnlineBankingAppContext _context;
        private readonly IDataProtector _dataprotector;


        public DetailsModel(OnlineBankingApp.Data.OnlineBankingAppContext context, IDataProtectionProvider dataProtector)
        {
            _context = context;
            _dataprotector = dataProtector.CreateProtector("OnlineBankingApp.Pages.Customers");
        }

        public Customer Customer { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var decID = Convert.ToInt32(_dataprotector.Unprotect(id.ToString()));

            Customer = await _context.Customer.FirstOrDefaultAsync(m => m.ID == decID);

            if (Customer == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
