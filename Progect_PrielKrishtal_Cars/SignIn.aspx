<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

   
    <script type="text/javascript">
        function CheckForm()
        {
            var allCheck = true;

            if (!checkUName()) allCheck = false; // שם משתמש
            if (!checkPass()) allCheck = false; // סיסמה
        
         

            return allCheck;
        }
   

         //בדיקת שם משתמש
        function checkUName()
        {
            var flag = true;
            var n = document.getElementById("UName").value;

            if (n.length == 0)
            {
                document.getElementById("mUName").value = "חובה למלא שם משתמש";
                document.getElementById("mUName").style.display = "inline";
                flag = false;
            }
            return flag;
        }

        //בדיקת סיסמה
        function checkPass()
        {
            var flag = true;
            var n = document.getElementById("Pass").value;

            if (n.length == 0)
            {
                document.getElementById("mPass").value = "חובה למלא סיסמה";
                document.getElementById("mPass").style.display = "inline";
                flag = false;
            }
            return flag;
        }

        

        
        
        </script>

<head runat="server">
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

   <h1 style="align-content:center;color:white;font-family:Aharoni" >התחברות:</h1>


        
  
    <form id="form1" runat="server" method="post" onsubmit="return CheckForm()">
        
   

    <h3 style="color:white;"">שם משתמש:<input type="text"  id="UName" name="UName" /></h3>
    <input type="text"  id="mUName" name="mUName"  style="display:none;background-color:black;color:red" disabled="disabled" />

     
    <h3 style="color:white;"">סיסמא<input type="password" style="font-family:Aharoni"  id="Pass" name="Pass"/></h3>
    <input type="text"  id="mPass" name="mPass"  style="display:none;background-color:black;color:red" disabled="disabled" />
        <br />
       
        &nbsp;<img  src="../pictures/login21.png" /><br />
    <input type="submit" value="התחבר" style="width:150px;height:90px;font-size:40px;background-color:#2948ff;font-family:Aharoni;text-decoration-color:white"  />
    <input type="reset" value="נקה" style="width:150px;height:90px;font-size:40px;background-color:#2948ff;font-family:Aharoni;text-decoration-color:white"  />
        <br />
        <br />
        
    <h2><a style="color:white;width:200px" href="ChangePass.aspx">שכחת את הסיסמא או מעונין לשנות אותה? לחץ כאן</a></h2>
        <br />
   <h2><a style="color:white;width:200px" href="DeleteByU.aspx">מעונין למחוק את המשתמש שלך? לחץ כאן</a></h2>
       
        <br />
         <br />
       

        
    </form>
</body>
</html>
