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


	<!--KAYIT ARA FORMU BAŞI -->
	<f:subview id="maincategory_search_form_code">
		<jsp:include page="maincategory_search_form_code.jsp" />
	</f:subview>
	<!--KAYIT ARA FORMU SONU -->


	<!--KAYIT LİSTELEME KODU BAŞI -->
	<f:subview id="maincategory_all_list">
		<jsp:include page="maincategory_all_list.jsp" />
	</f:subview>
	<!--KAYIT LİSTELEME KODU SONU -->

</body>
</html>
