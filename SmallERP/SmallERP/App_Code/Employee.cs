using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmallERP.App_Code
{
    public class Employee : Person
    {
        protected decimal salary { get; set; }
        protected decimal hours { get; set; }
        protected string jobTitle { get; set; }
        protected string acctPermission { get; set; }
        protected string pwd { get; set; }
        protected DateTime startDate { get; set; }
        protected DateTime endDate { get; set; }
    }
}