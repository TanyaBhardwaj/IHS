<%-- 
    Document   : SpecDoctors
    Created on : 22 Mar, 2016, 1:58:57 AM
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
        table{
            border-spacing: 30px;
        }
        td{
             border: solid 1px black;
             padding: 10px;
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
            <br>
            <br>
             <form action="BookAppointment.jsp" method="post">
            <button style="font-size:25px" type="submit">BOOK APPOINTMENT</button>
             </FORM>
            <br>
            <form action="DocFeedback.jsp" method="post">
            <button style="font-size:25px" type="submit">READ FEEDBACK</button>
             </FORM>
        <div class="clr"></div>
        <div class="gadget">
            
          <div class="clr"></div>
          <div class="sb_menu">
             
           
        </div>
        
      </div>
        </div>
        <div class="mainbar">
            <div class="article"> 
                <div>
                     <table>
                          <tr style="border: 1px solid black">
                               <td><a href=""><img width="90px" height="90px" src="icons/doc1.png" /> </a>
               
                    </td> 
                       
                    <td> <textarea id="message" name="ABOUT YOURSELF" rows="2" cols="40"></textarea> </td>
           </tr>
               
                 <tr style="border: 1px solid black">
                 <td>NAME: 
               
                    </td> 
                    <td><textarea id="message" name="name" rows="1" cols="40"></textarea>
           </tr>
           </tr>
                 <tr style="border: 1px solid black">
                     <td> QUALIFICATION: 
               
                    </td>
                    <td><textarea id="message" name="qualification" rows="2" cols="40"></textarea>
           </tr>
           </tr>
                 <tr style="border: 1px solid black">
                 <td>SPECIALIZATION: 
               
                    </td> 
                    <td><textarea id="message" name="specialization" rows="2" cols="40"></textarea>
           </tr>
           <tr style="border: 1px solid black">
                 <td>EXPERIENCE: 
               
                    </td> 
                    <td><textarea id="message" name="experience" rows="2" cols="40"></textarea>
           </tr>
           <tr style="border: 1px solid black">
                 <td>FEES: 
               
                    </td> 
                    <td><textarea id="message" name="fees" rows="1" cols="40"></textarea>
           </tr>
           
           </table>
                    
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
        </div>
          </div>
    </body>
</html>
