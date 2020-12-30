<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarShowcase.aspx.cs" Inherits="CarShowcase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CarShowCase</title>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
            font-size: large;
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
                direction: rtl;
            }

                li a:hover:not(.active) {
                    background-color: #000000;
                }

        .active {
            background-color: #0099ff;
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
       <%-- <li><a href="ManagersPage.aspx">דף מנהל</a></li>--%>
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
    <center><h1 style="font-size:30px;color:white">CarShowCase</h1></center>

            <center><h1 style="font-size:20px;color:gold">הכנס שם של רכב</h1></center>
    
    <p>
  <script>
  (function() {
    var cx = '000652490346868940535:uuoqcs6xrxa';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script>
<gcse:search></gcse:search>
    </p>
    <form id="form1" runat="server">
        <div>
            

        </div>

        


    </form>


</body>
</html>
