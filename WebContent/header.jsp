<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="404error.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<style>

.avatar {
  vertical-align: middle;
  width: 50px;
  height: 50px;
  border-radius: 50%;
}


.user-area {
    float: right;
    padding-right: 0;
    position: relative; 
    padding-left: 20px;
    
	.user-avatar {
        float: right;
        width: 10px;
    }
 }

.user-area {
    float: right;
    padding-right: 0;
    position: relative; 
    padding-left: 20px;
    .user-menu {
        background: $header-bg;
        border: none; 
        left: inherit !important;
        right: 0;
        top: 54px !important;
        margin: 0;
        max-width: 150px;
        padding: 5px 10px;
        position: absolute;
        width: 100%;
        z-index: 999;
        min-width: 150px;
        box-shadow: 0 3px 12px rgba(0, 0, 0, 0.05);
        .nav-link {
            color: $menu-color;
            display: block;
            font-size: 13px;
            line-height: 22px;
            padding: 5px 0;
            >i {
                margin-right: 10px;
            }
        }
    }
    .user-avatar {
        float: right;
        width: 40px;
    }
    .user-info .name {
        color: #8c8c8c;
        font-size: 14px;
        position: relative;
        text-transform: uppercase;
    }
    .count {
        background: #d9534f;
        border-radius: 50%;
        color: #fff;
        font-family: 'Open Sans';
        font-size: 9px;
        font-weight: 700;
        float: right;
        height: 20px;
        width: 20px;
        line-height: 20px;
        text-align: center;
    }
    .dropdown-toggle {
        line-height: 55px;
        height: 55px;
        display: flex;
        justify-content: center;
        align-items: center;
        
        &:after {
            display: none;
        }
    }
}

.rounded-circle {
    border-radius: 50%!important;
}
.nav_section {
    margin-top: -32px;

    .custom_nav2 {
        .custom_nav-container {
            padding: 10px 0;
            background-color: $primary;
            border-radius: 5px;

            .navbar-nav .nav-item {
                .nav-link {
                    padding: 10px 30px;
                    color: #FFC300;
                    text-align: center;
                    position: relative;
                }
            }
        }

        #navbarSupportedContent {
            justify-content: center;
        }
    }

    .custom_nav-container .nav_search-btn {
        background-image: url(../images/search-icon.png);
        background-size: 18px;
        background-repeat: no-repeat;
        width: 35px;
        height: 35px;
        padding: 0;
        border: none;
        margin: 0 40px 0 15px;
        background-position: center;
    }
}


.header-menu { 
    display: flex; 
    justify-content:flex-end;
    .dropdown {
        line-height: 35px;
        margin-top: 0 !important;
        
        .dropdown-toggle {
            line-height: 35px; 
        }
    } 
}
</style>

<head> 

	
	  <!-- Basic -->
	  <meta charset="utf-8" />
	  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
	  <!-- Mobile Metas -->
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	  <!-- Site Metas -->
	  <meta name="keywords" content="" />
	  <meta name="description" content="" />
	  <meta name="author" content="" />
	
	  <title>E-Books</title>
	
	  <!-- slider stylesheet -->
	  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />
	
	  <!-- bootstrap core css -->
	  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	  
	  <!-- fonts style -->
	  <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Dosis:400,600,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
	  <!-- Custom styles for this template -->
	  <link href="css/style1.css" rel="stylesheet" />
	  <link href="css/style.scss" rel="stylesheet" />
	  <!-- responsive style -->
	  
	  <link href="css/responsive.css" rel="stylesheet" />
	
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	  <style>
		.mySlides {display:none;}
	  </style>
			
</head>

<body>
  <div class="hero_area">
    <!-- header section strats -->
    <div class="brand_box">
      <a class="navbar-brand" href="index.jsp">
        <span>
          E-Books
        </span>
      </a>
    </div>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section position-relative">
      <div id="carouselExampleControls" class="carousel slide " data-ride="carousel">
        <div class="carousel-inner"> 
        <%
			String Driver = "com.mysql.jdbc.Driver";
			Class.forName(Driver).getConstructors(); 
	
			String url = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";
		
			Connection con=null,conVideoCount;
			Statement statement=null;
			ResultSet resultset=null;
			
			int ordertechnology = 1;
			try {
			
					con= DriverManager.getConnection(url);
					statement= con.createStatement();
					resultset= statement.executeQuery("SELECT * FROM softwarevideodatabase.slider ");
					
					while(resultset.next()){
						
		%>
          <div class="carousel-item active">
            <div class="img-box">
              <img src="images/<%=resultset.getString("sliderphotoname") %>" alt=""  height="565">
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
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
          <span class="sr-only">Next</span>
        </a>
      </div>
    </section>
    <!-- end slider section -->
  </div>




  <!-- nav section -->

  <section class="nav_section">
    <div class="container">
      <div class="custom_nav2">
        <nav class="navbar navbar-expand custom_nav-container ">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex  flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="allbooks.jsp">All Books </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="creater.jsp">Creater</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.jsp">Contact Us</a>
                </li>
                 <li class="nav-item">
                  <a class="nav-link" href="userregistration.jsp">Register</a>
                </li>
                 <li class="nav-item">
                  <a class="nav-link" href="userlogin.jsp">Login</a>
                 </li>
                 <li class="nav-item position1">	
				<%if (session.getAttribute("name")!=null){
						response.sendRedirect("index.jsp");
				%>
				
                 <div class="user-area dropdown float-right">
	                   <%
						String Driver1 = "com.mysql.jdbc.Driver";
						Class.forName(Driver1).getConstructors(); 
				
						String url1 = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";
					
						Connection con1=null;
						Statement statement1=null;
						ResultSet resultset1=null;
						
						int order= 1;
						try {
						
								con1= DriverManager.getConnection(url1);
								statement1= con1.createStatement();
								resultset1= statement1.executeQuery("SELECT * FROM softwarevideodatabase.registerpersonel WHERE registerpersonelname = '"+ session.getAttribute("name") +"'");
								
								while(resultset1.next()){
									
					    %>
                        <a href="#" class="dropdown-toggle active avatar" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle avatar" src="images/<%=resultset1.getString("registerpersonelimage") %>"  alt="User Avatar">
                        </a>
				        <%
					       			order++;
									}
							        resultset1.close();
									statement1.close();
									con1.close();
									
								} catch (Exception e) {
									System.out.println(e.getMessage());
								}
				        %>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="myprofil.jsp"><i class="fa fa- user"></i><font color="#D9B763"> My Profile  </font></a>

                            <a class="nav-link" href="#"><i class="fa fa- user"></i><font color="#D9B763"> My Orders </font></a>

                            <a class="nav-link" href="userpassword.jsp"><i class="fa fa -cog"></i><font color="#D9B763"> Settings</font></a>

							<form action="UserLogout" method="post">
                            	<a class="nav-link"  href="index.jsp"><i class="fa fa-power -off"></i><button class="button" value="Logout" style="vertical-align:middle"><font color="#D9B763"> Logout</font></button> </a>
                            </form>
                        </div>
                 </div>
	                 <%
						  }
						
					%>
					
				</li>	
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>
  </section>
  <!-- end nav section -->
  