using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmallERP.App_Code
{
    public class Order
    {
        protected string orderID { get; set; }
        protected string orderDate { get; set; }
        protected string orderItems { get; set; }
        protected decimal subTotal { get; set; }
        protected decimal tax { get; set; }
        protected decimal total { get; set; }
        protected string custID { get; set; }
        protected string custName { get; set; }
        protected string custPhone { get; set; }
        protected string custEmail { get; set; }
        
        //public decimal calcSubTotal()
        //{
        //    return ;
        //}        

        //public decimal calcTax(decimal subTotal())
        //{
        //    return ;
        //}

        //public decimal total(decimal subTotal())
        //{

        //}
    }
}