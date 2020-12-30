<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchAc.aspx.cs" Inherits="SearchAc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
       
        ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    font-size:large;
    font-family:Aharoni;
    
    
}

li {
    float: right;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    direction:rtl;
   
}

li a:hover:not(.active) {
    background-color:#000000;
}

.active {
    background-color: #0099ff;
}
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body style="background-color:black" dir="rtl">
<ul>
    
<li><a href="../MainPage.aspx">בית</a></li>
  <li><a href="Odot.aspx">אודות</a></li>
  <li><a href="CarShowcase.aspx">קולקציית הרכבים</a></li>
    <li><a href="Tips.aspx">מה צריך לדעת בעת קניית רכב</a></li>
        <li><a href="SportCarShowcase.aspx">מכוניות ספורט</a></li>
     <li><a href="photosGallery.aspx">חנות</a></li>
    <li><a href="SignIn.aspx">התחברות</a></li>
    <li><a href="Createaccount.aspx">הרשמה</a></li>
    <li><a href="ManagersPage.aspx">דף מנהל</a></li>
    <li><a href="Callus.aspx">יצירת קשר</a></li>
     <li><a href="MainAdminPage.aspx">סל קניות</a></li>
   <li><a href="Hidon.aspx">חידון</a></li>
     <li><a style="color:skyblue" href="SearchAc.aspx">דוח משתמשים</a></li>
     <li><a style="color:skyblue" href="Delete.aspx">מחיקת משתמש</a></li>
</ul>
    
      <h1 style="color:white"> 
         <a href="<%=link %>">welcome <%=userMsg %></a>
         <!--<a herf="<%= link%>">>welcome <%=userMsg %></a>   -->
        </h1>
      <h2 style="color:white">לחץ על שמך להתנתקות</h2>

    <form id="form1" runat="server">    
        <div>
            <table dir="rtl">
    <tr> <td style="color:white" class="auto-style1">שם משתמש</td>
    <td class="auto-style1">
    <input id="UserName" name="UserName" value="" />
        <br />
    </td>
    </tr>
    <tr> <td style="color:white">סיסמת משתמש</td>
    <td>
    <input id="UserPass" name="UserPass" value="" />
    </td>
    </tr>
    
    <tr>
     <td> 
         <br />
         <input type="submit" value="הצג" style="width:150px;height:86px; font-size:40px;background-color:#2948ff;font-family:Aharoni;text-decoration-color:white"  /><br />
         <br />
        </td>
    <td><input type="reset" value="נקה" style="width:139px; height:90px;font-size:40px;background-color:#2948ff;font-family:Aharoni;text-decoration-color:white; margin-right: 55px;"  /></td>
    </tr>
    </table>
    <center>
    <h2 style="color:white">הצגת פרטי המנוי</h2>
    <%=userData%>
    
    
    </center>
        </div>
    </form>
</body>
</html>
