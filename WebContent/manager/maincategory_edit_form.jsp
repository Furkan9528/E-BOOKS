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

	<!--KAYIT DUZENLEME FORM KODU BASI -->
	<f:subview id="maincategory_edit_form">
		<jsp:include page="maincategory_edit_form.jsp" />
	</f:subview>
	<!--KAYIT DUZENLEME FORM  KODU SONU -->


</body>
</html>
