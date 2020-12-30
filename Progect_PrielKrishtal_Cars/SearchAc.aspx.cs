using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.OleDb;
using System.Web.UI.WebControls;

public partial class SearchAc : System.Web.UI.Page
{
    public string userMsg = "", link = "";
    public string userData;
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
        string tableName = "users";

        if (IsPostBack)
        {
            string Uname = Request.Form["UserName"];
            Response.Write("Uname= " + Uname);

            string selectQuery = "SELECT * FROM " + tableName + " WHERE UName='" + Uname + "'";  // שאילתא לאיחזור הטבלה
            Response.Write("selectQuery= " + selectQuery);

            DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);

            int length = table.Rows.Count;
            Response.Write("length= " + length);

            if (length > 0)
            {
                userData += "<table style='border:15px double cyan;color:white';width='500' ;>";
                userData += "<tr>";
                userData += "<th> שם משתמש </th>";
                userData += "<th> סיסמה </th>";
                userData += "<th> שם פרטי </th>";
                userData += "<th> שם משפחה </th>";
                userData += "<th> כתובת </th>";
                userData += "<th> מייל </th>";
                userData += "<th> מספר הרכבים שהיו בבעלותם </th>";
                userData += "<th> שנת לידה </th>";
                userData += "</tr>";

                for (int i = 0; i < length; i++)
                {
                    userData += "<tr>";
                    userData += "<td>" + table.Rows[i]["UName"] + "</td>";
                    userData += "<td>" + table.Rows[i]["UserPass"] + "</td>";
                    userData += "<td>" + table.Rows[i]["Fname"] + "</td>";
                    userData += "<td>" + table.Rows[i]["Lname"] + "</td>";
                    userData += "<td>" + table.Rows[i]["Address"] + "</td>";
                    userData += "<td>" + table.Rows[i]["Mail"] + "</td>";
                    userData += "<td>" + table.Rows[i]["OwCars"] + "</td>";
                    userData += "<td>" + table.Rows[i]["BYear"] + "</td>";
                    userData += "</tr>";
                }
                userData += "</table>";

            }
        }
    }
}