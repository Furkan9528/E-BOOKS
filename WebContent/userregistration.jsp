<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>

<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<br>
<br>

        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form name="form" onsubmit="return checkpassword()" method="POST" action="<%= request.getContextPath()%>/UserRegistration">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <!--<label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label> -->
                            </div>
                           
                            <div class="form-group form-button" >
                                <input type="submit" name="signup" id="signup" onsubmit="checkpassword()" class="form-submit" value=Register onclick="checkpassword()"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <!-- <a href="#" class="signup-image-link">I am already member</a> -->
                    </div>
                </div>
            </div>
        </section>
</body>
<script>

function checkpassword(){
	var a=document.getElementById("pass").value;
	var b=document.getElementById("re_pass").value;
	var c=document.getElementById("email").value;
	var d=document.getElementById("name").value;
	
	
	if(a=="" || b=="" || c=="" || d==""){
		alert("Please Fill in Missing Places");
		return false;
	}
	
	if(a==""){
		document.getElementById("messages").innerHTML="Please Fill Password";
		return false;
	}	
	
	if(a!=b){
		alert("Passwords are not Similiar");
		return false;
	}
		
	
}

</script>


</html>




