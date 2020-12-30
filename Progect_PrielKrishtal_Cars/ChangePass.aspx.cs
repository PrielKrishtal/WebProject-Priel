using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePass : System.Web.UI.Page
{
    public string userMsg = "", link = "";
    public string fileName = "Db_CarsProj_priel.mdb";
    public string sqlU = "";
    public string selectQuery = "";
    public string repass;
    public string tableName = "users";
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (IsPostBack)
        {
            string Uname = Request.Form["User"];
            string oPass = Request.Form["oPass"];
            string repass = Request.Form["nPass"];
            link = "Createaccount.aspx";
            if (Session["user"] != null)
            {
                userMsg += Session["user"]; // משנה את ההודעה ומציין מי מחובר 
                link = "LogOut.aspx";
            }
            else
            {
                userMsg += "visitor";
            }
          
            selectQuery = "SELECT * FROM " + tableName + " WHERE UName='"+ Uname + "' AND [UserPass]='" + oPass + "'";


            sqlU = "UPDATE " + tableName + " SET [UserPass]='" + repass + "'WHERE UName = '" + Uname + "' AND[UserPass] = '" + oPass + "'"; 


          

            if (MyAdoHelper.IsExist(fileName, selectQuery)) // אם המשתמש קיים
            {
                MyAdoHelper.DoQuery(fileName, sqlU);
                userMsg = "סיסמא שונתה בהצלחה";
            }
            else
                userMsg = "לא תקין";
        }
 }
    }
    
