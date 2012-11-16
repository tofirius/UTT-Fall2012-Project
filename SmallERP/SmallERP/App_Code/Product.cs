using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmallERP.App_Class
{
    public class Product
    {
        protected string sku { get; set; }
        protected string prodName { get; set; }
        protected string prodDescription { get; set; }
        protected int prodQty { get; set; }
        protected decimal prodPrice { get; set; }


        public void addQty(int qty)
        {
            prodQty += qty;
        }

        public void subtractQty(int qty)
        {
            prodQty -= qty;
        }


    }
}