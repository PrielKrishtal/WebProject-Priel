using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;



public partial class Createaccount : System.Web.UI.Page

{
    public string pic1 = "";
    public string userMsg = "visitor", link = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string RegStatus = "";
        string sqlS = "";


        string fileName = "";
        string tableName = "";

         

        if (IsPostBack)
        {
            string Uname = Request.Form["UName"];
            string Upass = Request.Form["Pass"];
            string FamilyName = Request.Form["FamilyName"];
            string FName = Request.Form["Name"];
            String Email= Request.Form["Mail"];
            string place= Request.Form["Ad"];
            int Hcars = int.Parse(Request.Form["Ocars"]);
            int Birth = int.Parse(Request.Form["Byear"]);


            if ((Uname == "") || (Upass == "") || (FamilyName == "") || (FName == "")) 
            {
                RegStatus = ("לא מולאו נתונים כנדרש ");

            }
            else
            {
                fileName = "Db_CarsProj_priel.mdb";
                tableName = "users";
                string selectQuery = "SELECT * FROM " + tableName;
                selectQuery += " WHERE UName='" + Uname + "'";

                if (MyAdoHelper.IsExist(fileName, selectQuery))
                {
                    RegStatus = ("משתמש כבר קיים ");
                }
                else
                {
                    sqlS = "INSERT INTO users(UName,UserPass,Fname,Lname,Address,Mail,OwCars,BYear) VALUES ('" + Uname + "','" + Upass + "','" + FName + "','" + FamilyName + "', '" + place + "' ,'"+ Email + "','" + Hcars + "','" + Birth + "')";

                    MyAdoHelper.DoQuery(fileName, sqlS);

                    RegStatus = ("ההרשמה בוצעה בהצלחה ");



                }
            }
            Response.Write("<center><h1>");
            Response.Write(Uname+RegStatus);
            //pic1 = "<img  src='pictures/signed_pic.jpg' />";
            Response.Write("</h1></center>");
            Response.End();


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
}




