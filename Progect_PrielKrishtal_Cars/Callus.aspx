<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Callus.aspx.cs" Inherits="Callus" %>

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
</style>
</head>
   <body style="background-color:black"   dir="rtl">
<ul>
    
  <li><a href="../MainPage.aspx">בית</a></li>
  <li><a href="Odot.aspx">אודות</a></li>
  <li><a href="CarShowcase.aspx">קולקציית הרכבים</a></li>
    <li><a href="Tips.aspx">מה צריך לדעת בעת קניית רכב</a></li>
        <li><a href="SportCarShowcase.aspx">מכוניות ספורט</a></li>
     <li><a href="photosGallery.aspx">חנות</a></li>
    <li><a href="SignIn.aspx">התחברות</a></li>
    <li><a href="Createaccount.aspx">הרשמה</a></li>
   <%-- <li><a href="ManagersPage.aspx">דף מנהל</a></li>--%>
    <li><a href="Callus.aspx">יצירת קשר</a></li>
 <li><a href="MainAdminPage.aspx">סל קניות</a></li>
      <li><a href="Hidon.aspx">חידון</a></li>
</ul>
     <h1 style="color:white"> 
         <a href="<%=link %>">welcome <%=userMsg %></a>
         <!--<a herf="<%= link%>">>welcome <%=userMsg %></a>   -->
     </h1>
  
        
    

    

       
    <form id="form1" runat="server">
        <h1 style="color:white">יצירת קשר</h1>
  <table>
        <tr><td><input type="text" id="name" name="name" placeholder="הכנס את שמך"/></td></tr>
     
         <tr><td><textarea id="subject" name="subject" placeholder="כתוב את דעתך על האתר או אם יש לך דברים לשיפור או שימור ממולץ שתכתוב לנו" style="height:170px;width:400px"></textarea></td>
             
         </tr>

         <tr><td><input type="submit" value="Submit"/></td></tr>

  </table>
        <br />
       
    </form>
</body>
</html>