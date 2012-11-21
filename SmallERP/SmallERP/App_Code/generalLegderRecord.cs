using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmallERP.App_Code
{
    public class generalLegderRecord
    {
        protected string acctID { get; set; }
        protected string acctName { get; set; }
        protected decimal debit { get; set; }
        protected decimal credit { get; set; }
        protected string detailDescription { get; set; }
        protected DateTime entryDate { get; set; }

        public Boolean saveEntry()
        {


            return true;
        }
    }
}