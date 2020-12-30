<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainAdminPage.aspx.cs" Inherits="MainAdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    <script type="text/javascript">

        function CheckForm() {
            location.replace("transaction.aspx")

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
  <%--  <li><a href="ManagersPage.aspx">דף מנהל</a></li>--%>
    <li><a href="Callus.aspx">יצירת קשר</a></li>
     <li><a href="MainAdminPage.aspx">סל קניות</a></li>
   <li><a href="Hidon.aspx">חידון</a></li>
</ul>
   <h1 style="color:white"> 
         <a href="<%=link %>">welcome <%=userMsg %></a>
         <!--<a herf="<%= link%>">>welcome <%=userMsg %></a>   -->
     </h1>
    <table>
    <tr>
        <td><h1 style="align-content:center;color:white;font-family:Aharoni;text-decoration:underline" >סל קניות:</h1></td>
        <td><img style="width:200px" src="../pictures/shoppingCart.png" /></td>
    </tr>
        
</table>
    <style>
       
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>




<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">
      
        <div class="row">
          <div class="col-50">
          
            
                     
            <div class="col-50">
            <h3>תשלום</h3>
            <label for="fname">כרטיסים מקובלים:</label>
            <div class="icon-container">
                <img style="width:80px" src="pictures/visa.png" />
                <img style="width:80px" src="pictures/mastercard.png" />
                <img style="width:80px"  src="pictures/leumi_card.png" />
                <img style="width:60px" src="pictures/diskont.JPG" />
            </div>
           
             שם על הכרטיס<input type="text" id="cname" name="cardname"/>
           
            מספר כרטיס אשראי<input type="text" id="ccnum" name="cardnumber"/>
           
            חודש התפוגה<input type="text" id="expmonth" name="expmonth" />

            <div class="row">
              <div class="col-50">
                
                שנת התפוגה<input type="text" id="expyear" name="expyear" />
              </div>
              <div class="col-50">
             
                3 ספרות בגב הכרטיס(CVV)<input type="text" id="cvv" name="cvv"/>
              </div>
            </div>
          </div>

            <div class="row">
              <div class="col-50">
             
           
              
              </div>
            </div>
          </div>

        
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"/> כתובת למשלוח זהה לכתובת החיוב 
        </label>
        <input type="button" value="Continue to checkout"  class="btn" id="button1" onclick="CheckForm()"/>
      </form>
    </div>
  </div>
  <div class="col-25">
    <div class="container">
      <h4>סל קניות <span class="price" style="color:black"></span></h4>
      <p><a href="#">Product 1 </a>$15</p>
      <p><a href="#">Product 2 </a>$5</p>
      <p><a href="#">Product 3 </a> $8<</p>
      <p><a href="#">Product 4 </a>$2</p>
      <hr/>
      <p style="color:black">מחיר סופי<b> $30 </b></p>
    </div>
  </div>
</div>

</body>

</html>

