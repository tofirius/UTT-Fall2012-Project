using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmallERP
{
    public partial class template : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTitle.Text = Session["pageTitle"].ToString();
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Session["pageTitle"] = "Home";
        }

        protected void btnAccounting_Click(object sender, EventArgs e)
        {
            Session["pageTitle"] = "Accounting";
        }

        protected void btnPayroll_Click(object sender, EventArgs e)
        {
            Session["pageTitle"] = "Payroll";
        }

        protected void btnEmployees_Click(object sender, EventArgs e)
        {
            Session["pageTitle"] = "Employees";
        }

        protected void btnOrders_Click(object sender, EventArgs e)
        {
            Session["pageTitle"] = "Orders";
        }

        protected void btnInventory_Click(object sender, EventArgs e)
        {
            Session["pageTitle"] = "Inventory";
        }

        protected void btnCustomers_Click(object sender, EventArgs e)
        {
            Session["pageTitle"] = "Customers";
        }
    }
}