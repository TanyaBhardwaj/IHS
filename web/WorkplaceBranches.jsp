<%-- 
    Document   : WorkplaceBranches
    Created on : 22 Mar, 2016, 1:50:23 AM
    Author     : Tanya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<%
            
              String workplaceid=request.getSession().getAttribute("workplace_id").toString();
              Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "sr71xb35");
              String query="select branch_state, branch_city,branch_area,branch_contact,branch_timing,branch_photo,branch_address from branch where workplace_id=? ";
              PreparedStatement GetDocInfo=conn.prepareStatement(query);
               
                GetDocInfo.setString(1, workplaceid);
                ResultSet DocInfo=GetDocInfo.executeQuery();
                %>
    <style>
         .main{
            background-image: none;
            background-color: black;
        }
        table{
            border-spacing: 30px;
        }
        td{
             border: solid 1px black;
             padding: 10px;
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
          <li><a href="login.jsp"><span>LOGIN</span></a></li>
          <li><a href="register.jsp"><span>REGISTER</span></a></li>
          <li><a href="contact.jsp"><span>CONTACT US</span></a></li>
       
              <li><a href="aboutus.jsp"><span>ABOUT US</span></a></li>
              <li>  <a href="#"><span>FIRST AID</span></a></li>
              <li>    <a href="#"><span>DISEASES</span></a></li>
              <li> <a href="Feedback.jsp"><span>FEEDBACK</span></a></li>
          </UL>
              
         </div>
          </div>
        </nav>
      </div>
</header>
       <div class="row">  
                <div class="single-top-feature">
         
       
                 
                      
     
          <h1><a href="index.jsp"><span></span> <small style="color:blue;"></small></a></h1>
          <br>
          <br>
          <br>
          <br>
     <div class="article">
            <form action="AddBranch" method="post">
                State <input type="text" name="branch_state"><br>
                City <input type="text" name="branch_city"><br>
                Area <input type="text" name="branch_area"><br>
                Contact <input type="text" name="branch_contact"><br>
                Timing <input type="text" name="branch_timing"><br>
                <button type="submit">Add</button>
                
            </form>
     </div>
         <%
                while(DocInfo.next())
                {
                 %>
            <div class="article"> 
                <div>                            <table style="width:100%">
                          <tr style="border: 1px solid black">
                              <td><a href="WorkplaceBranches.jsp"><img width="90px" height="90px" src="icons/hos.png" /> </a>
               
                    </td> 
                                                   </tr>
          
                 <tr style="border: 1px solid black">
                
                    <td>STATE: <%=DocInfo.getString("branch_state")%></TD>
                 </tr>
                    <tr style="border: 1px solid black">
                     <td> CITY: 
               <%=DocInfo.getString("branch_city")%>
                    </td>
                     <td> CITY: 
               <%=DocInfo.getString("branch_area")%>
                    </td>
                    
           </tr>
           <tr><td>CONTACT: <%=DocInfo.getString("branch_contact")%> </td>
               <td>
                   TIMING: <%=DocInfo.getString("branch_timing")%> </td>
               </td></tr> 
                 
           
           </table>
                     
               
         <%   
                }
            %>
        </div>
                <div class="clr"></div>
             
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
            <div class="col-lg-3 col-md-3 col-sm-3">
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
            <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="single-footer-widget">
                <div class="section-heading">
                <h2>Tags</h2>
                <div class="line"></div>
              </div>
                <ul class="tag-nav">
                  <li><a href="#">Dental</a></li>
                  <li><a href="#">Surgery</a></li>
                  <li><a href="#">Pediatric</a></li>
                  <li><a href="#">Cardiac</a></li>
                  <li><a href="#">Ophthalmology</a></li>
                  <li><a href="#">Diabetes</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="single-footer-widget">
                <div class="section-heading">
                <h2>Contact Info</h2>
                <div class="line"></div>
              </div>
              <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.</p>
              <address class="contact-info">
                <p><span class="fa fa-home"></span>305 Intergraph Way
                Madison, AL 35758, USA</p>
                <p><span class="fa fa-phone"></span>1.256.730.2000</p>
                <p><span class="fa fa-envelope"></span>info@wpfmedinova.com</p>
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
              <p>&copy; Copyright 2015 <a href="index.html">WpF Medinova</a></p>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="footer-social">              
                <a href="#"><span class="fa fa-facebook"></span></a>
                <a href="#"><span class="fa fa-twitter"></span></a>
                <a href="#"><span class="fa fa-google-plus"></span></a>
                <a href="#"><span class="fa fa-linkedin"></span></a>     
            </div>
          </div>
        </div>
        </div>
      </div>
      <!-- Start Footer Bottom -->
      <div class="footer-bottom">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <p>Design & Developed By <a rel="nofollow" href="http://www.wpfreeware.com/">WpF Freeware</a></p>
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
