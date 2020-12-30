<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Createaccount.aspx.cs" Inherits="Createaccount" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    
   
 <head>
     <title>יצירת חשבון חדש</title>
    <script type="text/javascript">

        function CheckForm()
        {
            var allCheck = true;
            if (!checkFName()) allCheck = false; // שם פרטי
            if (!checkFamilyName()) allCheck = false; // שם משפחה
            if (!checkUName()) allCheck = false; // שם משתמש
            if (!checkPass()) allCheck = false; // סיסמה
            if (!checkMail()) allCheck = false; //מייל
            if (!checkPnumber()) allCheck = false; //מספר פלאפון
             if (!checkAd()) allCheck = false; //כתובת
             if (!checkOwedCars()) allCheck = false;
         if (!checkByear()) allCheck = false;

            return allCheck;
        }
       // בדיקת שם פרטי
        function checkFName()
        {
            var flag = true;
            var n = document.getElementById("Name").value;

            if (n.length == 0)
            {
                document.getElementById("mName").value = "חובה למלא שם פרטי";
                document.getElementById("mName").style.display = "inline";
                flag = false;
            }


            else if (n.value>0)
            {
                document.getElementById("mName").value = "חובה למלא שם פרטיאין להשתמש בספרות כדי לבטא את שמכם";
                document.getElementById("mName").style.display = "inline";
                flag = false;
            }
            return flag;
        }

         //בדיקת שם משפחה
        function checkFamilyName()
        {
            var flag = true;
            var n = document.getElementById("FamilyName").value;

            if (n.length == 0)
            {
                document.getElementById("mFamilyName").value = "חובה למלא שם משפחה";
                document.getElementById("mFamilyName").style.display = "inline";
                flag = false;
            }
            return flag;
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
        
            else if(n.length < 3)
            {
                document.getElementById("mUName").value = "קצר מידי";
                document.getElementById("mUName").style.display = "inline";
                flag = false;
            }
            else if( 12< n.length)
            {
                document.getElementById("mUName").value = "ארוך מידי";
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
             else if(n.length < 3)
            {
                document.getElementById("mPass").value = "קצר מידי";
                document.getElementById("mPass").style.display = "inline";
                flag = false;
            }
            else if( 12< n.length)
            {
                document.getElementById("mPass").value = "ארוך מידי";
                document.getElementById("mPass").style.display = "inline";
                flag = false;
            }
            return flag;
        }

        //בדיקת מייל
        function checkMail()
        {
            var flag = true;
            var n = document.getElementById("Mail").value;

            if (n.length == 0)
            {
                document.getElementById("mMail").value = "חובה למלא מייל";
                document.getElementById("mMail").style.display = "inline";
                flag = false;
            }
            return flag;
        }

         //בדיקת מספר פלאפון
        function checkPnumber()
        {
            var flag = true;
            var n = document.getElementById("Pnumber").value;

            if (n.length == 0)
            {
                document.getElementById("mPnumber").value = "חובה למלא מספר פלאפון";
                document.getElementById("mPnumber").style.display = "inline";
                flag = false;
            }
            return flag;
        }
        //בדיקת כתובת
        function checkAd()
        {
            var flag = true;
            var n = document.getElementById("Ad").value;

            if (n.length == 0)
            {
                document.getElementById("mAd").value = "חובה למלא כתובת ";
                document.getElementById("mAd").style.display = "inline";
                flag = false;
            }
            return flag;
        }

        
        function checkOwedCars()
        {
            var flag = true;
            var n = document.getElementById("Ocars").value;

            if (n.length == 0)
            {
                document.getElementById("mOcars").value = "חובה לענות על שאלה זאת ";
                document.getElementById("mOcars").style.display = "inline";
                flag = false;
            }
          
            return flag;
        }
        
        function checkByear()
        {
            var flag = true;
            var n = document.getElementById("Byear").value;

            if (n.length == 0)
            {
                document.getElementById("mByear").value = "חובה למלא שנת לידה ";
                document.getElementById("mByear").style.display = "inline";
                flag = false;
            }
            return flag;
        }
</script>

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
        #BYear {
            width: 71px;
        }
    </style>
</head>
<body style="background-color:black" dir="rtl" >

