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
<!-- contact section -->
  <section class="contact_section layout_padding-bottom">
    <div class="container-fluid">
      <div class="row">
        <div class="offset-lg-2 col-md-10 offset-md-1">
          <div class="heading_container">
            <hr>
            <h2>
				Contact With Us
            </h2>
          </div>
        </div>
      </div>

      <div class="layout_padding2-top">
        <div class="row">
          <div class="col-lg-4 offset-lg-2 col-md-5 offset-md-1">
          
            <form action="<%= request.getContextPath()%>/commentregister" method="post" >
              <div class="contact_form-container">
                <div>
                  <div>
                    <input type="text" placeholder="FULL NAME" name="nameal" id="nameal"/>
                  </div>
                  <div>
                    <input type="email" placeholder="EMAIL" name="email"  id="email"/>
                  </div>
                  <div>
                    <input type="text" placeholder="PHONE" name="numberphone" id="numberphone" />
                  </div>
                  <div>
                    <input type="text" class="message_input" placeholder="MESSAGE" name="message" id="message" />
                  </div>
                  <div>
                    <button type="submit">
                    Send
                    </button> 
                  </div>
                </div>
              </div>
            </form>
         
          </div>
          <div class="col-md-6 px-0">
            <div class="map_container">
              <div class="map-responsive">
                <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=Eiffel+Tower+Paris+France" 
						th="600" height="300" frameborder="0" style="border:0; width: 100%; height:100%" allowfullscreen></iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end contact section -->


  <!-- info section -->

  <section class="info_section layout_padding">
    <div class="container">
      <div class="info_logo">
        <h2>
          MY BOOKS
        </h2>
      </div>
      <div class="info_contact">
        <div class="row">
          <div class="col-md-4">
            <a href="contact.jsp">
              <img src="images/location.png" alt="">
              <span>
                61 Avenue du Général de Gaulle, 94000 Créteil
              </span>
            </a>
          </div>
          <div class="col-md-4">
            <a href="">
              <img src="images/call.png" alt="">
              <span>
                Call : +00000095200
              </span>
            </a>
          </div>
          <div class="col-md-4">
            <a href="">
              <img src="images/mail.png" alt="">
              <span>
                furkank@gmail.com / fuatk@gmail.com / cemre952(snap)
              </span>
            </a>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-8 col-lg-9">
          <div class="info_form">
            <form action="">
              <input type="text" placeholder="Enter your email">
              <button>
                subscribe
              </button>
            </form>
          </div>
        </div>
        <div class="col-md-4 col-lg-3">
          <div class="info_social">
            <div>
              <a href="">
                <img src="images/facebook-logo-button.png" alt="">
              </a>
            </div>
            <div>
              <a href="">
                <img src="images/twitter-logo-button.png" alt="">
              </a>
            </div>
            <div>
              <a href="">
                <img src="images/linkedin.png" alt="">
              </a>
            </div>
            <div>
              <a href="">
                <img src="images/instagram.png" alt="">
              </a>
            </div>
          </div>
        </div>
      </div>

    </div>
  </section>

  <!-- end info section -->


  <!-- footer section -->
  <section class="container-fluid footer_section ">
    <p>
      &copy; <span id="displayYear"></span> All Rights Reserved. Design by
      <a href="https://html.fuatfurkan/">Fuat Furkan K</a>
    </p>
  </section>
  <!-- footer section -->

	<script>
		function formuKontrolEdenFonksiyon(form) {
			//--------------------------------
			if (form.personelname.value == '') {
	
				alert("You should fill name are.");
				return false;
			}
			//--------------------------------
			if (form.personelno.value == '') {
	
				alert("You should fill order area.");
				return false;
			}
			//--------------------------------
		}
	</script>
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/custom.js"></script>

  
  
