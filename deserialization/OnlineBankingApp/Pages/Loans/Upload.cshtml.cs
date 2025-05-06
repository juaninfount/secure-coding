using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System;
using System.IO;
using System.Threading.Tasks;

using OnlineBankingApp.Models;
using Microsoft.AspNetCore.Authorization;
using System.Linq;
using System.Security.Claims;

using Newtonsoft.Json;

namespace OnlineBankingApp.Pages.Loans
{
    public class UploadModel : PageModel
    {
        private IWebHostEnvironment _environment;
        private readonly OnlineBankingApp.Data.OnlineBankingAppContext _context;

        public UploadModel(IWebHostEnvironment environment, OnlineBankingApp.Data.OnlineBankingAppContext context)
        {
            _environment = environment;
            _context = context;
        }

        [BindProperty]
        public IFormFile Upload { get; set; }
        
        public async Task OnPostAsync()
        {
            Loan emptyLoan = null;
            var file = Path.Combine(_environment.ContentRootPath, "uploads", Upload.FileName);
            
            using (var fileStream = new FileStream(file, FileMode.Create))
            {
                await Upload.CopyToAsync(fileStream);
                using (var reader = new StreamReader (Upload.OpenReadStream())) {
                    string fileContent = reader.ReadToEnd ();
                    emptyLoan = (Loan) Newtonsoft.Json.JsonConvert.DeserializeObject(fileContent, 
                        new JsonSerializerSettings
                        {
                            TypeNameHandling = TypeNameHandling.None
                        });
                }
            }

            var loggedInUser = HttpContext.User;
            var customerId = loggedInUser.Claims.FirstOrDefault(x => x.Type == ClaimTypes.NameIdentifier).Value;
            emptyLoan.CustomerID = customerId;
            emptyLoan.TransactionDate = DateTime.Now;

            if (await TryUpdateModelAsync<Loan>(
                emptyLoan,
                "loan",  
                l => l.ID, l => l.CustomerID, l => l.Amount, l => l.PeriodInMonths, l => l.TransactionDate, l => l.Note))
            {
                _context.Loan.Add(emptyLoan);
                await _context.SaveChangesAsync();
            }

        }
    }
}