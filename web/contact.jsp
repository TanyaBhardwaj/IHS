<%-- 
    Document   : contact.jsp
    Created on : 18 Mar, 2016, 11:29:36 AM
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Indian Health Services</title>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <link rel='stylesheet prefetch' href='css/photoswipe.css'>
    <link rel='stylesheet prefetch' href='css/default-skin.css'>    

    <!-- Main structure css file -->
    <link href="style.css" rel="stylesheet">
   
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>  
    <link href='http://fonts.googleapis.com/css?family=Habibi' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Cinzel+Decorative:900' rel='stylesheet' type='text/css'>
        <link href="css/style.css" rel="stylesheet" type="text/css" />

<style>
         .main{
            background-image: none;
            background-color: black;
        }
        label{
            width: 250px;
height: 30px;
        }
    </style>
    <!-- jQuery Library  -->
    <script src="js/jquery.js"></script> 
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
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"  aria-controls="navbar">
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
       
            <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="true">Service <span class="fa fa-angle-down"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="FirstAid.jsp">First Aid</a></li>
                    <li><a href="Diseases,jsp">Diseases</a></li>
                    <li><a href="Fruits.jsp">Fruits and their benefits</a></li>
                  </ul>
                </li>
            <li><a href="aboutus.jsp">ABOUT US</a></li>
            
            <li><a href="Feedback.jsp">FEEDBACK</a></li>
          </ul>
          
       </div>
          </div>
        </nav>
      </div>
</header>
       <div class="row">  
                <div class="single-top-feature">
         
       
                 
                 
    
          <h1><a href="index.jsp"><span></span> <small></small></a></h1>
      
            <h2 class="star"> <span></span> </h2>
            <br>
            <br>
            <center>
            <h2><U><span>CONTACT DETAILS</span></U></h2>
            <br>
            <table style=" border-collapse: collapse; border: 1px solid black; height: 80px;padding: 50px;width: 40%;  
    margin-left:30%; 
    margin-right:30%; ">
              
            
                <tr style="border: 1px solid black;">
                    <td style="border: 1px solid black;background-color:  rgb(12, 42, 95);color:rgb(87, 245, 38);text-align: center;">  <label for="number">HELPLINE NO.</label></td>
                    
                    <td style="border: 1px solid black;color:rgb(87, 245, 38);background-color:rgb(12, 42, 95);text-align: center;"> <label for="message">9988765413</label> </td>
            </tr>
            
            <tr style="border: 1px solid black;"> 
                <td style="border: 1px solid black;background-color: rgb(12, 42, 95);color:rgb(87, 245, 38);text-align: center;"> <label for="email">EMAIL</label> </td>
            <td style="border: 1px solid black;background-color:rgb(12, 42, 95);color:rgb(87, 245, 38);text-align: center;"><label for="email">ihs@gmail.com</label>
            </td>
                     </tr>
            </table>
            <BR><BR>
            
            <h2><span><u>SEND US YOUR QUERY</U> </SPAN></h2>
        
            <form action="SendQuery" method="post" > 
              <TABLE style=" border-collapse: collapse; border: 1px solid black; height: 80px;padding:50px;width: 40%;  
    margin-left:20%; 
    margin-right:30%;">
                
                  <TR style="border: 1px solid black;" >
                      <TD  style="border: 1px solid black;background-color:  rgb(12, 42, 95);color:rgb(87, 245, 38);text-align: center;"> <label for="name" >NAME </label></TD>
                      <TD style="border: 1px solid black;background-color:  rgb(12, 42, 95);text-align: center;"> <textarea id="name" name="name" rows="1" cols="50" required></textarea></TD>
              </TR>
             
              <TR style="border: 1px solid black;">
                  <TD  style="border: 1px solid black;background-color:  rgb(12, 42, 95);color:rgb(87, 245, 38);text-align: center;"> <label for="email">EMAIL ADDRESS</label></TD>
                  <TD style="border: 1px solid black;background-color:  rgb(12, 42, 95);text-align: center;"> <textarea id="email"  name="email" rows="1" cols="50" required></textarea></TD>
              </TR>
             
              <TR style="border: 1px solid black;">
                  <TD  style="border: 1px solid black;background-color:  rgb(12, 42, 95);color:rgb(87, 245, 38);text-align: center;"> <label for="website">WEBSITE</label></TD>
                <TD  style="border: 1px solid black;background-color:  rgb(12, 42, 95);text-align: center;"><textarea id="website"  name="website" rows="1" cols="50" required></textarea></TD>
             </TR>
              
              <TR style="border: 1px solid black;">
                  <TD  style="border: 1px solid black;background-color:  rgb(12, 42, 95);color:rgb(87, 245, 38);text-align: center;"><label for="message">YOUR MESSAGE</label></TD>
                  <TD  style="border: 1px solid black;background-color:  rgb(12, 42, 95);text-align: center;"> <textarea id="message" name="message" rows="3" cols="50" required></textarea></TD>
              </TR>
              </table>
                <br>
                <button style="font-size:25px;align-content: center;border: 1px solid black;color:rgb(87, 245, 38);text-align: center;" type="submit">SEND</button> 
          </FORM>
           
                </div>
       </div>
    
                
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
            </div>  
            <div class="col-lg-3 col-md-3 col-sm-3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <div class="single-footer-widget">
                <div class="section-heading">
                <h2>Our Service</h2>
                <div class="line"></div>
              </div>
              <ul class="footer-service">
                <li><a href="#"><span class="fa fa-check"></span>Service 1</a></li>
                <li><a href="#"><span class="fa fa-check"></span>Service 2</a></li>
                <li><a href="#"><span class="fa fa-check"></span>Service 3</a></li>
                <li><a href="#"><span class="fa fa-check"></span>Service 4</a></li>
                <li><a href="#"><span class="fa fa-check"></span>Service 5</a></li>
              </ul>
              </div>
            </div> 
                     
         
          <div class="col-lg-3 col-md-3 col-sm-3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
