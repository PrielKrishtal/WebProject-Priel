<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Odot.aspx.cs" Inherits="Odot" %>

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
            <center><p><font size="10" color="gold">מידע אודותינו</font></p></center>
        <center>
        <p ><font size="5" color="white">אז עצם קרלי הוא אתר שנועד לעזור לצרכן למצוא את הרכב המתאים בשבילו מבחינת: מחיר,נראות,גודל,והתאמות נוספות.</font></p>
         <p><font size="5" color="white">אתר זה שימוש רב כגון התבוננות והשוואת דגמי רכבים משנים שונות לבין טיפים לפני קניית רכבים ועוד.</font></p>
         <p><font size="5" color="white">אתר זה נוצר בתור פרויקט ה30 אחוז של הבגרות במדעי המחשב.</font></p>
         <p><font size="5" color="white">לתוך פרויקט זה הושקעו מאמצים רבים ומקווים שתאהבו את האתר </font></p>
        <p><font size="5" color="white">צפייה מהנה!</font></p>
            <p><img src="../pictures/aboutus.png" /></p>
         </center>
        </div>
    </form>
</body>
</html>
