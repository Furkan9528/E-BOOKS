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
          Type of Books 
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
					resultset= statement.executeQuery("SELECT * FROM maincategory ");
					
					while(resultset.next()){
						
					
				
		%>
        <div class="box">
          <img src="images/<%=resultset.getString("maincategoryimagename") %>" alt="" >
          <div class="link_box">
            <h5>
              <%=resultset.getString("maincategoryname") %>
            </h5>
			<a href="list.jsp?maincategoryid=<%=resultset.getInt("maincategoryid") %>&maincategoryname=<%=resultset.getString("maincategoryname")%>">
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


<div class="w3-content w3-display-container">
  <img class="mySlides" src="images/most-read.jpg" style="width:100%">
  <img class="mySlides" src="images/most-read-2.png" style="width:100%">
  
  
  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>


<br>
<br>
	<jsp:include page="footer.jsp"/>
  
</body>

<script>
		var slideIndex = 1;
		showDivs(slideIndex);
		
		function plusDivs(n) {
		  showDivs(slideIndex += n);
		}
		
		function showDivs(n) {
		  var i;
		  var x = document.getElementsByClassName("mySlides");
		  if (n > x.length) {slideIndex = 1}
		  if (n < 1) {slideIndex = x.length}
		  for (i = 0; i < x.length; i++) {
		    x[i].style.display = "none";  
		  }
		  x[slideIndex-1].style.display = "block";  
		  setTimeout(showDivs, 2000); 
		}
</script>


</html>