<ul>
    
  <li><a href="../MainPage.aspx">בית</a></li>
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

   <h1 style="color:white">יצירת משתמש</h1>


        
  
    <form id="form1" runat="server" method="post" onsubmit="return CheckForm()">
        
        <div>

  <h1 style="color:white;font-size:30px"> שם <input type="text"  id="Name" name="Name"/ style="font-family:Aharoni;font-size:25px"/></h1>
     <input type="text"  id="mName" name="mName"  style="display:none;background-color:black;color:red" disabled="disabled"    /><h1 style="color:white;font-size:25px"> שם משפחה <input type="text" id="FamilyName" name="FamilyName" style="font-family:Aharoni;font-size:25px" /></h1>
    &nbsp;<br />
    <input type="text"  id="mFamilyName" name="mFamilyName" style="display:none;background-color:black;color:red" disabled="disabled"/>

    <h1 style="color:white;font-size:30px"> שם משתמש<input type="text"  id="UName" name="UName"  style="font-family:Aharoni;font-size:25px"/></h1>

     <br />

    <input type="text"  id="mUName" name="mUName"  style="display:none;background-color:black;color:red" disabled="disabled" />

     <br />
    <h1 style="color:white;font-size:30px"> סיסמה<input type="password"  id="Pass" name="Pass"  style="font-family:Aharoni;font-size:25px"/></h1>
    <input type="text"  id="mPass" name="mPass"  style="display:none;background-color:black;color:red" disabled="disabled" />
    

         
            <br />

   <h1 style="color:white;font-size:30px"> דואר אלקטרוני <input type="text"  id="Mail" name="Mail"  style="font-family:Aharoni; width: 129px;font-size:25px"/></h1>
    <input type="text"  id="mMail" name="mMail"  style="display:none;background-color:black;color:red"  disabled="disabled" />

     <br />
   <h1 style="color:white;font-size:30px">  טלפון <input type="number"  id="Pnumber" name="Pnumber"  style="font-family:Aharoni;font-size:25px"/></h1>
    <input type="text"  id="mPnumber" name="mPnumber"  style="display:none;background-color:black;color:red"  disabled="disabled" />

           <br />
   <h1 style="color:white;font-size:30px"> כמה רכבים היו לך בעבר-כולל היום<input type="number" min="0"  max="15"  id="Ocars" name="Ocars"  style="font-family:Aharoni;font-size:25px"/></h1>
    <input type="text"  id="mOcars" name="mOcars"  style="display:none;background-color:black;color:red" disabled="disabled" />
     <br />
  <h1 style="color:white;font-size:30px">  כתובת<input type="text"  id="Ad" name="Ad" value=""  style="font-family:Aharoni;font-size:25px"/></h1>
    <input type="text"  id="mAd" name="mAd"  style="display:none;background-color:black;color:red"  disabled="disabled" />

      <br />

    <h1 style="color:white;font-size:30px">  שנת לידה<input type="text"  id="Byear" name="Byear" value="" placeholder="שנת לידה"  style="font-family:Aharoni;font-size:25px"/></h1>
    <input type="text"  id="mByear" name="mByear"  style="display:none;background-color:black;color:red"  disabled="disabled" />

           





                        <select style="width: 84px;font-size:15px">          <option selected="selected"  >january</option>        <option>February</option>
        <option >March</option>
          <option>April</option>
          <option >May</option>
          <option>June</option>
          <option>July</option>
          <option>August</option>
          <option>September</option>
          <option>October</option>
          <option >November</option>
          <option>December</option>
             </select>

            <select  name="D2" style="width: 46px;font-size:25px">
                <option value="a" selected="selected" >1</option>
        <option>2</option>
        <option >3</option>
          <option>4</option>
          <option>5</option>
          <option>6</option>
          <option>7</option>
          <option>8</option>
          <option>9</option>
          <option>10</option>
          <option>11</option>
          <option>12</option>
          <option>13</option>
          <option>14</option>
          <option>15</option>
          <option>16</option>
         <option>17</option>
        <option>18</option>
       <option>19</option>
        <option>20</option>
      <option>21</option>
      <option>22</option>
      <option>23</option>
      <option>24</option>
      <option>25</option>
      <option>26</option>
      <option>27</option>
      <option>28</option>
      <option>29</option>
      <option>30</option>
      <option>31</option>
       
            </select><br />
   <h1 style="color:white;font-size:25px">   זכר<input type="radio" value="זכר" id="Man"  name="Gen"  style="font-family:Aharoni"/></h1>
        
    <h1 style="color:white;font-size:25px">   נקבה<input type="radio" value="נקבה" id="Woman" name="Gen"  style="font-family:Aharoni"/></h1>
     <br />
   
    <input type="submit" name="Button1" value="צור" style="width:150px;height:90px;font-size:40px;background-color:#2948ff;font-family:Aharoni;text-decoration-color:white"/>&nbsp;
    <input type="reset" value="נקה" style="width:159px; height:93px; font-size:40px;background-color:#2948ff;font-family:Aharoni;text-decoration-color:white; margin-right: 39px;"/><br />
            
       
           
            <img  style="width:508px; margin-right: 404px; margin-left: 0px; margin-top: 29px;"src="../pictures/register-512.png" /></div>
       

         


 


           
        
    </form>
</body>
</html>

