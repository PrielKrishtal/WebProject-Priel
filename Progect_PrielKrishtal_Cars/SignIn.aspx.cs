using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignIn : System.Web.UI.Page
{
    public string userMsg = "visitor", link = "";
    public string name = "";
    public string password = "";
    public string fileName = "";
    public string tableName = "";
    public string st1 = "";
    public string st2 = "";
    public string st3 = "";
    public int counter = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
       

        if (Session["user"] != null)
            userMsg += Session["user"]; // משנה את ההודעה ומציין מי מחובר


        if (IsPostBack)  //the manager's username: nivenk. the password: nk3070
        {
            name = Request.Form["UName"];
            password = Request.Form["Pass"];
            if ((name == "") || (name.Length == 0))
            {
                st1 = "חובה למלא שם משתמש";
            }
            if (password == "")
                st2 = "חובה למלא סיסמה";

            if ((name == "Priel_k12") && (password == "Pass0909"))
            {
                Session["user"] = "Manager";
                Response.Redirect("ManagersPage.aspx");
            }
            else
            {
                fileName = "Db_CarsProj_priel.mdb";
                tableName = "users";
                string selectQuery = "SELECT * FROM " + tableName + " WHERE UName='" + name + "' AND [UserPass]='" + password + "'";
                if (MyAdoHelper.IsExist(fileName, selectQuery))
                {
                    Session["user"] = name;
                    Response.Redirect("MainPage.aspx");
                    if (Application["count"] != null)
                    {
                        Application["count"] = (int)Application["count"] + 1;
                    }
                    else
                    {
                        st3 = "שם המשתמש או הסיסמא אינם נכונים";
                    }

                    link = "Createaccount.aspx";
                    if (Session["user"] != null)
                    {
                        userMsg += Session["user"]; // משנה את ההודעה ומציין מי מחובר 
                        link = "LogOut.aspx";
                        counter++;


                    }
                    else
                        userMsg += "visitor";


                    Response.Write(userMsg);
                }


            }


        }
    }
}
