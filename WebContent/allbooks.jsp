<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page errorPage="404error.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


 <jsp:include page="header.jsp" />


  <section class="fruit_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <hr>
        <h2>
          All Books
        </h2>
      </div>
    </div>
    <div class="container-fluid">
       
      <div class="fruit_container">
      <%
			String Driver = "com.mysql.jdbc.Driver";
			Class.forName(Driver).getConstructors(); 
	
			String url = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";
		
			Connection con=null,conVideoCount;
			Statement statement=null, stVideoCount;
			ResultSet resultset=null, rsVideoCount;
			
			int ordertechnology = 1;
			try {
			
					con= DriverManager.getConnection(url);
					statement= con.createStatement();
					resultset= statement.executeQuery("SELECT * FROM category ");
					
					while(resultset.next()){
						
					
				
		%>
        <div class="box">
        
          <img src="images/<%=resultset.getString("categoryimagename") %>" alt="">
          <div class="link_box">
            <h5>
              <%=resultset.getString("categoryname") %>
            </h5>
            <a href="">
              Buy Now
            </a>
          </div>
        </div> 
         <%
	       			ordertechnology++;
					}
			        resultset.close();
					statement.close();
					con.close();
					
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
        %>     
     </div>
     
    </div>
  </section>

  <jsp:include page="footer.jsp"/>

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/custom.js"></script>

</body>

</html>