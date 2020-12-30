<%@ Page Language="C#" AutoEventWireup="true" CodeFile="photosGallery.aspx.cs" Inherits="pages_photosGallery" %>

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
    
  <li><a href="../MainPage.aspx">בית</a></li>
  <li><a href="Odot.aspx">אודות</a></li>
  <li><a href="CarShowcase.aspx">קולקציית הרכבים</a></li>
    <li><a href="Tips.aspx">מה צריך לדעת בעת קניית רכב</a></li>
        <li><a href="SportCarShowcase.aspx">מכוניות ספורט</a></li>
     <li><a href="photosGallery.aspx">חנות</a></li>
    <li><a href="SignIn.aspx">התחברות</a></li>
    <li><a href="Createaccount.aspx">הרשמה</a></li>
<%--    <li><a href="ManagersPage.aspx">דף מנהל</a></li>--%>
    <li><a href="Callus.aspx">יצירת קשר</a></li>
    <li><a href="MainAdminPage.aspx">סל קניות</a></li>
   <li><a href="Hidon.aspx">חידון</a></li>
</ul>
       <h1 style="color:white"> 
         <a href="<%=link %>">welcome <%=userMsg %></a>
         <!--<a herf="<%= link%>">>welcome <%=userMsg %></a>   -->
        </h1>
      <h2 style="color:white">לחץ על שמך להתנתקות</h2>
    <style>
    </style>
<table>
    <tr><td><h1 style="align-content:center;color:white; width: 200px;font-family:Aharoni" >חנות מוצרים נלווים לרכב: </h1></td></tr>

    <tr>
   
        <td>
            <a href="wheel_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/tire1.jpg" /> </a></td>\\גלגלים
         
        <td>
            <a href="CarCover_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/car_cover.jpg" /> </a>\\כיסוי רכב
          </td>
        
        <td>
            <a href="CarJack_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/car_jack.jpg" /> </a>\\ג'ק לרכב
        </td>

        <td>
            <a href="SmellTree_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/car_smell.jpg" /> </a>\\עץ ריח לרכב
        </td>

        <td>
            <a href="AirSpray_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/air_spray.jpg" /></a>\\ספרי אוויר
        </td>

    </tr>
   
    
      <tr>
    <td>
        <a href="YellowVest_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/efod.jpg" /></a>\\אפוד זוהר
        </td>

          <td>
              <a href="PhoneHolder_shop.aspx"><img style="width:280px;border-radius:8px" src="../pictures/ShopProd/car_phoneholder.jpg" /></a>\\מחזיק פלאפון
          </td>

          <td>
              <a href="RoadCam_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/car_roadcamera.jpg" /></a>\\מצלמת דרך
          </td>
         
          <td>
              <a href="BabySeat_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/car_bosster.jpg" /></a>\\מושב לתינוקות
          </td>

          <td>
              <a href="Carpet_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/car_carpet.jpg" /></a>\\שטיח לרכב
          </td>
    </tr>

      <tr>
    <td>
        <a href="SteeringWheelCover_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/steering_wheel.jpg" /></a>\\כיסוי להגה
    </td>

    <td>
        <a href="PanoramicMiror_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/panormaic_miror.jpg" /></a>//מראה פנורמית
    </td>

          <td>
              <a href="CarJumpStarter_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/car_jumpstarter.jpg" /></a>\\מתניע רכב
          </td>

          <td>
              <a href="ReverseCam_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/reverse_camera.jpg" /></a>\\מצלמת רוורס
          </td>

          <td>
              <a href="PhoneCharger_shop.aspx"><img style="width:300px;border-radius:8px" src="../pictures/ShopProd/phone_charger.jpg" /></a>\\מטען לפלאפון
          </td>

     </tr>
    
</table>

</body>
</html>

