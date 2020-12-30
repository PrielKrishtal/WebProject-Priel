using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagersPage : System.Web.UI.Page
{
    public string userMsg = "", link = "";
    public int counter;
    public string usersList;
    public string usersCount;
    DataTable dt = new DataTable();
    public string name = "";
    public string password = "";

    public int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["count"] == null)
        {
            Application["count"] = 0;
        }
        if (Application["count"] != null)
            count = (int)Application["count"];
        
        link = "Createaccount.aspx";
        if (Session["user"] != null)
        {
            name += Session["user"];
            userMsg += Session["user"]; // משנה את ההודעה ומציין מי מחובר 
            link = "LogOut.aspx";
            counter++;
        }
        else
        {
            userMsg += "visitor";
        }

        Response.Write(userMsg);


        string fileName = "Db_CarsProj_priel.mdb";
        string tableName = "users";
        string selectQuery = "SELECT * FROM " + tableName;
        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
        int length = table.Rows.Count;
        if (length > 0)
        {
            usersList += "<table style='border:15px double cyan;color:white';width='500' ;>";
            usersList += "<tr>";
            usersList += "<th> שם משתמש </th>";
            usersList += "<th> סיסמה </th>";
            usersList += "<th> שם פרטי </th>";
            usersList += "<th> שם משפחה </th>";
            usersList += "<th> כתובת </th>";
            usersList += "<th> מייל </th>";
            usersList += "<th> מספר הרכבים שהיו בבעלותם </th>";
            usersList += "<th> שנת לידה </th>";
            usersList += "</tr>";
            for (int i = 0; i < length; i++)
            {
                usersList += "<tr>";
                usersList += "<td>" + table.Rows[i]["UName"] + "</td>";
                usersList += "<td>" + table.Rows[i]["UserPass"] + "</td>";
                usersList += "<td>" + table.Rows[i]["Fname"] + "</td>";
                usersList += "<td>" + table.Rows[i]["Lname"] + "</td>";
                usersList += "<td>" + table.Rows[i]["Address"] + "</td>";
                usersList += "<td>" + table.Rows[i]["Mail"] + "</td>";
                usersList += "<td>" + table.Rows[i]["OwCars"] + "</td>";
                usersList += "<td>" + table.Rows[i]["BYear"] + "</td>";
                usersList += "</tr>";

            }
            usersList += "</table>";
            usersCount = length.ToString();

        }

       
      
    }
}