using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Callus : System.Web.UI.Page
{
    public string userMsg = "",link="";
    public string messege;

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

        string messege = Request.Form["subject"];
        string writer = Request.Form["name"];
        string fileName = "Db_CarsProj_priel.mdb";
        string tableName = "contact";
        string sqlS = "";
        string selectQuery = "SELECT * FROM " + tableName;

        sqlS = "INSERT INTO contact(wName,Messege) VALUES ( '" +writer + "','" + messege + "')";

            MyAdoHelper.DoQuery(fileName, sqlS);

           



        
    }
}
