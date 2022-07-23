<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>

<script>
	function formuKontrolEdenFonksiyon(form) {
		//--------------------------------
		if (form.maincategoryname.value == '') {

			alert("Maincategoryname alanını boş geçemezsiniz.");
			return false;
		}
		//--------------------------------
		if (form.maincategoryorder.value == '') {

			alert("Maincategoryorder alanını boş geçemezsiniz.");
			return false;
		}
		//--------------------------------
	}
</script>

<body>


	<h1>Ekle</h1>

	<form id="maincategory_add_form" name="maincategory_add_form"
		onsubmit="return formuKontrolEdenFonksiyon(document.maincategory_add_form);"
		method="post" action="maincategory_add.jsp">

		<table width="500" border="0">
			<tr>
				<td width="100">Ana kategori adi</td>
				<td width="200"><input type="text" name="maincategoryname"
					id="maincategoryname" /></td>
			</tr>

			<tr>
				<td>Ana kategori sirasi</td>
				<td><input type="text" name="maincategoryorder"
					id="maincategoryorder" /></td>
			</tr>
			<tr>
				<td>Ana kategori resim adi</td>
				<td><input type="file" name="maincategoryimagename"
					id="maincategoryimagename" size="50" /></td>
			</tr>

			<tr>
				<td>&nbsp;</td>
				<td><input type="reset" name="vazgec" id="vazgec"
					value="Vazgeç" /> <input type="submit" name="onayla" id="onayla"
					value="Onayla" /></td>
			</tr>
		</table>
	</form>

</body>
</html>
