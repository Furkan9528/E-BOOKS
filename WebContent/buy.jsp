<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page errorPage="404error.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

<body>

<h2>Payment</h2>
<p>You can make the purchase below. Do not forget to enter your card information !!!</p>
<div class="row">
  <div class="col-75">
    <div class="container">
    
     
      <form action="buy.jsp">
      
        <div class="row">
          <div class="col-50">
          <%
		String Driver = "com.mysql.jdbc.Driver";
		Class.forName(Driver).getConstructors(); 
		String url = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";
	
		Connection con=null;
		Statement statement=null;
		ResultSet resultset=null;
		try {
			con= DriverManager.getConnection(url);
			statement= con.createStatement();
			resultset= statement.executeQuery(
				"SELECT * From registerpersonel WHERE registerpersonelname= '" + session.getAttribute("name") +"'");
			
			while(resultset.next()){			
				
		%>
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i>Full Name</label>
            <input type="text" id="name" name="name"  value="<%=resultset.getString("registerpersonelname") %>" placeholder="john@example.com">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" value="<%=resultset.getString("registerpersonelemail") %>" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" value="<%=resultset.getString("registerpersoneladdress") %>" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" value="<%=resultset.getString("registerpersonelcity") %>" placeholder="New York">

            <div class="row">
              <div class="col-50">
                <label for="state">Departement</label>
                <input type="text" id="state" name="state" value="<%=resultset.getString("registerpersoneldepartement") %>" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Post Code</label>
                <input type="text" id="zip" name="poste" value="<%=resultset.getString("registerpersonelposte") %>" placeholder="10001">
              </div>
            </div>
             <%
     
				}
		        resultset.close();
				statement.close();
				con.close();
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
	        %>
          </div>
          
      

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
          
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <input type="submit" value="Continue to checkout" class="btn">
      </form>
      
      
     
    </div>
  </div>
</div>

</body>

<br>
	
</body>
