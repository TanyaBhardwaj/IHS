<%-- 
    Document   : WorkplaceSearch
    Created on : 21 Mar, 2016, 4:57:01 PM
    Author     : Tanya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Indian Health Services</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="image/icon" href="images/favicon.ico"/>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
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


<%
           
            
           
    Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "sr71xb35");          
    String cat=request.getParameter("cat");
    String type=request.getParameter("type");
              String term="";
              String query="select workplace.workplace_id, workplace_name, workplace_type,workplace_spec,branch_state,branch_city from workplace inner join branch on branch.workplace_id=workplace.workplace_id where workplace_name LIKE ? and workplace_type=? and workplace_spec=? ";
              if(request.getParameter("editbox_search")!=null)
              {
                  term=request.getParameter("editbox_search");
                  PreparedStatement findrecent=conn.prepareStatement("select search_frequency from recent_search where search_term=?");
                  findrecent.setString(1, term);
                  ResultSet searches=findrecent.executeQuery();
                  if(!searches.first())
                  {
                  PreparedStatement addtorecent=conn.prepareStatement("insert into recent_search(search_term,search_frequency) values(?,?)");
                  addtorecent.setString(1, term);
                  addtorecent.setInt(2, 1);
                  addtorecent.executeUpdate();
                  }
                  else
                  {
                      PreparedStatement addtorecent=conn.prepareStatement("update recent_search set search_frequency=?, search_date=CURRENT_TIMESTAMP where search_term=?");
                  addtorecent.setInt(1, searches.getInt("search_frequency")+1);
                  addtorecent.setString(2, term);
                  addtorecent.executeUpdate();
                  }
                  
              }
                
               query="select workplace_id,workplace_name,workplace_type,workplace_spec from workplace where workplace_category=? ";
            PreparedStatement GetDocInfo=conn.prepareStatement(query);
          
              //  GetDocInfo.setString(1, "%"+term+"%");
                GetDocInfo.setString(1, type);
                GetDocInfo.setString(2,cat);
                
              
              //DocInfo.first();
              Connection wconn=DriverManager.getConnection("jdbc:mysql://localhost/world", "root", "sr71xb35");
              if(request.getParameter("state")!=null)
              {
                query+=" and branch_state=? ";
                GetDocInfo=conn.prepareStatement(query);
                GetDocInfo.setString(1, "%"+term+"%");
                GetDocInfo.setString(2, type);
                GetDocInfo.setString(3, cat);
                GetDocInfo.setString(4, request.getParameter("state"));
              }
              if(request.getParameter("city")!=null)
              {
                query+=" and branch_city=?";
                GetDocInfo=conn.prepareStatement(query);
                GetDocInfo.setString(1, "%"+term+"%");
                GetDocInfo.setString(2, type);
                GetDocInfo.setString(3, cat);
                GetDocInfo.setString(4, request.getParameter("city"));
              }
             
              ResultSet DocInfo=GetDocInfo.executeQuery();
    
