<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
<html>
    <head>



                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Indian Health Services</title>
    <link rel="shortcut icon" type="image/icon" href="images/favicon.ico"/>

    <!-- CSS
    ================================================== -->       
    <!-- Bootstrap css file-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">       
    <!-- Default Theme css file -->
    <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">   
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet"> 
    <!-- Photo Swipe Image Gallery -->     
    <link rel="stylesheet prefetch" href="css/photoswipe.css">
    <link rel="stylesheet prefetch" href="css/default-skin.css">    

    <!-- Main structure css file -->
    <link href="css/style.css" rel="stylesheet">
   
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>  
    <link href='http://fonts.googleapis.com/css?family=Habibi' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Cinzel+Decorative:900' rel='stylesheet' type='text/css'>

<style>
        td{
            padding: 10px;
        }
        #doc{
            display: none;
              
        }
        #hos{
            display: none;
        }
        #lab{
            display: none;
        }
        .navbar-default .navbar-nav > li > a::before {
           
        content: ".";
      
        }
       
    </style>
     <!-- jQuery Library  -->
    <script src="js/jquery.js"></script>    
   

    <!-- Custom JS -->
   
<!--<script>
    $(document).ready(function(){
        $("#doc").hide();
        $("#hos").hide();
        $("#lab").hide();
    }) ;          

            </script> -->
</head>
<body>
           <!-- BEGAIN PRELOADER -->
    <div id="preloader">
      <div id="status">&nbsp;</div>
    </div>
    <!-- END PRELOADER -->

    <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-heartbeat"></i></a>
    <!-- END SCROLL TOP BUTTON -->
<header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">  
          <div class="container">
            <div class="navbar-header">
              <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- LOGO -->              
              <!-- TEXT BASED LOGO -->
              <a class="navbar-brand" href="index.jsp"><i class="fa fa-heartbeat"></i> <span>Indian Health Services</span></a>              
              <!-- IMG BASED LOGO  -->
              <!--  <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>   -->                    
            </div>
            <div id="navbar" class="navbar-collapse collapse">
        <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
          <li class="active"><a href="index.jsp"><span>HOME</span></a></li>
          <li><a href="Login.jsp"><span>LOGIN</span></a></li>
          <li><a href="register.jsp"><span>REGISTER</span></a></li>
          <li><a href="contact.jsp"><span>CONTACT US</span></a></li>
          <li><a href="aboutus.jsp"><SPAN>ABOUT US</SPAN></a></li>
          <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Service <span class="fa fa-angle-down"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="FirstAid.jsp">First Aid</a></li>
                    <li><a href="Diseases,jsp">Diseases</a></li>
                    <li><a href="Fruits.jsp">Fruits and their benefits</a></li>
                  </ul>
                </li>
          <li><a href="Feedback.jsp"><span>FEEDBACK</span></a></li>
        </ul>
            </div>
          </div>
        </nav>
      </div>
</header>
    <!--=========== END HEADER SECTION ================-->   

    <!--=========== BEGIN SLIDER SECTION ================-->
    <section id="sliderArea">
      <!-- Start slider wrapper -->      
      <div class="top-slider">
       
          <!-- Start First slide -->
        <div class="top-slide-inner">
          <div class="slider-img">
            <img src="images/14.jpg" alt="">
          </div>
          <div class="slider-text">
            <h2>An <strong>Excellent Website</strong>  for your Health Related Search</h2>
            <p><strong>Helps</strong> you search for doctors,labs,hospitals</p>
            <div class="readmore_area">
              <a data-hover="Read More" href="#search"><span>BEGIN YOUR SEARCH</span></a>                
            </div>
          </div>
        </div>
        <!-- End First slide -->
