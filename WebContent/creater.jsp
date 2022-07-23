<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="404error.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<jsp:include page="header.jsp"/>

	<!-- client section -->

	<section class="client_section layout_padding">
		<div class="container ">
			<div class="heading_container">
				<h2>Developers</h2>
				<hr>
			</div>
			
			
			<div id="carouselExample2Controls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
				
					<div class="carousel-item active">
					<%
					String Driver = "com.mysql.jdbc.Driver";
					Class.forName(Driver).getConstructors(); 
			
					String url = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";
				
					Connection con=null,conVideoCount;
					Statement statement=null;
					ResultSet resultset=null;
					
					
					int ordertechnology = 1;
					
					try{
						con= DriverManager.getConnection(url);
						statement= con.createStatement();
						resultset= statement.executeQuery("SELECT * FROM softwarevideodatabase.creaters ");
						
						while(resultset.next()){
							
				
					%>
						<div class="client_container layout_padding-top">
							<div class="img-box">
								<img src="images/<%=resultset.getString("createrimage") %>" alt="">
							</div>
							<div class="detail-box">
								<h5><%=resultset.getString("creatersname") %> <%=resultset.getString("creatersurname") %></h5>
								<p>
									<br> <%=resultset.getString("creatertext") %>
								</p>
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
					
	
					
				
			</div>

		</div>
		
	</section>

	<jsp:include page="footer.jsp"/>
	
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>

</body>

</html>