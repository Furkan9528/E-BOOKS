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


</body>
</html>