<!-- Start 2nd slide -->
        <!-- End 2nd slide -->
         <!-- Start 2nd slide -->
        <div class="top-slide-inner">
        <div class="slider-img">
            <img src="images/15.jpg" alt="">
          </div>
          <div class="slider-text">
            <h2><strong>Services</strong> provided like </h2>
            <p><strong>Information</strong> about first aid,diseases,fruits etc.</p>
            <div class="readmore_area">
              <a data-hover="Read More" href="#search"><span>BEGIN YOUR SEARCH</span></a>                
            </div>
          </div>
        </div>
        <!-- End 2nd slide -->
    
           <!-- Start Third slide -->
        <div class="top-slide-inner">
          <div class="slider-img">
            <img src="images/7.jpg" alt="">
          </div>
          <div class="slider-text">
            <h2>An <strong>Search-->Read Feedback-->Book-->Give your feedback</strong></h2>
            <p><strong>Information</strong>  about first aid,diseases,fruits etc.</p>
            <div class="readmore_area">
              <a data-hover="Read More" href="#search"><span>BEGIN YOUR SEARCH</span></a>                
            </div>
          </div>
        </div>
        <!-- End Third slide -->

        <!-- Start Fourth slide -->
        <div class="top-slide-inner">
          <div class="slider-img">
            <img src="images/12.jpg" alt="">
          </div>
         <div class="slider-text">
            <h2><strong>Helping Mankind</strong></h2>
            <p>-To serve the humanity</p>
            <div class="readmore_area">
              <a data-hover="Read More" href="#search"><span>BEGIN YOUR SEARCH</span></a>                
            </div>
          </div>
        </div>
        <!-- End Fourth slide -->

        <!-- Start Fifth slide -->
        <div class="top-slide-inner">
          <div class="slider-img">
            <img src="images/9.jpg" alt="">
          </div>
          <div class="slider-text">
            <h2><strong>Give Feedback</strong> about our website</h2>
            <p>-It will help us to improve </p>
            <div class="readmore_area">
              <a data-hover="Read More" href="#search"><span>BEGIN YOUR SEARCH</span></a>                
            </div>
          </div>
        </div>
        <!-- End Fifth slide -->
      </div><!-- /top-slider -->
    </section>
    <!--=========== END SLIDER SECTION ================-->


    <div  class="row">
            <div id="search" class="single-top-feature">
          
                <br>
                <br>
          
        <div class="row">
            <div style="margin: auto; width: 50%;">
                <br>
                <br>
            <ul class="nav nav-tabs">
                <li><a id="docbar"><img width="90px" height="90px" src="icons/doc1.png" /><h3><strong>DOCTOR</strong></h3></a></li>
                <li><a id="hosbar"><img width="90px" height="90px" src="icons/hos.png" /><h3><strong>HOSPITAL</strong></h3></a></li>
                <li><a id="labbar"><img  width="90px" height="90px" src="icons/lab.png" /><h3><strong>LABORATORY</strong></h3></a></li>
            </ul>
            <section id="doc">
                    <table>
                        <tr>
                            <td><a href="DocSearch.jsp?cat=audiologist">AUDIOLOGIST</a></td>
                            <td><a href="DocSearch.jsp?cat=allergist">ALLERGIST</a></td>
                        <td><a href="DocSearch.jsp?cat=anesthesiologist">ANESTHESIOLOGIST</a><td>
                           
                    </tr>
                    
                    <tr>
                    <td><a href="DocSearch.jsp?cat=cardiologist">CARDIOLOGIST</a></td>
                    <td><a href="DocSearch.jsp?cat=Dentist">DENTIST</a></td>
                    <td><a href="DocSearch.jsp?cat=dermatologist">DERMATOLOGIST</a></td>
                    </tr>
                    
                    <tr>
                    <td><a href="DocSearch.jsp?cat=endocrinologist">ENDOCRINOLOGIST</a></td>
                    <td><a href="DocSearch.jsp?cat=epidemiologist">EPIDEMIOLOGIST</a></td>
                    <td><a href="DocSearch.jsp?cat=gyneocologist">GYNEOCOLOGIST</a></td>
                    </tr>
                    
                        
                    <tr>
                    <td><a href="DocSearch.jsp?cat=immunologist">IMMUNOLOGIST</a></td>
                    <td><a href="DocSearch.jsp?cat=infectiousdisease">INFECTIOUS DISEASE</a></td>
                    <td><a href="DocSearch.jsp?cat=internalmedicine">INTERNAL MEDICINE SPECIALIST</a></td>
                    </tr>
                   
                    <tr>
                    <td><a href="DocSearch.jsp?cat=microbiologist">MICROBIOLOGIST</a></td>
                    <td><a href="DocSearch.jsp?cat=neonologist">NEONOLOGIST</a></td>
                    </tr>
                    </table>
                
            </section>
            <section id="hos">
                <table>
                    <tr>
                    <td><a href="WorkplaceSearch.jsp?type=hospital&cat=ayurvedic">AYURVEDIC</a></td>
                    <td><a href="WorkplaceSearch.jsp?type=hospital&cat=childcare">CHILDCARE</a></td>
                    <td><a href="WorkplaceSearch.jsp?type=hospital&cat=cancer">CANCER</a></td>
                    </tr> <tr>
                     <td><a href="WorkplaceSearch.jsp?type=hospital&cat=cardiac">CARDIAC</a></td>
                      <td><a href="WorkplaceSearch.jsp?type=hospital&cat=dental">DENTAL</a></td>
                       <td><a href="WorkplaceSearch.jsp?type=hospital&cat=diabetic">DIABETIC</a></td>
                    </tr> <tr>
                       <td><a href="WorkplaceSearch.jsp?type=hospital&cat=ent">ENT</a></td>
                         <td><a href="WorkplaceSearch.jsp?type=hospital&cat=eyecare">EYECARE</a></td>
                          <td><a href="WorkplaceSearch.jsp?type=hospital&cat=homeopathic">HOMEOPATHIC</a></td>
                </tr> <tr>
                          <td><a href="WorkplaceSearch.jsp?type=hospital&cat=hiv">HIV</a></td>
                            <td><a href="WorkplaceSearch.jsp?type=hospital&cat=kidney">KIDNEY</a></td>
                            <td><a href="WorkplaceSearch.jsp?type=hospital&cat=mental">MENTAL</a></td>
                </tr> <tr>
                            <td><a href="WorkplaceSearch.jsp?type=hospital&cat=multispeciality">MULTISPECIALITY</a></td>
                              <td><a href="WorkplaceSearch.jsp?type=hospital&cat=maternity">MATERNITY</a></td>
                               <td><a href="WorkplaceSearch.jsp?type=hospital&cat=neurological">NEUROLOGICAL</a></td>
                </tr> <tr>
                               <td><a href="WorkplaceSearch.jsp?type=hospital&cat=orthopedic">ORTHOPEDIC</a></td>
                                 <td><a href="WorkplaceSearch.jsp?type=hospital&cat=ophthalmologist">OPTHALMOLOGIST</a></td>
                                 <td><a href="WorkplaceSearch.jsp?type=hospital&cat=tuberculosis">TUBERCULOSIS</a></td> </tr>
                <tr> <td><a href="WorkplaceSearch.jsp?type=hospital&cat=veterinary">VETERINARY</a></td>
                </tr>         </table>
            </section>
            <section id="lab">
                <ul class="nav nav-tabs">
                    <table>
                        <tr>
                    <td><a href="WorkplaceSearch.jsp?type=lab&cat=general">ALL LABS</a></td>
                    <td><a href="WorkplaceSearch.jsp?type=lab&cat=thyroid">THYROID PROFILE</a></td>
                    <td><a href="WorkplaceSearch.jsp?type=lab&cat=lipid">LIPID PROFILE</a></td>
                        </tr>
                       
                        <tr>
                     <td><a href="WorkplaceSearch.jsp?type=lab&cat=blod">BLOOD CHECKUP</a></td>
                      <td><a href="WorkplaceSearch.jsp?type=lab&cat=xray">X-RAY</a></td>
                       <td><a href="WorkplaceSearch.jsp?type=lab&cat=hiv">HIV 1&2</a></td>
                        </tr>
                        
                        <tr>
                        <td><a href="WorkplaceSearch.jsp?type=lab&cat=pregnancy">PREGNANCY</a></td>
                         <td><a href="WorkplaceSearch.jsp?type=lab&cat=urine">URINE CULTURE</a></td>
                          <td><a href="WorkplaceSearch.jsp?type=lab&cat=stool">STOOL ROUTINE</a></td>
                        </tr>
                        
                        <tr>
                           <td><a href="WorkplaceSearch.jsp?type=lab&cat=ct">CT SCAN</a></td>
                            <td><a href="WorkplaceSearch.jsp?type=lab&cat=semen">SEMEN ANALYSIS</a></td>
                             <td><a href="WorkplaceSearch.jsp?type=lab&cat=mri">MRI SCAN</a></td>
                        </tr>
                    </table>
                </ul>
            </section>
            </div>
            <script>
                    $("#docbar").click(function(){
        $("#doc").toggle();
        $("#hos").hide();
        $("#lab").hide();
    });
    $("#hosbar").click(function(){
        $("#doc").hide();
        $("#hos").toggle();
        $("#lab").hide();
    });
    $("#labbar").click(function(){
        $("#doc").hide();
        $("#hos").hide();
        $("#lab").toggle();
    });
            </script>
        </div>
            </div>
    </div>
     <!--=========== BEGIN Service SECTION ================-->
    <section id="service">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <div class="service-area">
              <!-- Start Service Title -->
              <div class="section-heading">
                <h2>Our Services</h2>
                <div class="line"></div>
              </div>
              <!-- Start Service Content -->
              <div class="service-content">
                <div class="row">
                  <!-- Start Single Service -->
                  <div class="col-lg-4 col-md-4">
                    <div class="single-service">
                      <div class="service-icon">
                        <span class="fa fa-stethoscope service-icon-effect"></span>  
                      </div>                      
                      <h3><a href="#">Cardio Monitoring</a></h3>
                      <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
                    </div>
                  </div>
                  <!-- Start Single Service -->
                  <div class="col-lg-4 col-md-4">
                    <div class="single-service">
                      <div class="service-icon">
                        <span class="fa fa-heartbeat service-icon-effect"></span>  
                      </div>                      
                      <h3><a href="#">Rehabilitation Therapy</a></h3>
                      <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
                    </div>
                  </div>
                  <!-- Start Single Service -->
                  <div class="col-lg-4 col-md-4">
                    <div class="single-service">
                      <div class="service-icon">
                        <span class="fa fa-h-square service-icon-effect"></span>  
                      </div>                      
                      <h3><a href="#">Medical Health Care</a></h3>
                      <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
                    </div>
                  </div>
                  <!-- Start Single Service -->
                  <div class="col-lg-4 col-md-4">
                    <div class="single-service">
                      <div class="service-icon">
                        <span class="fa fa-medkit service-icon-effect"></span>  
                      </div>                      
                      <h3><a href="#">Background Checks</a></h3>
                      <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
                    </div>
                  </div>
                  <!-- Start Single Service -->
                  <div class="col-lg-4 col-md-4">
                    <div class="single-service">
                      <div class="service-icon">
                        <span class="fa fa-user-md service-icon-effect"></span>  
                      </div>                      
                      <h3><a href="#">Special Doctor</a></h3>
                      <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
                    </div>
                  </div>
                  <!-- Start Single Service -->
                  <div class="col-lg-4 col-md-4">
                    <div class="single-service">
                      <div class="service-icon">
                        <span class="fa fa-ambulance service-icon-effect"></span>  
                      </div>                      
                      <h3><a href="#">24 Hours Service</a></h3>
                      <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=========== End Service SECTION ================-->

    <!--=========== BEGAIN Why Choose Us SECTION ================-->
    <section id="whychooseSection">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <div class="service-area">
              <!-- Start Service Title -->
              <div class="section-heading">
                <h2>Why Choose Us</h2>
                <div class="line"></div>
              </div>              
            </div>
          </div>
          <div class="col-lg-12 col-md-12">
            <div class="row">
              <div class="col-lg-5 col-md-6 col-sm-6 col-xs-12">
                <div class="whyChoose-left">
                  <div class="whychoose-slider">
                    <div class="whychoose-singleslide">
                      <img src="images/choose-us-img1.jpg" alt="img">
                    </div>
                    <div class="whychoose-singleslide">
                      <img src="images/choose-us-img2.jpg" alt="img">
                    </div>
                    <div class="whychoose-singleslide">
                      <img src="images/choose-us-img3.jpg" alt="img">
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-7 col-md-6 col-sm-6 col-xs-12">
                <div class="whyChoose-right">
                  <div class="media">
                    <div class="media-left">
                      <a href="#" class="media-icon">
                        <span class="fa fa-hospital-o"></span>
                      </a>
                    </div>
                    <div class="media-body">
                      <h4 class="media-heading">Great Infrastructure</h4>
                      <p>Search for hospitals</p>  
                    </div>
                  </div>
                  <div class="media">
                    <div class="media-left">
                      <a href="#" class="media-icon">
                        <span class="fa fa-user-md"></span>
                      </a>
                    </div>
                    <div class="media-body">
                      <h4 class="media-heading">Qualified Doctors</h4>
                      <p>Search for doctors</p>  
                    </div>
                  </div>
                  <div class="media">
                    <div class="media-left">
                      <a href="#" class="media-icon">
                        <span class="fa fa-ambulance"></span>
                      </a>
                    </div>
                    <div class="media-body">
                      <h4 class="media-heading">Emergency Support</h4>
                      <p>Search for laboratorys</p>  
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>          
        </div>
      </div>
    </section>
    <!--=========== END Why Choose Us SECTION ================-->
 <!--=========== BEGAIN Doctors SECTION ================-->
    <section id="meetDoctors">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <div class="meetDoctors-area">
             <!-- Start Service Title -->
              <div class="section-heading">
                <h2>Recent Searches</h2>
                <div class="line"></div>
              </div>
              <div class="doctors-area">
                  <%
                     Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "sr71xb35");          
    
             
               Statement findrecent=conn.createStatement();
              
               ResultSet searches=findrecent.executeQuery("select search_term from recent_search ORDER BY search_date");
                  %>
                <div class="row">
                    <% while(searches.next())
                    {
                       %>
                       <div class="col-md-1">
                           <%=searches.getString("search_term")%>
                       </div>
                    <% 
                    }%>
                  
                  
                </div>
                    <center>  <h2>
                    Popular searches
                        </h2> </center>
                <div class="row">
                    <%
                        Statement findpopular=conn.createStatement();
              
               ResultSet popsearches=findpopular.executeQuery("select search_term from recent_search ORDER BY search_frequency");
                    while(popsearches.next())
                    {
                        %>
                        <div class="col-md-1">
                            <%=popsearches.getString("search_term")%>
                        </div>
                    <%
                    }
                    %>
                        
                   
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=========== End Doctors SECTION ================-->

    <!--=========== BEGAIN Testimonial SECTION ================-->
    <%
        Statement GetFeedback=conn.createStatement();
        ResultSet Feedback=GetFeedback.executeQuery("select feedback from feedback_website");
        %>
    <section id="testimonial">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <div class="testimonial-area">
             <!-- Start Service Title -->
              <div class="section-heading">
                <h2>What our patients said</h2>
                <div class="line"></div>
              </div>
              <div class="testimonial-area">
                <ul class="testimonial-nav">
                    <% while(Feedback.next())
                    {
                       %>
                       <li>
                    <div class="single-testimonial">
                      <div class="testimonial-img">
                        <img src="images/patients-3.jpg" alt="img">
                      </div>
                      <div class="testimonial-cotent">
                          <p class="testimonial-parg"><%=Feedback.getString("feedback")%></p>
                      </div>
                    </div>
                  </li>
                    <% 
                    }%>
                   
                  
                </ul>
                  
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=========== End Testimonial SECTION ================-->

        <!--=========== Start Footer SECTION ================-->
    <footer id="footer">
      <!-- Start Footer Top -->
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="single-footer-widget">
                <div class="section-heading">
                <h2>About Us</h2>
                <div class="line"></div>
              </div>           
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
              </div>
            </div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
            <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="single-footer-widget">
                <div class="section-heading">
                <h2>Our Service</h2>
                <div class="line"></div>
              </div>
              <ul class="footer-service">
                  <li><a href="FirstAid.jsp"><span class="fa fa-check"></span>First Aid</a></li>
                <li><a href="Fruits.jsp"><span class="fa fa-check"></span>Fruits</a></li>
                <li><a href="Diseases.jsp"><span class="fa fa-check"></span>Diseases</a></li>
                <li><a href="#search"><span class="fa fa-check"></span>Search for doctor</a></li>
                <li><a href="#search"><span class="fa fa-check"></span>Search for hospital</a></li>
                  <li><a href="#search"><span class="fa fa-check"></span>Search for laboratory</a></li>
              </ul>
              </div>
            </div> &nbsp;&nbsp;
          
          <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="single-footer-widget">
                <div class="section-heading">
                <h2>Contact Info</h2>
                <div class="line"></div>
              </div>
              <p>The point of using Lorem Ipsum is convinience for the users.</p>
              <address class="contact-info">
                <p><span class="fa fa-home"></span>16th Main,BTM 2nd stage,Bangalore</p>
                <p><span class="fa fa-phone">8054955858</span></p>
                <p><span class="fa fa-envelope"></span>tanyajune7@gmail.com</p>
              </address>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Start Footer Middle -->
      <div class="footer-middle">
        
          
        <div class="container">
          <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="footer-copyright">
              <p>&copy; Copyright 2016 <a href="index.jsp">WpF Medinova</a></p>
            </div>
          </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"> 
               <div class="footer-bottom">              
               
              <p>Design & Developed By <a rel="nofollow" href=""> Tanya Bhardwaj</a></p>
            </div>
            </div>
          
        </div>
        </div>
      </div>
      <!-- Start Footer Bottom -->
      <div style="background-color: #11060a;" class="footer-social">                         
    
      <br>
            <div class="container">
          <div class="row">
          
       <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
           <br>
            <div style="align-content:center; "class="footer-social">              
                <a href="#"><span class="fa fa-facebook"></span></a>
                <a href="#"><span class="fa fa-twitter"></span></a>
                <a href="#"><span class="fa fa-google-plus"></span></a>
                <a href="#"><span class="fa fa-linkedin"></span></a>     
                <br>
                <br></div>
          </div>
       </div>
            </div>
       </div>
      </div>
    </footer>
    <!--=========== End Footer SECTION ================-->
     <!-- Bootstrap default js --> 
    <script src="js/bootstrap.min.js"></script>
    <!-- slick slider -->
    <script src="js/slick.min.js"></script>    
   <script type="text/javascript" src="js/modernizr.custom.79639.js"></script>    
    <!-- counter -->
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <!-- Doctors hover effect -->
    <script src="js/snap.svg-min.js"></script>
    <script src="js/hovers.js"></script>
    <!-- Photo Swipe Gallery Slider -->
    <script src='js/photoswipe.min.js'></script>
    <script src='js/photoswipe-ui-default.min.js'></script>    
    <script src="js/photoswipe-gallery.js"></script>
 <script src="js/custom.js"></script>
</body>
</html>
