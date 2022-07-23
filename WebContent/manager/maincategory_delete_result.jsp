<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>

<body>
	<!--MENU BAŞI -->
	<f:subview id="maincategory_menu_code">
		<jsp:include page="maincategory_menu_code.jsp" />
	</f:subview>
	<!--MENU SONU -->



	<%
		Connection conSil = null;
		Statement stmtSil = null;
		ResultSet rsSil = null;
		PreparedStatement preparedStatementSil = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").getConstructors();
			String urlDuzenle = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";

			conSil = DriverManager.getConnection(urlDuzenle);
			// out.println("Baglandık.");

			//KAYDI BURADA DÜZENLE
			String sqlSil = "DELETE FROM maincategory " + " WHERE maincategoryid = ? ";

			preparedStatementSil = conSil.prepareStatement(sqlSil);
			preparedStatementSil.setString(1, request.getParameter("maincategoryid"));

			preparedStatementSil.executeUpdate();
	%>
	<h1>BAŞARILI OLARAK SİLİNDİ.</h1>
	<%
		} catch (SQLException e) {
			out.println("SQL Hata: " + e.toString());
	%>
	<h1>SİLME İŞLEMİ BAŞARISIZ !!!</h1>
	<%
		} finally {
			//   conSil.close();
		}
	%>


</body>
</html>