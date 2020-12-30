<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hidon.aspx.cs" Inherits="Hidon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
      <script type="text/javascript">

          function Check()
          {
              var Tpoints = 0;
              if (Quest1() == true)
              {
                  Tpoints = Tpoints + 10;
              }
               if (Quest1() == true)
              {
                  Tpoints = Tpoints + 10;
              }
               if (Quest2() == true)
              {
                  Tpoints = Tpoints + 10;
              }
               if (Quest3() == true)
              {
                  Tpoints = Tpoints + 10;
              }
               if (Quest4() == true)
              {
                  Tpoints = Tpoints + 10;
              }
               if (Quest5() == true)
              {
                  Tpoints = Tpoints + 10;
              }
               if (Quest6() == true)
              {
                  Tpoints = Tpoints + 10;
              }
               if (Quest7() == true)
              {
                  Tpoints = Tpoints + 10;
              }
               if (Quest8() == true)
              {
                  Tpoints = Tpoints + 10;
              }
               if (Quest9() == true)
              {
                  Tpoints = Tpoints + 10;
              }
               if (Quest10() == true)
              {
                  Tpoints = Tpoints + 10;
              }
            

               document.getElementById("score").value = " קיבלת "+Tpoints+"   נקודות ";
                document.getElementById("score").style.display = "inline";
          }

          function Quest1()
          {
              var flag = false;
              if (document.getElementById("Q1_1").checked == true)
              {
                  flag = true;
              }
              return flag;
          }


           function Quest2()
          {
              var flag = false;
              if (document.getElementById("Q2_1").checked == true)
              {
                  flag = true;
              }
              return flag;
          }

           function Quest3()
          {
               var flag = false;
               if (document.getElementById("Q3_4").checked == true)
              {
                  flag = true;
              }
              return flag;
          }

           function Quest4()
          {
              var flag = false;
              if (document.getElementById("Q4_2").checked == true)
              {
                  flag = true;
              }
              return flag;
          }

           function Quest5()
          {
              var flag = false;
              if (document.getElementById("Q5_1").checked == true)
              {
                  flag = true;
              }
              return flag;
          }

           function Quest6()
          {
              var flag = false;
              if (document.getElementById("Q6_2").checked == true)
              {
                  flag = true;
              }
              return flag;
          }

           function Quest7()
          {
              var flag = false;
              if (document.getElementById("Q7_1").checked == true)
              {
                  flag = true;
              }
              return flag;
          }

           function Quest8()
          {
              var flag = false;
              if (document.getElementById("Q8_2").checked == true)
              {
                  flag = true;
              }
              return flag;
          }

           function Quest9()
          {
              var flag = false;
              if (document.getElementById("Q9_1").checked == true)
              {
                  flag = true;
              }
              return flag;
          }

           function Quest10()
          {
              var flag = false;
              if (document.getElementById("Q10_3").checked == true)
              {
                  flag = true;
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
  
<body style="background-color:black"   dir="rtl" >
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

    <form id="form1" runat="server">
        <h1 style="color:white">חידון רכבים</h1>
        <table>
            <tr>
                <td><img style="width:450px" src="pictures/hidon/1.jpg" /></td>
                <td style="color:white"><input type="radio" name="quest1" id="Q1_1" value="פיג'ו 3008" />פיג'ו 3008</td>
                <td style="color:white"><input type="radio" name="quest1" id="Q1_2" /> סקודה אוקטביה</td>
                 <td style="color:white"><input type="radio" name="quest1" id="Q1_3"/> סיטרואן קקטוס</td>
                <td style="color:white"><input type="radio" name="quest1" id="Q1_4"/> אינפיניט  Q50</td>
           
            </tr>

            
                <tr>
                <td><img style="width:450px" src="pictures/hidon/2.jpg" /></td>
                <td style="color:white"><input type="radio" name="quest2" id="Q2_1"  /> רנו קליאו</td>
                <td style="color:white"><input type="radio" name="quest2" id=" Q2_2" /> הונדה ג'אז</td>
                 <td style="color:white"><input type="radio" name="quest2" id="Q2_3" "/> דאצ'יה דאסטר</td>
                <td style="color:white"><input type="radio" name="quest2" id="Q2_4"/> סוזוקי איגניס</td>
             
            </tr>

             <tr>
                <td><img style="width:450px" src="pictures/hidon/3.jpg" /></td>
                <td style="color:white"><input type="radio" name="quest3" id="Q3_1" /> יגואר  XF </td>
                <td style="color:white"><input type="radio" name="quest3" id="Q3_2" /> אודי  A8 </td>
                 <td style="color:white"><input type="radio" name="quest3" id="Q3_3"/> ב.מ.וו סדרה 5</td>
                <td style="color:white"><input type="radio" name="quest3" id="Q3_4"/>מרצדס S קלאס</td>
                  
            </tr>

             <tr>
                <td><img style="width:450px" src="pictures/hidon/4.jpg" /></td>
                <td style="color:white"><input type="radio" name="quest4" id="Q4_1" />מיצובישי לאנסר</td>
                <td style="color:white"><input type="radio" name="quest4" id="Q4_2" />דאצ'יה סנדרו סטפווי  </td>
                 <td style="color:white"><input type="radio" name="quest4" id="Q4_3"/>ניסאן סנטרה</td>
                <td style="color:white"><input type="radio" name="quest4" id="Q4_4"/>סוזוקי סוויפט</td>
                   
            </tr>


             <tr>
                <td><img style="width:450px" src="pictures/hidon/5.jpg" /></td>
                <td style="color:white"><input type="radio" name="quest5" id="Q5_1" />סיטרואן   C3</td>
                <td style="color:white"><input type="radio" name="quest5" id="Q5_2" />וולוו S90></td>
                 <td style="color:white"><input type="radio" name="quest5" id="Q5_3"/>רנו קפצ'ור</td>
                <td style="color:white"><input type="radio" name="quest5" id="Q5_4"/>ניסאן ג'וק</td>
                  
            </tr>


             <tr>
                <td><img style="width:450px" src="pictures/hidon/6.jpg" /></td>
                <td style="color:white"><input type="radio" name="quest6" id="Q6_1"/>מאזדה 6</td>
                <td style="color:white"><input type="radio" name="quest6" id="Q6_2"/>יונדאי i30</td>
                 <td style="color:white"><input type="radio" name="quest6" id="Q6_3"/>אלפא רומיאו ג'וליה</td>
                <td style="color:white"><input type="radio" name="quest6" id="Q6_4"/>ניסאן Z370</td>
                
            </tr>


             <tr>
                <td><img style="width:450px" src="pictures/hidon/7.jpg" /></td>
                <td style="color:white"><input type="radio" name="quest7" id="Q7_1" />דודג' צ'אלנג'ר</td>
                <td style="color:white"><input type="radio" name="quest7" id="Q7_2" />ב.מ.וו Z4</td>
                 <td style="color:white"><input type="radio" name="quest7" id="Q7_3"/>ב.מ.וו סדרה 4</td>
                <td style="color:white"><input type="radio" name="quest7" id="Q7_4"/>שברולט קמארו</td>
                 
            </tr>


             <tr>
                <td><img style="width:450px" src="pictures/hidon/8.jpg" /></td>
                <td style="color:white"><input type="radio" name="quest8"  id="Q8_1"/>אודי S6</td>
                <td style="color:white"><input type="radio" name="quest8"  id="Q8_2"/>אודי Q5</td>
                 <td style="color:white"><input type="radio" name="quest8" id="Q8_3"/>אודי Q3</td>
                <td style="color:white"><input type="radio" name="quest8" id="Q8_4"/>אודי A4</td>
               
            </tr>


             <tr>
                <td><img style="width:450px" src="pictures/hidon/9.jpg" /></td>
                <td style="color:white"><input type="radio" name="quest9" id="Q9_1" />הונדה סיוויק</td>
                <td style="color:white"><input type="radio" name="quest9" id="Q9_2"/>מאזדה מיאטה</td>
                 <td style="color:white"><input type="radio" name="quest9" id="Q9_3"/>סיאט לאון</td>
                <td style="color:white"><input type="radio" name="quest9" id="Q9_4"/>סובארו BRZ</td>
              
            </tr>

                <tr>
                <td><img style="width:450px" src="pictures/hidon/10.jpg" /></td>
                <td style="color:white"><input type="radio" name="quest10" id="Q10_1"/>פרארי 430</td>
                <td style="color:white"><input type="radio" name="quest10" id="Q10_2" />יונדאי אטוס</td>
                 <td style="color:white"><input type="radio" name="quest10" id="Q10_3"/>פורשה 911</td>
                <td style="color:white"><input type="radio" name="quest10" id="Q10_4"/>פולקסווגן חיפושית</td>
                
            </tr>
            
               
           <%--<tr> <td> <input type="text"  id="score" name="score"  style="display:none;background-color:black;color:red" disabled="disabled" /></td></tr>--%>
     

             <tr> <td><p id="Correct_Answer"></p>
                 <input type="button" id="Button1" name="Button1" value="בדוק" onclick="Check()" style="width:150px;height:90px;font-size:40px;background-color:#2948ff;font-family:Aharoni;text-decoration-color:white"/></td>
              
                 <td> <input type="text"  id="score" name="score"  style="display:none;background-color:black;color:red;font-size:17px" disabled="disabled" /></td>
                 </tr>
           
        </table>
        <div>
        </div>
    </form>
</body>
</html>
