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
    public partial class reviews : System.Web.UI.Page
    {
        string db = Global.DB;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
 
                string custId = custID.Text;
                string ratings = rating.Text;
                string comment = comments.Text;


                string sql = @"INSERT INTO reviews (customerID, rating, comments)
VALUES ( @customerID, @rating, @comments)";

                SqlConnection con = new SqlConnection(db);
                SqlCommand cmd = new SqlCommand(sql, con);
 
                cmd.Parameters.AddWithValue("@customerID", custId);
                cmd.Parameters.AddWithValue("@rating", ratings);
                cmd.Parameters.AddWithValue("@comments", comment);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                

            }
        }
    }
}