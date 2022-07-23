<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page errorPage="404error.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<jsp:include page="header.jsp" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>


 .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

.left1{
width : 35%;
}
.right1{
width: 65%;
}


.alan{
width: 40%;
}


button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}


button:hover, a:hover {
  opacity: 0.7;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
  padding-top : 10px;
  padding-right: 60px;
}


.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

* {
  box-sizing: border-box;
}


input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}


input[type=password] {
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


a {
  color: #2196F3;
}


@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  
}



.button2 {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 10px;
  width: 200px;
  height: 60px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button2 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button2 span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button2:hover span {
  padding-right: 25px;
}

.button2:hover span:after {
  opacity: 1;
  right: 0;
}


</style>
<body>
	<br>
	<br>
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
			<form action="userpassword-change.jsp" method="post" onsubmit="return checkpassword()">
			<div class="row">
				<div class="card left1">
					<h2 style="text-align:center">My Profile</h2>
					  <p><button></button></p>
					  <img src="images/<%=resultset.getString("registerpersonelimage") %>" style="width:100%">
					  <h1><%=resultset.getString("registerpersonelname") %></h1>
					  <p class="title"><%=resultset.getString("registerpersonelname") %></p>
					  <p><%=resultset.getString("registerpersonelemail") %></p>
					  <div style="margin: 24px 0;">
					    <a href="#"><i class="fa fa-dribbble"></i></a> 
					    <a href="#"><i class="fa fa-twitter"></i></a>  
					    <a href="#"><i class="fa fa-linkedin"></i></a>  
					    <a href="#"><i class="fa fa-facebook"></i></a> 
					  </div>
					  <p><button></button></p>
				</div>
			    <div class="right1">
			            <h3>Change My Password</h3>
			            <br>
			            <label for="fname"><i class="fa fa-key"></i>Password</label>
			            <input type="password" id="pass" name="pass" placeholder="Password">
			            <label for="fname"><i class="fa fa-key"></i> New Password</label>
			            <input type="password" id="re_pass" name="re_pass" placeholder="New-password">
			            <label for="fname"><i class="fa fa-key"></i> New Password Confirm</label>
			            <input type="password" id="re_pass2" name="re_pass2" placeholder="Confirms-password">
		             	<br>
			             <button  class="button2" id="button2" onsubmit="checkpassword()"> Save </button>
			
			  </div>	
		   </div>
		  </form>
	     <%
	     
					}
			        resultset.close();
					statement.close();
					con.close();
					
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
		        %>
<br>
<br>

<script>

function checkpassword(){
	var a=document.getElementById("pass").value;
	var b=document.getElementById("re_pass").value;
	var c=document.getElementById("re_pass2").value;
	
	
	
	if(a=="" || b=="" || c==""){
		alert("Please Fill in Missing Places");
		return false;
	}
	
	if(b!=c){
		alert("Passwords are not Similiar");
		return false;
	}
		
	
}

</script>
</body>


 <jsp:include page="footer.jsp" />