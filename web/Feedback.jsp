<%-- 
    Document   : Feedback
    Created on : 17 Mar, 2016, 11:30:46 PM
    Author     : Tanya
--%>

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
          <h1><a href="index.html"><span>INDIAN HEALTH SERVICES</span> <small style="color:blue;">HELPING MANKIND</small></a></h1>
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
            <div class="article"> 
                 
                 <form action="RegUser" method="post">  
                    <table>
                        <tr>                                          
                            <th>NAME:</th>
                            <td> <input type="text" name="name"><br><br></td>
                             </tr>
  <tr>                  
      <th>HOW WAS YOUR EXPERIENCE:</th>
      <td><input type="text" name="experience"><br><br></td>
  </tr>
  <tr>
      <th>ANY COMPLAINTS?</th>
      <td><input type="text" name="complaint"><br></br></td>
  </tr>
  <tr>
      <th>ANY RECOMMENDATIONS?</th>
      <td><input type="password" name="recommendation"><br><br></td>
  </tr>
  <tr>
      <th>RATE OUR WEBSITE:</th>
      <td><input type="password" name="rate"><br><br></td>
   </tr>
   <br>
   <br>
   </table>
                     <BR>
  
                     <button style="font-size:30px" type="submit">POST</button>
</form>                 
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
