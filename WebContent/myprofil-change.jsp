<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page errorPage="404error.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name= request.getParameter("name");
	String email=request.getParameter("email");
	String address=request.getParameter("address");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	String poste=request.getParameter("poste");
	String image=request.getParameter("image");

	
	String Driver = "com.mysql.jdbc.Driver";
	Class.forName(Driver).getConstructors(); 
	String url = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";

	Connection con=null;
	
	try{
		con= DriverManager.getConnection(url);
		PreparedStatement ps=con.prepareStatement("UPDATE registerpersonel SET registerpersonelname= ? , registerpersonelemail= ? , registerpersoneladdress=?, registerpersonelcity=? , registerpersoneldepartement=? , registerpersonelposte=?, registerpersonelimage=? WHERE registerpersonelname= '"+session.getAttribute("name") +"'");		
		
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, address);
		ps.setString(4, city);
		ps.setString(5, state);
		ps.setString(6, poste);
		ps.setString(7, image);
		ps.executeUpdate();
		response.sendRedirect("myprofil.jsp");

	}catch(Exception e){
		e.printStackTrace();
	}

%>


</body>
</html>