using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmallERP.App_Code
{
    abstract class Person
    {
        protected string name { get; set; }
        protected string address { get; set; }
        protected string state { get; set; }
        protected string city { get; set; }
        protected string zip { get; set; }
        protected string phone { get; set; }
        protected string email { get; set; }
    }
}