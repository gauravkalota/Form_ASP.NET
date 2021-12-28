using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_Form_ASP
{
    public partial class DASHBOARD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]!= null)
            {
                Response.Write("Welcome to My Site Mr/Ms" +" "+ Session["user"].ToString());
            }
            else
            {
                Response.Redirect("LOGIN.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("LOGIN.aspx");
            }
            else
            {

            }
        }
    }
}