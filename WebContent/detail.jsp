<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="404error.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<style>

.column {
  height: 300px; 
}

h1 {
  color: black;
  text-transform: uppercase;
}
h2 {
  color: green;
  text-transform: uppercase;
}
div.b{
 color: red;
 font-size: 50px;
}


.left1{
width : 35%;
}
.right1{
width: 65%;
}

.row:after {
  display: table;
  clear: both;
}
</style>

 <jsp:include page="header.jsp" />

<body>
  <!-- about section -->

 <%
		String Driver = "com.mysql.jdbc.Driver";
		Class.forName(Driver).getConstructors(); 
		String url = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";
	
		Connection con=null;
		Statement statement=null;
		ResultSet resultset=null;
		try {
			con= DriverManager.getConnection(url);
			statement= con.createStatement();
			resultset= statement.executeQuery(
				"SELECT * FROM category WHERE categoryid= '"+request.getParameter("categoryid")+"'");
			
			while(resultset.next()){			
					
				
		%>
		  <section class="about_section layout_padding">
		        <div class="detail-box">
		          <div class="row">
				  <div class="column left1" >
			             <img src="images/<%=resultset.getString("categoryimagename") %>" alt="" width="260" height="350"> 
			         	 <h1 >
			              	<%=resultset.getString("categoryname") %>
			              </h1>
				  </div>
				  <div class="column right1" >
				  	 
				         <div class="b"> <%=resultset.getString("categoryname") %></div>
				         <hr>
				            <p>
								  <%=resultset.getString("categorytext") %>
				            </p>
				          <h4>Price : </h4>
				            <p>
								 <h2> <%=resultset.getString("categoryprice") %> $ </h2>
				            </p> 
				          <a href="buy.jsp?user=<%=session.getAttribute("name") %>">
				              Buy Now
				          </a> 
				  </div>
				</div>
		      </div>
		  </section>
		  <hr>
     <%
     
			}
	        resultset.close();
			statement.close();
			con.close();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
        %>
  
  

  <!-- end about section -->

	<jsp:include page="footer.jsp"/>

</body>

</html>