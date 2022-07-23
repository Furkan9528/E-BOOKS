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

	<h1>Liste</h1>

	<table width="500">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>Adı</strong></td>
			<td><strong>Sirası</strong></td>
			<td><strong>Resim Adı</strong></td>
			<td><strong></strong></td>
		</tr>

		<%
			Connection conDuzenle = null;
			Statement stmtDuzenle = null;
			ResultSet rsDuzenle = null;

			try {
				Class.forName("com.mysql.jdbc.Driver").getConstructors();
				String urlDuzenle = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";

				conDuzenle = DriverManager.getConnection(urlDuzenle);
				// out.println("Baglandık.");

				//DÜZENLENECEK KAYDI ARA BUL LİSTELE
				String sqlDuzenle = "SELECT  * FROM maincategory " + " WHERE maincategoryid = "
						+ request.getParameter("maincategoryid");

				stmtDuzenle = conDuzenle.createStatement();
				rsDuzenle = stmtDuzenle.executeQuery(sqlDuzenle);
		%>

		<%!int i = 0;
			String renk = "#ffccff";%>

		<%
			String maincategoryname;
				while (rsDuzenle.next()) {
					maincategoryname = rsDuzenle.getString("maincategoryname");
					i = i % 2;
					if (i == 0) {
						renk = "#ffff99";
					} else {
						renk = "#ccffcc";
					}
		%>
		<tr bgcolor="<%out.println(renk);%>">


			<td><%=rsDuzenle.getInt("maincategoryid")%></td>
			<td><%=rsDuzenle.getString("maincategoryname")%></td>
			<td><%=rsDuzenle.getInt("maincategoryorder")%></td>
			<td><%=rsDuzenle.getString("maincategoryimagename")%></td>
			<td><a
				href="anakategori_sil_sonuc.jsp?maincategoryid=<%=rsDuzenle.getInt("maincategoryid")%>">
					<img src="../images/sil.png" alt="Sil" width="32" height="32"
					border="0">Sil</img>
			</a></td>

		</tr>

	</table>

	<hr></hr>

	<h1>Düzenle</h1>

	<form id="maincategory_edit_form_code"
		name="maincategory_edit_form_code"
		onsubmit="return formuKontrolEdenFonksiyon(document.maincategory_edit_form_code);"
		method="post" action="maincategory_edit_result.jsp">

		<table width="500" border="0">

			<input type="text" name="maincategoryid" id="maincategoryid" value="<%=rsDuzenle.getInt("maincategoryid")%>" />

			<tr>
				<td width="100">Ana kategori adi</td>
				<td width="200"><input type="text" name="maincategoryname"
					id="maincategoryname"
					value="<%=rsDuzenle.getString("maincategoryname")%>" /></td>
			</tr>

			<tr>
				<td>Ana kategori sirasi</td>
				<td><input type="text" name="maincategoryorder"
					id="maincategoryorder"
					value="<%=rsDuzenle.getString("maincategoryorder")%>" /></td>
			</tr>
			<tr>
				<td>Ana kategori resim adi</td>
				<td><img width="250"
					src="../images/<%=rsDuzenle.getString("maincategoryimagename")%>"
					alt="<%=rsDuzenle.getString("maincategoryimagename")%>" /> <span
					class="zoom"></span> <input type="file" name="maincategoryimagename"
					id="maincategoryimagename" size="50"
					value="<%=rsDuzenle.getString("maincategoryimagename")%>" /></td>
			</tr>

			<tr>
				<td>&nbsp;</td>
				<td><input type="reset" name="vazgec" id="vazgec"
					value="Vazgeç" /> <input type="submit" name="onayla" id="onayla"
					value="Onayla" /></td>
			</tr>
		</table>
	</form>

	<%
		}
	%>




	<%
		} catch (SQLException e) {
			out.println("SQL Hata: " + e.toString());
		} finally {
			// conDuzenle.close();
		}
	%>






</body>
</html>
