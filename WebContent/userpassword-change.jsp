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
	String pass= request.getParameter("pass");
	String re_pass=request.getParameter("re_pass");
	String re_pass2=request.getParameter("re_pass2");

	String Driver = "com.mysql.jdbc.Driver";
	Class.forName(Driver).getConstructors(); 
	String url = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";

	Connection con=null;
	String passnew="";
	int id=0;
	try{
		
		con= DriverManager.getConnection(url);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SELECT * FROM registerpersonel WHERE registerpersonelpassword= '"+pass+"'");		

		while(rs.next()){
			id=rs.getInt(1);
			passnew=rs.getString("registerpersonelpassword");
		}
		System.out.println(id+ " "+passnew);
		if(passnew.equals(pass)){
			Statement st1=con.createStatement();
			int i=st1.executeUpdate("UPDATE registerpersonel SET registerpersonelpassword='"+ re_pass +"' WHERE registerpersonelid='"+id+"'");
			out.println("Password changed successfully");
			st1.close();
			con.close();
			}
			else{
			out.println("Invalid Current Password");
			}
			response.sendRedirect("userpassword.jsp");
		}catch(Exception e){
		e.printStackTrace();
	}

%>


</body>
</html>