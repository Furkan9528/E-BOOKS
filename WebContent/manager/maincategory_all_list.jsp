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


	<h1>Liste</h1>

	<table width="100%">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>Adı</strong></td>
			<td><strong>Sırası</strong></td>
			<td><strong>Resim</strong></td>
			<td><strong></strong></td>
		</tr>

		<%
			Connection conAra = null;
			Statement stmtAra = null;
			ResultSet rsAra = null;

			try {
				Class.forName("com.mysql.jdbc.Driver").getConstructors();
				String urlAra = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";

				conAra = DriverManager.getConnection(urlAra);

				//KAYITLARI LİSTELEME KOMUTLARI
				// SQL query command
				String maincategoryname = request.getParameter("maincategoryname") + "%";
				String maincategoryorder = request.getParameter("maincategoryorder") + "%";
				String maincategoryimagename = request.getParameter("maincategoryimagename") + "%";

				String sqlAra = "SELECT  *  FROM maincategory " + " WHERE maincategoryname LIKE '" + maincategoryname
						+ "' AND  maincategoryorder LIKE '" + maincategoryorder +

						"' ";

				stmtAra = conAra.createStatement();
				rsAra = stmtAra.executeQuery(sqlAra);
		%>

		<%!int i = 0;
			String renk = "#ffccff";%>

		<%
			while (rsAra.next()) {
					i = i + 1;
					i = i % 2;
					if (i == 0) {
						renk = "#ffff99";
					} else {
						renk = "#ccffcc";
					}
		%>
		<tr bgcolor="<%out.println(renk);%>">


			<td><%=rsAra.getInt("maincategoryid")%></td>
			<td><%=rsAra.getString("maincategoryname")%></td>
			<td><%=rsAra.getString("maincategoryorder")%></td>
			<td><img width="100"
				src="../images/<%=rsAra.getString("maincategoryimagename")%>"
				alt="<%=rsAra.getString("maincategoryimagename")%>" /> <span
				class="zoom"></span></td>

			<td><a
				href="maincategory_delete_result.jsp?maincategoryid=<%=rsAra.getInt("maincategoryid")%>">
					<img src="../images/sil.png" alt="Sil" width="32" height="32"
					border="0">Sil</img>
			</a></td>

			<td><a
				href="maincategory_edit_form.jsp?maincategoryid=<%=rsAra.getInt("maincategoryid")%>">
					<img src="../images/duzenle.png" alt="Düzenle" width="32"
					height="32" border="0">Düzenle</img>
			</a></td>


			<td><a
				href="maincategory_add_form.jsp?maincategoryid=<%=rsAra.getInt("maincategoryid")%>">
					<img src="../images/ekle.png" alt="Ekle" width="32" height="32"
					border="0">Alt Kategori Ekle</img>
			</a></td>




		</tr>
		<%
			
		%>

		<%
			}

			} catch (SQLException e) {
				out.println("SQL Hata: " + e.toString());
			} finally {
				conAra.close();
			}
		%>

	</table>



</body>
</html>
