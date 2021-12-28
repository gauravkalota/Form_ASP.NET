using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Login_Form_ASP
{
    public partial class LOGIN : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["MyDatabase"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from signup where username = @user and password = @pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", UserTextBox.Text);
            cmd.Parameters.AddWithValue("@pass", PassTextBox.Text);
            con.Open();
            SqlDataReader dr =  cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["user"] = UserTextBox.Text;
                //Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts","<script>alert('Login Successfully!')</script>");
                Response.Redirect("DASHBOARD.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed!')</script>");

            }
            con.Close();

       
        }
    }
}