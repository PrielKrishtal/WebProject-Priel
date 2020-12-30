<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SportCarShowcase.aspx.cs" Inherits="SportCarShowcase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:black"   dir="rtl">
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
   body{
  margin: 0;
}
.main{
  height: 145vh;
  background: #e1e1e1;
  padding: 3%;
}
.container{
  display: grid;
  height: 100%;
  background: #c4c4c4;
  grid-template-rows: repeat(6, 1fr);

  grid-gap: 5px;
}
.large{
  grid-row: 2/span 4;
  grid-column: span 5;
  border: 1px solid rgba(0,0,0,0.4);
  box-shadow: 2px 2px 12px 0px rgba(0,0,0,.35);
  margin: 5%;
  border-radius: 12px;
}
.small-div{
  grid-row: span 3;
  grid-column: span 1;
  border: 1px solid rgba(0,0,0,0.4);
  background: red;
  border-radius: 6px;
  margin: 10%;
  box-shadow: 0px 1px 12px 0 rgba(0,0,0,0.4);
}
.small-img1, .large{
  background: url('http://1.bp.blogspot.com/-aOxRf9wbKI4/UKm8t2m9FII/AAAAAAAAFpk/JnHZI62xLyA/s1600/red_ferrari_vehicles_red_cars_ferrari_f40_1280x960_wallpaper_Wallpaper_1920x1440_www.wall321.com.jpg');
  background-size: cover;
  background-position: center;
}
.small-img2{
  background: url('https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2F4.bp.blogspot.com%2F-IEXa8DIDkf8%2FURq8SUL5EqI%2FAAAAAAAAAcg%2FyuPEvAGRxbM%2Fs1600%2Fbmw-sport-car-download.jpg&f=1');
  background-size: cover;
  background-position: center;
}
.small-img3{
  background: url('https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2F3.bp.blogspot.com%2F-cga0nnAdBbM%2FTw7O2JLfEeI%2FAAAAAAAAAKk%2FNmtHBQwS9Hs%2Fs1600%2Fcool%2B_car_picture%2B4.jpg&f=1');
  background-size: cover;
  background-position: center;
}
.small-img4{
  background: url('https://www.3d-wallpapers.info/wp-content/uploads/3d-purple-lamborghini-car-wallpapers-hd.jpg');
  background-size: cover;
  background-position: center;
}
.small-img5{
  background: url('https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.car-brand-names.com%2Fwp-content%2Fuploads%2F2016%2F04%2FLamborghini-Veneno.jpg&f=1');
  background-size: cover;
  background-position: center;
}
.small-img1:hover{
  box-shadow: 0px 0px 0 3px rgb(30,144,255)
}
.small-img2:hover{
  box-shadow: 0px 0px 0 3px rgb(30,144,255)
}
.small-img3:hover{
  box-shadow: 0px 0px 0 3px rgb(30,144,255)
}
.small-img4:hover{
  box-shadow: 0px 0px 0 3px rgb(30,144,255)
}
.small-img5:hover{
  box-shadow: 0px 0px 0 3px rgb(30,144,255)
}
.small-img6:hover{
  box-shadow: 0px 0px 0 3px rgb(30,144,255)
}
.small-img2:hover~.large{  
  background: url('https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2F4.bp.blogspot.com%2F-IEXa8DIDkf8%2FURq8SUL5EqI%2FAAAAAAAAAcg%2FyuPEvAGRxbM%2Fs1600%2Fbmw-sport-car-download.jpg&f=1');
  background-size: cover;
  background-position: center;
}
.small-img3:hover~.large{
  background: url('https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2F3.bp.blogspot.com%2F-cga0nnAdBbM%2FTw7O2JLfEeI%2FAAAAAAAAAKk%2FNmtHBQwS9Hs%2Fs1600%2Fcool%2B_car_picture%2B4.jpg&f=1');
  background-size: cover;
  background-position: center;
}
.small-img4:hover~.large{
  background: url('https://www.3d-wallpapers.info/wp-content/uploads/3d-purple-lamborghini-car-wallpapers-hd.jpg');
  background-size: cover;
  background-position: center;
}
.small-img5:hover~.large{
  background: url('https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.car-brand-names.com%2Fwp-content%2Fuploads%2F2016%2F04%2FLamborghini-Veneno.jpg&f=1');
  background-size: cover;
  background-position: center;  
}









   </style>



<ul>
    
  <li><a href="../MainPage.aspx">בית</a></li>
  <li><a href="Odot.aspx">אודות</a></li>
  <li><a href="CarShowcase.aspx">קולקציית הרכבים</a></li>
    <li><a href="Tips.aspx">מה צריך לדעת בעת קניית רכב</a></li>
        <li><a href="SportCarShowcase.aspx">מכוניות ספורט</a></li>
     <li><a href="photosGallery.aspx">חנות</a></li>
    <li><a href="SignIn.aspx">התחברות</a></li>
    <li><a href="Createaccount.aspx">הרשמה</a></li>
 <%--   <li><a href="ManagersPage.aspx">דף מנהל</a></li>--%>
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

        <div>
       <div class="main">
  <div class="container">
    <div class="small-div small-img1"></div>
    <div class="small-div small-img2"></div>
    <div class="small-div small-img3"></div>
    <div class="small-div small-img4"></div>
    <div class="small-div small-img5"></div>
    <div class="large"></div>
  </div>
</div>

        </div>
    </form>

</body>
</html>
