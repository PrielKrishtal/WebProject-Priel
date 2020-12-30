<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

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

</head>
<body style="background-color:black;direction:rtl">
<ul>
    
  <li><a class="active"  href="MainPage.aspx">בית</a></li>
  <li><a href="Odot.aspx">אודות</a></li>
  <li><a  href="CarShowcase.aspx">קולקציית הרכבים</a></li>
    <li><a  href="Tips.aspx">מה צריך לדעת בעת קניית רכב</a></li>
    <li><a href="SportCarShowcase.aspx">מכוניות ספורט</a></li>
     <li><a href="photosGallery.aspx">חנות</a></li>
    <li><a href="SignIn.aspx">התחברות</a></li>
    <li><a href="Createaccount.aspx">הרשמה</a></li>
    <%--<li><a href="ManagersPage.aspx">דף מנהל</a></li>--%>
    <li><a href="Callus.aspx">יצירת קשר</a></li>
     <li><a href="MainAdminPage.aspx">סל קניות</a></li>
     <li><a href="Hidon.aspx">חידון</a></li>

</ul>
     <h1 style="color:white"> 
         <a href="<%=link %>">welcome <%=userMsg %></a>
         <!--<a herf="<%= link%>">>welcome <%=userMsg %></a>   -->
        </h1> 
    
      <h2 style="color:white">לחץ על שמך להתנתקות</h2>


    <form id="form1" runat="server">
       <center><img src="pictures/pic1.PNG" width="1000" /></center>
        
      <center><video src="pictures/output_free.mp4" controls="controls" /></center>
         
            
                     



       <%--  <h1 style="color:white"> 
          <%=count %> אנשים ביקרו באתר
     
        </h1> --%>





         
       
        <div>
        </div>
    </form>
   </body>
</html>

