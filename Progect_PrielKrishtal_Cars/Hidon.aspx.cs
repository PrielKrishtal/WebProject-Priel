using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hidon : System.Web.UI.Page
{
    public string pic = "", userMsg = "", link = "";
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