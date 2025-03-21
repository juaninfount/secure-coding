using Microsoft.AspNetCore.Identity;
using BC = BCrypt.Net.BCrypt;

using OnlineBankingApp.Models;
using System.Security.Cryptography;

namespace OnlineBankingApp.Identity
{
    public class PasswordHasher : IPasswordHasher<Customer>
    {
        public string HashPassword(Customer customer, string password)
        { 
            /*
            using (var md5 = MD5.Create()) {

                var hashedBytes = md5.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                
                var hashedPassword = BitConverter.ToString(hashedBytes).Replace("-", "").ToLower();
                return hashedPassword;  
            }
            */
            return BC.HashPassword(password);
        }

        public PasswordVerificationResult VerifyHashedPassword(Customer customer,
            string hashedPassword, string password)
        {
            if (BC.Verify(password, hashedPassword))
            return PasswordVerificationResult.Success;
            else
            return PasswordVerificationResult.Failed;

        }
    }

}
