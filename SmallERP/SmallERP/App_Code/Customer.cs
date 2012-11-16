using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmallERP.App_Code
{
    public class Customer : Person
    {
        protected string creditCard { get; set; }
        protected string pwd { get; set; }
        
    }
}