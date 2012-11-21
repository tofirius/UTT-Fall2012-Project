using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace SmallERP.App_Code
{
    public class Global
    {

        public Boolean runQuery(string query)
        {
            
        }

        public string connex(string query)
        {
            string conString = connectionString="Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\SmERP.mdf;Integrated Security=True;User Instance=True";

            //lblConnectionString.Text = conString;

            SqlConnection conn = new SqlConnection(conString);

            try
            {
                conn.Open();
                return "success";
                //lblMessage.Text = "Connection open.";
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            finally
            {
                conn.Close();
            }
        }
    }
}