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
<f:subview id="anakategori_menu_kodu">
    <jsp:include page="anakategori_menu_kodu.jsp" />
</f:subview>
<!--MENU SONU -->  




 
    
<%        Connection conDuzenle = null; 
          Statement stmtDuzenle = null;
          ResultSet rsDuzenle = null;
	PreparedStatement preparedStatementDuzenle = null;     
    try {  
Class.forName("com.mysql.jdbc.Driver").newInstance();
String urlDuzenle = "jdbc:mysql://localhost:3306/yazilimvideoveritabani?user=katerina&password=1453";
//String url = "jdbc:mysql://localhost:3306/yazilimv_ideoveritabani?user=yazilimv_katya&password=14531453";

        conDuzenle = DriverManager.getConnection(urlDuzenle);
        // out.println("Baglandık.");
  
        
        
        //KAYDI BURADA DÜZENLE
     String  sqlDuzenle = "UPDATE anakategori "
         + " SET anakategoriadi = ?, "
         + " anakategorisirasi = ?, "
         + " anakategoriresimadi = ? "
         + " WHERE anakategoriid = ?" ;
     
        
   preparedStatementDuzenle = conDuzenle.prepareStatement(sqlDuzenle);
   preparedStatementDuzenle.setString(1, request.getParameter("anakategoriadi"));
   preparedStatementDuzenle.setString(2, request.getParameter("anakategorisirasi"));
   preparedStatementDuzenle.setString(3, request.getParameter("anakategoriresimadi"));
   preparedStatementDuzenle.setString(4, request.getParameter("anakategoriid"));    
   
   preparedStatementDuzenle.executeUpdate();
 

        
               
            } catch (SQLException e) {
                out.println("SQL Hata: " + e.toString());
            } finally {
     //   conDuzenle.close();
        }
        %>    
    
     
        <!--KAYIT LİSTELEME KODU BAŞI -->   
<f:subview id="anakategori_tum_kayitlari_listeme_sql_kodu">
    <jsp:include page="anakategori_tum_kayitlari_listeme_sql_kodu.jsp" />
</f:subview>
<!--KAYIT LİSTELEME KODU SONU -->        
        
   

</body>
</html>
