using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Driver_list
{
    public partial class AddDriver : System.Web.UI.Page
    {
        string cs = Global.CS;
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
               
                string name = driverName.Text;
                string gender = driverGender.Text;
                string status = driverStatus.Text;
                string address = driverAddress.Text;
                string contact = driverContact.Text;
                string ic = driverIC.Text;

                string sql = @"INSERT INTO driver (driverName, driverGender, driverStatus, driverAddress, driverContact, driverIC)
VALUES ( @driverName, @driverGender, @driverStatus, @driverAddress, @driverContact, @driverIC)";

        
                    
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(sql, con);
               
                cmd.Parameters.AddWithValue("@driverName", name);
                cmd.Parameters.AddWithValue("@driverGender", gender);
                cmd.Parameters.AddWithValue("@driverStatus", status);
                cmd.Parameters.AddWithValue("@driverAddress", address);
                cmd.Parameters.AddWithValue("@driverContact", contact);
                cmd.Parameters.AddWithValue("@driverIC", ic);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("driverList.aspx");

            }
        }

        protected void LinqDataSource1_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {

        }
    }
}
