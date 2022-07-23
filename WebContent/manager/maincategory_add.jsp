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
<title>Kayıt Girişi</title>
</head>


<body>

	<!--MENU BAŞI -->
	<f:subview id="maincategory_menu_code">
		<jsp:include page="maincategory_menu_code.jsp" />
	</f:subview>
	<!--MENU SONU -->



	<!--KAYIT EKLE FORMU BAŞI -->
	<f:subview id="maincategory_add_form_code">
		<jsp:include page="maincategory_add_form_code.jsp" />
	</f:subview>
	<!--KAYIT EKLE FORMU SONU -->


	<%
		Connection conEkle = null;

		PreparedStatement preparedStatementEkle = null;

		try {
			Class.forName("com.mysql.jdbc.Driver").getConstructors();
			String urlEkle = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";

			conEkle = DriverManager.getConnection(urlEkle);
			// out.println("Baglandık.");

			//KAYITLARI SORGULAMA KOMUTLARI
			// SQL query command
			String sqlEkle = "INSERT INTO maincategory " + "(maincategoryname,maincategoryorder, maincategoryimagename)"
					+ "VALUES(? , ?, ?)";
			preparedStatementEkle = conEkle.prepareStatement(sqlEkle);

			preparedStatementEkle.setString(1, request.getParameter("maincategoryname"));
			preparedStatementEkle.setString(2, request.getParameter("maincategoryorder"));
			preparedStatementEkle.setString(3, request.getParameter("maincategoryimagename"));

			preparedStatementEkle.execute();

		} catch (SQLException e) {
			out.println("SQL Hata: " + e.toString());

		} catch (ClassNotFoundException cE) {
			out.println("Sınıfı bulma hatası: " + cE.toString());
		} finally {
			conEkle.close();
		}
	%>

	<!--KAYIT LİSTELEME KODU BAŞI -->
	<f:subview id="maincategory_all_list">
		<jsp:include page="maincategory_all_list.jsp" />
	</f:subview>
	<!--KAYIT LİSTELEME KODU SONU -->


</body>
</html>
