using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainPage : System.Web.UI.Page
{
    public string userMsg = "",link="";
    public int  count;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["count"] == null)
        {
            Application["count"] = 1;
        }
       else
        {
           Application["count"] = (int)Application["count"] + 1;

            count = (int)Application["count"];
        }
                   
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