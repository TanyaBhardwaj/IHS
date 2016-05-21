



4:59 PM
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
            
            int edit_flag=0;
              if(request.getParameter("edit_flag")!=null)
              {
                  edit_flag=Integer.parseInt(request.getParameter("edit_flag"));
              }
              Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "tanyabhardwaj");
              PreparedStatement GetDocInfo=conn.prepareStatement("select doc_city,doc_state,doc_qual,doc_spec,doc_exp,doc_about,doc_fee from doctor where doc_id=? ;");
              GetDocInfo.setString(1, request.getSession().getAttribute("doc_id").toString());
              ResultSet DocInfo=GetDocInfo.executeQuery();
              DocInfo.first();
    
%>
    <style>
         .main{
            background-image: none;
            background-color: black;
        }
         table{
            
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
	ajax.open("POST", "DocProfileServlet");
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
              <a class="navbar-brand" href="index.jsp"><i class="fa fa-heartbeat"></i> <span>Indian Health Services</span></a>              
              <!-- IMG BASED LOGO  -->
              <!--  <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>   -->                    
            </div>
            <div id="navbar" class="navbar-collapse collapse">
        <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
          <li class="active"><a href="index.jsp"><span>HOME</span></a></li>
         
          <li><a href="contact.jsp"><span>CONTACT US</span></a></li>
        
              <li><a href="aboutus.jsp"><span>ABOUT US</span></a></li>
             <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Service <span class="fa fa-angle-down"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="FirstAid.jsp">First Aid</a></li>
                    <li><a href="Diseases,jsp">Diseases</a></li>
                    <li><a href="Fruits.jsp">Fruits and their benefits</a></li>
                  </ul>
                </li>  
                <li><a href="Feedback.jsp">FEEDBACK</a></li>
                 <BR> <BR> <BR>
         
             <li><a href="DoctorWorkplaces.jsp">ADD WORKPLACES</a></li>
            
            <li><a href="ChangePassword.jsp">CHANGE PASSWORD</a></li>
      
            <li><a href="index.jsp">LOGOUT</a></li>
            
          </UL>
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
      <form  action="DoctorProfile.jsp" method="get">
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
                        PreparedStatement ShowPhoto=conn.prepareStatement("select doc_photo from doctor where doc_id=?");
      ShowPhoto.setInt(1, 1);
      ResultSet Photos=ShowPhoto.executeQuery();
      Photos.first();
      Blob image=Photos.getBlob("doc_photo");
      if(image!=null)
      {
       byte [] imgData=image.getBytes(1, (int)image.length());
        String imgDataBase64=new String(Base64.getEncoder().encode(imgData)); 
        out.println("<img src='data:image/png;base64,"+imgDataBase64+"' width=100 height=100 />");
      }
                    %>                
                                </td>
                                 <td>
                                     <% if(edit_flag==1)
                                     { %>
                                     <form action="DoctorAbout" method="post">
                                         <textarea rows="4" name="about_me" cols="30">
                                         <%=DocInfo.getString("doc_about") %>
                        </textarea>
                        <button  style=" font-size:12px; width:120px;
            height:30px;" type="submit">Save About Me</button>
                                     </form>
                                 <% }
                                    else
                                    {
                                 %>
                                 <p><%=DocInfo.getString("doc_about") %></p>
                                     <%
}
%></td>
                                    
       </tr>
                        </table>
               <% if(edit_flag==1)
               { %>
              
               
               
               <form action="UpdateDoc" method="post">         
  <table>
    
        <tr style="border: 1px solid black">
               <td style="border: 1px solid black;width:250px;
               height:30px;text-align: center;"> STATE:<select name="state">
               <option value="<%=DocInfo.getString("doc_state")%>"><%=DocInfo.getString("doc_state")%></option>
                <option value="karnataka">Karnataka</option>
                <option value="punjab">Punjab</option>
                <option value="Kerela">Kerela</option>
                 <option value="Kerela">Tamil Nadu</option>
                  <option value="Kerela">Chandigarh</option>
                   <option value="Kerela">Andhra Pradhesh</option>
                    <option value="Kerela">Gujrat</option>
                    <option value="Kerela">Maharashtra</option>
                     <option value="Kerela">Jammu and Kashmir</option>
                     
                   </select>  </td> 
               <td style="border: 1px solid black;width:250px;
               height:30px;text-align: center;"> CITY:<select name="city">
               <option value="<%=DocInfo.getString("doc_city")%>"><%=DocInfo.getString("doc_city")%></option>
              <option value="Delhi">Delhi</option>
                <option value="Banglore">Bengaluru</option>
                <option value="Amritsar">Amritsar</option>
                <option value="Gurgaon">Gurgaon</option>
                <option value="Rajisthan">Rajisthan</option>
                <option value="Jalandhar">Jalandhar</option>
                <option value="Ludhiana">Ludhiana</option>
                <option value="Ludhiana">Kolkata</option>
                <option value="Ludhiana">Ghaziabad</option>
                <option value="Ludhiana">Mysore</option>
                <option value="Ludhiana">Koorg</option>
                 <option value="Ludhiana">Jammu and Kashmir</option>
                 
                
                   </select>  </td> 
        </tr>
  <br>
   <tr style="border: 1px solid black">
  <td style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">QUALIFICATION: </td>
  <td style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">  <textarea name="qual"  rows="4" cols="30">
            <%=DocInfo.getString("doc_qual") %>
                        </textarea></td>
  </tr>
   <tr style="border: 1px solid black">
      <td style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">SPECIALIZATION:</td>
       <td style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">  <textarea rows="4" name="spec" cols="30">
<%=DocInfo.getString("doc_spec") %>
                        </textarea> </td>
  </tr>
   <tr style="border: 1px solid black">
      <td style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">EXPERIENCE: </td>
       <td style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">  <textarea rows="4" name="exp" cols="30">
<%=DocInfo.getString("doc_exp") %>
                        </textarea> </td>
  </tr>
  </tr>
   <tr style="border: 1px solid black">
      <td style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">FEES: </td>
       <td style="border: 1px solid black;width:250px;
               height:30px;text-align: center;">  <textarea rows="2" name="fee" cols="30">
<%=DocInfo.getString("doc_fee") %>
                        </textarea> </td>
  </tr>
 
   <br>

  </table>
                    <BR>                
   <button style="font-size:25px" type="submit">SAVE</button>
   <button style="font-size:25px" type="submit">CANCEL</button> 
  
   </form>      
                        <% }
                            else
{
%>  </center>
<center>
  <table>
    
        <tr style="border: 1px solid black">
            <td  style="border: 1px solid black"> STATE: </td>
         <td ><label><%=DocInfo.getString("doc_state")%></label>
            </td> </tr> 
        <tr style="border: 1px solid black">
            <td  style="border: 1px solid black"> CITY: </td>
        <td><label><%=DocInfo.getString("doc_city")%></label>
                 </td> 
        </tr>

   <tr style="border: 1px solid black">
  <td  style="border: 1px solid black">QUALIFICATION: </td>
  <td  >  <label>
          <%=DocInfo.getString("doc_qual") %></label>
                        </td>
  </tr>
   <tr style="border: 1px solid black">
      <td  style="border: 1px solid black">SPECIALIZATION:</td>
      <td><label><%=DocInfo.getString("doc_spec") %> </label></td>
   </tr><tr style="border: 1px solid black">

       <td  style="border: 1px solid black">EXPERIENCE: </td>
       <td> <label> <%=DocInfo.getString("doc_exp") %> </label> </td>
  </tr>
 <tr style="border: 1px solid black">
      <td  style="border: 1px solid black">FEES: </td>
      <td  style="border: 1px solid black"><LABEL><%=DocInfo.getString("doc_fee") %> </LABEL></td>
  </tr>
   <br>

  </table>         </center>   <br>            
                        <%
}
                        %> <center>
 <form action="DoctorProfile.jsp" method="post">
     <table>
     <tr style="border: 1px solid black">
         <td  style="border: 1px solid black">  START TIME: </td>
        <td  style="border: 1px solid black"> <textarea rows="1" name="starttime" cols="10">
                      </textarea></td>
      
         </tr>
         <tr style="border: 1px solid black">
             
            <td  style="border: 1px solid black">  END TIME: </td>
        <td  style="border: 1px solid black"> <textarea rows="1" name="endtime" cols="10">
                      </textarea></td>
                      <td>
                          <select name="time">
  <option value="am">am</option>
  <option value="pm">pm</option>
                          </select>
                          </td>
  
</select>
                      </td>
         </tr>
           
     </table> 
         <button style="font-size:15px" type="submit">ADD SLOT</button>
 </form> </center>
 <%
     if(request.getParameter("starttime")!=null&&request.getParameter("endtime")!=null)
     {
         PreparedStatement addslot=conn.prepareStatement("insert into doctor_slot(doctor_id,start_time,end_time,slot_status) VALUES(?,?,?,?)");
         addslot.setString(1, request.getSession().getAttribute("doc_id").toString());
         addslot.setString(2, request.getParameter("starttime"));
         addslot.setString(3, request.getParameter("endtime"));
         addslot.setString(4, request.getParameter("time"));
         addslot.executeUpdate();
     }
     PreparedStatement getslots=conn.prepareStatement("select * from doctor_slot where doctor_id=?");
     getslots.setString(1, request.getSession().getAttribute("doc_id").toString());
     ResultSet slots=getslots.executeQuery();
     %>
     
     <center>
     <table>
         <%
     while(slots.next())
     {
     %>

             <tr style="border: 1px solid black">
                 <td  style="border: 1px solid black">SLOT ID </TD>
                 <TD  style="border: 1px solid black">START TIME </TD>
                 <TD  style="border: 1px solid black">END TIME </TD>
                 
             </tr>
             <TR>
                 <TD  style="border: 1px solid black"> <textarea> <%=slots.getString("start_time")%> </textarea> </td>
                 <td  style="border: 1px solid black"><textarea><%=slots.getString("end_time") %> </textarea> </td>
                 <td  style="border: 1px solid black"><textarea> <%=slots.getString("end_time") %> </textarea> </td>
                 <button style="font-size:15px; width:150px;
            height:35px;
            " type="submit">REMOVE SLOT</button>
                 <br> <br> </TR>
             <% } %>
     </table> </center>
                 
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
