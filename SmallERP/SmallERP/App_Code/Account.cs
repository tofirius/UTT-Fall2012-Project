using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmallERP.App_Code
{
    public class Account
    {
        protected string acctID { get; set; }
        protected string acctName { get; set; }
        protected string acctDesc { get; set; }
        protected decimal acctBalance { get; set; }

        public decimal addToBalance(decimal amount)
        {
           return acctBalance += amount;
        }

        public decimal subtractFromBalance(decimal amount)
        {
            return acctBalance -= amount;
        }

    }
}