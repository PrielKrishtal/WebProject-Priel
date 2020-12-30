using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class MainAdminPage : System.Web.UI.Page
{
    public string pic = "",userMsg="", link = "";
    
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

        //string CartisNum = Request.Form["ccnum"];
        //string fileName = "Db_CarsProj_priel.mdb";
        //string tableName = "shop";
        //string sqlS = "";
        //string selectQuery = "SELECT * FROM " + tableName;








        //sqlS = "INSERT INTO shop(CreditCard) VALUES ('" + CartisNum + "')";

        //MyAdoHelper.DoQuery(fileName, sqlS);


        if (Session["user"] == null)
        {

            Response.Redirect("NotSi.aspx");
        }
    }
}

