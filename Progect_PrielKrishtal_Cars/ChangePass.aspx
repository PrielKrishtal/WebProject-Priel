<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="ChangePass" %>

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
    font-family:Aharoni
    
    
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


.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

li a:hover:not(.active) {
    background-color:#000000;
}

.active {
    background-color: #0099ff;
}

     
</style> 
    </head >
<body style="background-color:black;direction:rtl">

<ul>
   
  <li><a  class="active"  href="MainPage.aspx">בית</a></li>
  <li><a href="Odot.aspx">אודות</a></li>
  <li><a href="CarShowcase.aspx">קולקציית הרכבים</a></li>
    <li><a href="Tips.aspx">מה צריך לדעת בעת קניית רכב</a></li>
    <li><a href="SportCarShowcase.aspx">מכוניות ספורט</a></li>
     <li><a href="photosGallery.aspx">חנות</a></li>
    <li><a href="SignIn.aspx">התחברות</a></li>
    <li><a href="Createaccount.aspx">הרשמה</a></li>
  <%--  <li><a href="ManagersPage.aspx">דף מנהל</a></li>--%>
    <li><a href="Callus.aspx">יצירת קשר</a></li>
     <li><a href="MainAdminPage.aspx">סל קניות</a></li>
   <li><a href="Hidon.aspx">חידון</a></li>
</ul>
     <h1 style="color:white"> 
         <a href="<%=link %>">welcome <%=userMsg %></a>
         <!--<a herf="<%= link%>">>welcome <%=userMsg %></a>   -->
        </h1> 
    
      <h2 style="color:white">לחץ על שמך להתנתקות</h2>




    <br />
    <br />
    <form runat="server" method="post">

    <h1 style="color:white">שינוי סיסמא:</h1>
        &nbsp;<h3 style="color:white;"">שם משתמש:<input type="text"  id="User" name="User" /></h3>
       <h3 style="color:white;""> סיסמא ישנה<input type="password" style="font-family:Aharoni"  id="oPass" name="oPass"/></h3>
        <h3 style="color:white;"">סיסמא חדשה<input type="password" style="font-family:Aharoni"  id="nPass" name="nPass"/></h3>
   
        
   <input type="submit" value="החלף" style="width:150px;height:90px;font-size:40px;background-color:#2948ff;font-family:Aharoni;text-decoration-color:white"  /><input type="reset" value="נקה" style="width:150px;height:90px;font-size:40px;background-color:#2948ff;font-family:Aharoni;text-decoration-color:white"  /><img style="align-items:center; width: 622px; height: 435px; margin-right: 69px; margin-top: 0px; margin-bottom: 0px;" src="pictures/password1.png" /><br />

        <br />
      
        
   &nbsp;
        <br />
 </form>

</body>
</html>
