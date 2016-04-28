<%-- 
    Document   : WebsiteFeedbackGiven
    Created on : 28 Apr, 2016, 4:20:22 PM
    Author     : Tanya
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
  <%
              session=request.getSession();
                String workplacefeedback=request.getParameter("user_id");
              Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "tanyabhardwaj");
              String query="insert into feedback_website(user_id,feedback) value(?,?) ";
              PreparedStatement AddUser=conn.prepareStatement(query);
                AddUser.setString(1, session.getAttribute("user_id").toString());
                 AddUser.setString(2, request.getParameter("comments"));
                AddUser.executeUpdate();
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
              
          
            <li><a href=""></a></li>
             <li><a href=""></a></li>
             <li><a href="#"</a></li>
          </ul>
         
        </div>
        
      </div>
        <div class="mainbar">
            <div class="article"> 
                <div>
                    <h1 style="color:black; ">THANKYOU USER!!!</H1>
                    <BR>
                    <BR>
                    <h2 style=" text-align: center; color:lightblueblue;  ">YOUR</h2>
                     <h2 style="text-align: center; color:lightblueblue">FEEDBACK </h2>
                      <h2 style="text-align: center; color:lightblueblue">WILL HELP US PROVIDE </h2>
                       <h2 style="text-align: center; color:lightblueblue">BETTER SERVICE IN FUTURE </h2>
                      <BR>
                      <BR>
                      <BR>
                      <form action="index.jsp" method="post">
                           <button style="font-size:30px" type="submit">CONTINUE YOUR SEARCH</button>
                            <button style="font-size:30px" type="submit">LOGOUT</button>
                           <BR>
                           <BR>
                        
                      </form>
                   </div>
            </div>
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
