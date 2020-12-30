using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteByU : System.Web.UI.Page
{
    public string userMsg = "", link = "";
    public string tableName = "";
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


        string fileName = "Db_CarsProj_priel.mdb";
        tableName = "users";
        if (IsPostBack)
        {
            string Uname = Request.Form["UName"];
            string Upass = Request.Form["Pass"];
            
            
            string sqlD = "DELETE FROM users WHERE UserPass='" + Upass + "'";
            userMsg = MyAdoHelper.RowsAffected(fileName, sqlD).ToString() + "נמחק בהצלחה";
        }
    }
}