
using System;
using Microsoft.AspNetCore.Authorization;
using OnlineBankingApp.Models;

namespace OnlineBankingApp.Authorization {

	public static class PrincipalPermission {
	
		public static List<Func<AuthorizationHandlerContext, bool >> 
		Criteria =
        [
            CanCreateFundTransfer
		];

		
		public static bool CanCreateFundTransfer(this AuthorizationHandlerContext ctx)
		{	
			return ctx.User.IsInRole(Role.ActiveCustomer.ToString());
		}
	}
}