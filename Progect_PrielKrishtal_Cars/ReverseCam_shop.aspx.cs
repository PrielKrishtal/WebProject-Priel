using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_shop_pages_ReverseCam_shop : System.Web.UI.Page
{
    public string userMsg = "", link = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        link = "Createaccount.aspx";
        if (Session["user"] != null)
        {
            userMsg += Session["user"]; // משנה את ההודעה ומציין מי מחובר 
            link = "LogOut.aspx";

        }
        else
            userMsg += "visitor";



        Response.Write(userMsg);
    }
}