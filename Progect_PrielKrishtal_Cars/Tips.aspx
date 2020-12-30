<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tips.aspx.cs" Inherits="Tips" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


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
    <style>
        div {
    font-family:Impact;
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

     <h1 style="align-content:center;color:white;font-family:Aharoni" >טיפים לפני קניית רכב:</h1>
    <h2 style="align-content:center;color:cyan;font-family:Aharoni" >צרכים:</h2>
   <h2 style="align-content:center;color:white;font-family:Aharoni" >לפני קניית הרכב כל אחד צריך לשאו ל את עצמו מהי מטרת הרכב ומהו גודל הרכב הנדרש משום שככול שיותר אנשים יהיו ברכב כך הרכב יצטרך להיות יותר גדול</h2>
    
    <h2 style="align-content:center;color:cyan;font-family:Aharoni">תקציב:</h2>
    <h2 style="align-content:center;color:white;font-family:Aharoni"> אחרי שהבנתם מהם הצרכים שלכם זה הזמן לבדוק כמה עולה בממוצע מכונית חדשה שבאמת מתאימה לכם.
אם יש לכם מספיק כסף חופשי זמין כדי לרכוש מכונית שכזו אזי מצבכם טוב ואתם יכולים להתקדם לסעיף הבא.
אם לא - יתכן שתגיעו למסקנה שאתם צריכים להתפשר על מכונית קטנה יותר או אפילו לוותר על ריח הניילונים וללכת על מכונית משומשת.</h2>
     
    <h2 style="align-content:center;color:cyan;font-family:Aharoni">אבזור בטיחות:</h2>
     <h2 style="align-content:center;color:white;font-family:Aharoni">חצי וכוללים שלל כריות אוויר ומערכת בקרת יציבות כסטנדרט (חובה בכל מכונית נוסעים שיובאה לארץ ממודל 2010 ואילך), אבל הבדלים בהחלט קיימים ובמקרה של תאונה הם עשויים להיות משמעותיים ביותר. על כן, רוכש נבון יבדוק מבעוד מועד את ציון הבטיחות שהרכב שהוא שוקל לקנות קיבל במבחני הריסוק של יור NCAP או של NHSTA.</h2>
    
    <h2 style="align-content:center;color:cyan;font-family:Aharoni">סקר שוק:</h2>
    <h2 style="align-content:center;color:white;font-family:Aharoni">לפני שאתם יוצאים לשטח כדאי מאוד גם לעשות חיפוש ולאסוף מידע בנוגע למבצעים מיוחדים, ימי מכירות או הטבות למועדני לקוחות שבהחלט עשויים להיות משמעותיים ביותר ולהטות את הכף לטובת דגם זה או אחר.</h2>
    
    <h2 style="align-content:center;color:cyan;font-family:Aharoni">נסיעת מבחן:</h2>
    <h2 style="align-content:center;color:white;font-family:Aharoni">אחרי שהתמקדתם ובחנתם היטב את הרכבים באולם התצוגה זה הזמן לצאת עם הדגם שבחרתם לנסיעת מבחן קצרה.</h2>

    <form id="form1" runat="server">


        <div>
        </div>
    </form>
</body>
</html>