%>

    <style>
         .main{
            background-image: none;
            background-color: black;
        }
        table{
            border: 1px solid black;
            border-spacing: 20px;
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
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbar">
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
        
          <li><a href="contact.jsp"><span>CONTACTUS</span></a></li>
        
              <li><a href="aboutus.jsp"><span>ABOUT US</span></a></li>
             <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Service <span class="fa fa-angle-down"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="FirstAid.jsp">First Aid</a></li>
                    <li><a href="Diseases,jsp">Diseases</a></li>
                    <li><a href="Fruits.jsp">Fruits and their benefits</a></li>
                  </ul>
                </li>
            <li><a href="UserProfile.jsp">PROFILE</a></li>
                <li><a href="login.jsp"><span>LOGOUT</span></a></li>
          </UL>
                </div>
          </div>
        </nav>
      </div>
</header>
    <div class="row">  
                <div class="single-top-feature">
              <%
/*                  Class.forName("com.mysql.jdbc.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "sr71xb35");
       
      PreparedStatement getUser=conn.prepareStatement("Select branch_city,branch_area,branch_timing from ihs.branch where branch_city=?,branch_area and branch_timing=?");
            
      ResultSet users=getUser.executeQuery( );
  */    
                  %>
              
     
          <h1><a href="index.jsp"><span></span> <small style="color:blue;"></small></a></h1>
   
            <form id="formsearch" name="formsearch" method="post" action="#">
           
            <input name="editbox_search" placeholder="Search our ste:" type="text" />
      
            <button>Search</button>
          </form>
    
              <%
                    Statement getState=wconn.createStatement();
                    ResultSet states=getState.executeQuery("select District from City where CountryCode='IND'");
                    
                    %>
                
                     
                
                  <table style="width:250px;height:350px;">
                <tr >           
                    <td>  <form action="DocSearch.jsp" method="get"> 
                         <input type="hidden" name="cat" value="<%=cat%>">
                         STATE: &nbsp;<select name="state">
                            <% while(states.next())
                            {
                               %>
                               <option value="<%=states.getString("District")%>"><%=states.getString("District")%></option>
                            <% 
                            }%>
                                </select> 
                                <br> 
                        <button type="submit">Apply Filter</button>
                        
                   </form>   </td>
                   
             </TR>
        
             <tr style="border: 1px solid black">
                 <%
                    
                     PreparedStatement getCity=wconn.prepareStatement("select `Name` from City where District=?");
                    getCity.setString(1, request.getParameter("state"));
                    ResultSet cities=getCity.executeQuery();
                     %>
                 <td><form action="DocSearch.jsp?cat=allergist" method="get"> 
                         <input type="hidden" name="cat" value="<%=cat%>">
                     CITY: <select name="city">
                            <% while(cities.next())
                            {
                               %>
                               <option value="<%=cities.getString(1)%>"><%=cities.getString(1)%></option>
                            <% 
                            }%>
               
                     </select> <br> 
                            <button type="submit">Apply Filter</button>
                     </form>  </td> 
           </tr>
                
           
                 <tr style="border: 1px solid black">
                 <td>FEASIBLE FEES: 
                     <form method="get" action="DocSearch.jsp">
     
    
        <input type="text" name="doc_fee">
        <br> 
        <input type="submit" data-inline="true" value="Submit">
        <p> </p>
      </form>
                    </td> 
           </tr>
           <br/>
           </table>
            
           
            
       
    
              <table  style="width:600px;height:150px;margin-left: 300px;margin-top:-350px;">
                            <%
                while(DocInfo.next())
                {
                    
                    %>
                  
                
                    
                          <tr style="border: 1px solid black">
                              <td><a href="AboutHosp.jsp"><img width="90px" height="90px" src="icons/hos.png" /> </a>
               
                    </td> 
                                <td>NAME: </td>
                                <td> <%=DocInfo.getString("workplace_name")%> </td>                       </tr>
          
                 <tr style="border: 1px solid black">
                
                     <td>TYPE:</td> <td> <%=DocInfo.getString("workplace_type")%></TD>
                 </tr>
                    <tr style="border: 1px solid black">
                        <td> SPECIALITY: </td>
                        <td>   <%=DocInfo.getString("workplace_spec")%>
                    </td>
                    
           </tr>
                
                     
           <tr>
                    
               <td>     <% if(type.equals("hospital"))
                    {
                    %>
                    <form action="AboutHosp.jsp" method="post">
                        <input type="hidden" name="workplace_id" value="<%=DocInfo.getString("workplace.workplace_id")%>">
                     <button style="font-size:10px" type="submit">SEE MORE</button>
                    </form>
                    <%
                        
                    }else
                    {
                        %>
                        <FORM ACTION="AboutLab.jsp" method="post">
                         <input type="hidden" name="workplace_id" value="<%=DocInfo.getString("workplace.workplace_id")%>">
                     <button style="font-size:10px" type="submit">SEE MORE</button>
                        
                    <%
                    }
                    %>
                    </form> </td> </tr>
          
            <%
                }
%> 
              </table>
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
