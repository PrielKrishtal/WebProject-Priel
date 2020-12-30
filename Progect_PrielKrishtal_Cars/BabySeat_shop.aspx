<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BabySeat_shop.aspx.cs" Inherits="pages_shop_pages_BabySeat_shop" %>

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

    <style>
.logo {
  margin-bottom: 40px;
  letter-spacing: 0.7em;
}

.productgalleries{
	margin-top: 20px;
	
}

.slider{
  display:inline-block;
  overflow:hidden;
}

a:before {
 content:attr(rel);
 position:absolute;
 top:20px;
}

a{
    position:relative;
    top:0;
     -webkit-transition-duration: .25s;
}

a:hover {
   top:-20px; 
   -webkit-transition-duration: .25s;  
}
    </style>
</head>
<body style="background-color:black"   dir="rtl">
<ul>
    
   <li><a href="../../MainPage.aspx">בית</a></li>
  <li><a href="../Odot.aspx">אודות</a></li>
  <li><a href="../CarShowcase.aspx">קולקציית הרכבים</a></li>
    <li><a href="../Tips.aspx">מה צריך לדעת בעת קניית רכב</a></li>
        <li><a href="../SportCarShowcase.aspx">מכוניות ספורט</a></li>
     <li><a href="../photosGallery.aspx">חנות</a></li>
    <li><a href="../SignIn.aspx">התחברות</a></li>
    <li><a href="../Createaccount.aspx">הרשמה</a></li>
    <li><a href="../Callus.aspx">יצירת קשר</a></li>
     <li><a href="../MainAdminPage.aspx">סל קניות</a></li>
      <li><a href="Hidon.aspx">חידון</a></li>
    
 
</ul>
     <h1 style="color:white"> 
         <a href="<%=link %>">welcome <%=userMsg %></a>
         <!--<a herf="<%= link%>">>welcome <%=userMsg %></a>   -->
        </h1>
      <h2 style="color:white">לחץ על שמך להתנתקות</h2>
    <br />
    <h1 style="align-content:center;color:white;text-decoration-line:underline;font-family:Aharoni" >כסא בוסטר לתינוק</h1>
    <br/>
    <img style="width:400px" src="../../pictures/ShopProd/car_bosster.jpg" />
     <h2 style="text-align:right;color:white">מחיר: ש"ח 140 </h2>
    <br />
     <input type="number" name="quantity" style="width:100px;height:50px;font-size:50px;background-color:lightblue;font-family:Aharoni" min="0" max="25" step="1" value="0"/>
     <br/>
    <br />
    <input value="הוסף לסל " style="width:150px;height:90px;font-size:34px;background-color:lightblue;font-family:Aharoni" type="submit"/>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>