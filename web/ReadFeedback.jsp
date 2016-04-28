<%-- 
    Document   : ReadHospFeedback
    Created on : 21 Apr, 2016, 4:10:57 PM
    Author     : Tanya
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Indian Health Services</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
  <%
              session=request.getSession();
                String workplacefeedback=request.getParameter("workplace_id");
              Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "tanyabhardwaj");
              String query="select user_name,user_photo,feedback from user_feedback inner join user on user.user_id=user_feedback.user_id where workplace_id=? ";
              PreparedStatement AddUser=conn.prepareStatement(query);
                AddUser.setString(1,workplacefeedback);
                ResultSet workfeedback=AddUser.executeQuery();
                  %> 
<style>
         .main{
         background-image: none;
        
          background-color: black;
        }
    </style>
    </head>
    <body>
        <div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.jsp"><span>HOME</span></a></li>
          <li><a href="login.jsp"><span>LOGIN</span></a></li>
          <li><a href="register.jsp"><span>REGISTER</span></a></li>
          <li><a href="contact.jsp"><span>CONTACT US</span></a></li>
        </ul>
           <br>
          <ul>
              <li><a href="aboutus.jsp"><span>ABOUT US</span></a></li>
              <li>  <a href="#"><span>FIRST AID</span></a></li>
              <li>    <a href="#"><span>DISEASES</span></a></li>
              <li> <a href="Feedback.jsp"><span>FEEDBACK</span></a></li>
          </UL>
      </div>
      <div class="logo">
          <h1><a href="index.jsp"><span>INDIAN HEALTH SERVICES</span> <small style="color:blue;">HELPING MANKIND</small></a></h1>
      </div>
      <div class="clr"></div>
    </div>
  </div>
            <div class="content">
    <div class="content_resize">
        <div class="sidebar">
        <div class="clr"></div>
        <div class="gadget">
            <h2 class="star"> <span></span> </h2>
          <div class="clr"></div>
          <ul class="sb_menu">
           
              <li><a href=""><span></span></a></li>
              <li>  <a href="#"><span></span></a></li>
              <li>    <a href="#"><span></span></a></li>
              <li> <a href=""><span></span></a></li>
          </UL>
        </div>
        
      </div>
        <div class="mainbar">
            <% while(workfeedback.next())
            {
            %>
            <div class="article"> 
                 
                 
                    <table>
                        <tr>
                            <td><%
                               /* String imgDataBase64="";
                                Blob image=workfeedback.getBlob("user_photo");
                                if((int)image.length()>0)
                                {
                byte [] imgData=image.getBytes(1, (int)image.length());
                 imgDataBase64=new String(Base64.getEncoder().encode(imgData)); 
                                }
                                else
                                {
                                    
                                }*/
                                %>
                                <!--<img width="100" height="100" src="data:image/png;base64," alt="img"> --></td>
                            <td> USERNAME: <%=workfeedback.getString("user_name")%></td>
                        </tr>                   
  <tr>                  
      <th>COMMENTS:</th>
      <td><p><%=workfeedback.getString("feedback")%></p> </td>
  </tr>
  
   <br>
   <br>
   </table>
                     <button style="font-size:30px" type="submit">POST</button>
                 
                     <BR>
                   
                     
              
            </div>
            <%    
            }%>
            
        </div>
          
        
      <div class="clr"></div>
      <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
      <p class="rf">Design by Dream <a href="http://www.dreamtemplate.com/">Web Templates</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
  
        </div>
    </body>
</html>
