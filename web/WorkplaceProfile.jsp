<%-- 
    Document   : WorkplaceProfile
    Created on : 15 Mar, 2016, 10:53:09 PM
    Author     : Tanya
--%>

<%@page import="java.sql.Blob"%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Indian Health Services</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
       <link href="css/style.css" rel="stylesheet" type="text/css" />
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
  

<%
             session=request.getSession(); 
    int edit_flag=0;
              if(request.getParameter("edit_flag")!=null)
              {
                  edit_flag=Integer.parseInt(request.getParameter("edit_flag"));
              }
              Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "tanyabhardwaj");
              PreparedStatement GetDocInfo=conn.prepareStatement("select workplace_name, workplace_email,workplace_type,workplace_ownership,workplace_spec,workplace_about,workplace_website from workplace where workplace_id=? ;");
               GetDocInfo.setString(1, session.getAttribute("workplace_id").toString());
              ResultSet DocInfo=GetDocInfo.executeQuery();
              DocInfo.first();
    
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
             
             padding: 10px;
        }
         th{
            
             padding: 10px;
        }
         button{
            width:120px;
            height:35px;
            font-size:20px;
        }
        </style>
          <!-- jQuery Library  -->
    <script src="js/jquery.js"></script> 
        <script>
             function _(el){
	return document.getElementById(el);
}
function uploadFile(){
	var file = _("file1").files[0];
	// alert(file.name+" | "+file.size+" | "+file.type);
	var formdata = new FormData();
	formdata.append("file", file);
	var ajax = new XMLHttpRequest();
	ajax.upload.addEventListener("progress", progressHandler, false);
	ajax.addEventListener("load", completeHandler, false);
	ajax.addEventListener("error", errorHandler, false);
	ajax.addEventListener("abort", abortHandler, false);
	ajax.open("POST", "WorkplaceProfileServlet");
	ajax.send(formdata);
}
function progressHandler(event){
	_("loaded_n_total").innerHTML = "Uploaded "+event.loaded+" bytes of "+event.total;
	var percent = (event.loaded / event.total) * 100;
	_("progressBar").value = Math.round(percent);
	_("status").innerHTML = Math.round(percent)+"% uploaded... please wait";
}
function completeHandler(event){
	_("status").innerHTML = event.target.responseText;
	_("progressBar").value = 0;
}
function errorHandler(event){
	_("status").innerHTML = "Upload Failed";
}
function abortHandler(event){
	_("status").innerHTML = "Upload Aborted";
}
    </script>
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
              <a class="navbar-brand" href="index.html"><i class="fa fa-heartbeat"></i> <span>Indian Health Services</span></a>              
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
            <li><a href="index.jsp">SEARCH</a></li>
           
          
              <BR> <BR> <BR>
         
            
            <li><a href="Feedback.jsp">FEEDBACK</a></li>
            <li><a href="ChangePassword.jsp">CHANGE PASSWORD</a></li>
            <li><a href="WorkplaceBranches.jsp">ADD BRANCHES</a></li>
            <li><a href="index.jsp">LOGOUT</a></li>
            
          </ul>
              
         
      </div>
          </div>
        </nav>
      </div>
</header>
     <div class="row">  
                <div class="single-top-feature">
                    <br>
                    <br>
                    <br>
                    <br> <br>
      <form  action="WorkplaceProfile.jsp" method="get">
                      <input type="hidden" name="edit_flag" value="1">
                        <button style="font-size:12px;margin-left:600px; width:140px;
              height:30px;" type="submit">EDIT YOUR PROFILE</button> 
         </form> <br>

                    <BR>
                    <BR>
                    <center>
                        <table>
                            <tr style="border: 1px solid black">
                                <td style="border: 1px solid black">
                                    <BR>
                                    <BR>
                                     <% if(edit_flag==1)
                                    {
                                     %>
                                                 <form id="upload_form" enctype="multipart/form-data" method="post">
                                    <input style="font-size: 12px; width:160px;
            height:30px;" type="file" name="file" id="file1"><BR>
  <input style="font-size: 12px; width:120px;
            height:30px;" type="button" value="UPLOAD PHOTO" onclick="uploadFile()">
  <progress id="progressBar" value="0" max="100" style="width:100px;"></progress>
  <h3 id="status"></h3>
  <p id="loaded_n_total"></p></form>
  <% } %>
                                </td>
                                <td>
                    <%
                      
                        PreparedStatement ShowPhoto=conn.prepareStatement("select workplace_photo from workplace where workplace_id=?");
      ShowPhoto.setInt(1, 1);
      ResultSet Photos=ShowPhoto.executeQuery();
   Photos.first();
      Blob image=Photos.getBlob("workplace_photo");
      if(image!=null)
      {
       byte [] imgData=image.getBytes(1, (int)image.length());
        String imgDataBase64=new String(Base64.getEncoder().encode(imgData)); 
        out.println("<img src='data:image/png;base64,"+imgDataBase64+"' width=100 height=100 />");
      }
                    %>                
                                </td>
                                 <td> 
                                  <%
                                      if(edit_flag==1)
                                     { %>

                         <form action="WorkplaceAbout" method="post">
                                         <textarea rows="4" name="about_me" cols="30">
                                         <%=DocInfo.getString("workplace_about") %>
                        </textarea>
                        <button style=" font-size:12px; width:120px;
            height:30px;" type="submit">Save About Me</button>
                                     </form>
                                 <% }
                                    else
                                    {
                                 %>
                                 <p><%=DocInfo.getString("workplace_about") %></p>
                                     <%
}
%></td>
                                    
       </tr>
                        </table>
               <% if(edit_flag==1)
               { %>
                   
                       
                          
                    
                <form action="UpdateWorkplace" method="post">         
  <table>
       
  <tr style="border: 1px solid black">
      <td  style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">TYPE: </td>
      <td  style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">
          <select name="type">
              <option value="hospital">Hospital</option>
              <option value="Clinic">Clinic</option>
              <option value="Lab">Lab</option>
          </select>
  
      </td>
  </tr>
   <tr style="border: 1px solid black">
      <td  style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">OWNERSHIP: </td>
      <td  style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">
          
  <input type="radio" name="ownership" value="government">GOVERNMENT
  <input type="radio" name="ownership" value="private">PRIVATE
 
      </td>
  </tr>
  
    <tr style="border: 1px solid black">
      <td  style="border: 1px solid black;width:250px;
            height:30px;text-align: center;">WEBSITE:</td>
       <td  style="border: 1px solid black;width:250px;
               height:30px;text-align: center;"><input type="text" name="website"></td>
  </tr>
  <br>
  </table>
                    <br>
   <button style="font-size:25px" type="submit">SAVE</button>
   <button style="font-size:25px" type="reset">CANCEL</button> 
   </form> 
                         <% }
                            else
{
                        %>
                    </center> <center>          <table>
       
                       
   <tr style="border: 1px solid black">
      <td  style="border: 1px solid black">TYPE:&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td>
          <label><%=DocInfo.getString("workplace_type")%>  </label> 
      </td>
  </tr>
  <tr style="border: 1px solid black">
      <td  style="border: 1px solid black">OWNERSHIP: &nbsp;&nbsp;&nbsp;&nbsp; </td>
      <td>
          <label><%=DocInfo.getString("workplace_ownership")%>  </label> 
      </td>
  </tr>
   
    <tr style="border: 1px solid black">
      <td  style="border: 1px solid black">WEBSITE: &nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td>  <a href="<%=DocInfo.getString("workplace_website")%>"></a> </td>
  </tr>
  <br> <br>
                         </table> </center>
                        <%
}
                        %> 
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
