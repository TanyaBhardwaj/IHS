<%-- 
    Document   : DoctorProfile
    Created on : 15 Mar, 2016, 11:34:59 PM
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
          <li class="active"><a href="index.jsp"><span>Home Page</span></a></li>
          <li><a href="Login.jsp"><span>Login</span></a></li>
          <li><a href="Register.jsp"><span>Register</span></a></li>
          <li><a href="Contact.html"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="logo">
          <h1><a href="index.html"><span>INDIAN HEALTH SERVICES</span> <small style="color:blue;">HELPING MANKIND</small></a></h1>
      </div>
      <div class="clr"></div>
    </div>
  </div>
            <div class="content">
    <div class="content_resize">
        <div class="mainbar">
            <div class="article"> 
                  <h1 style="color:black; ">MY PROFILE</H1>
                    <BR>
                <form action="SubmitDProfile"method="post">         
  <table>
       <tr>
               <th>STATE:</th>
               <td> <select name="Type">
               <option value="karnataka">Karnataka</option>
                <option value="punjab">Punjab</option>
                <option value="Kerela">Kerela</option>
                   </select>  </td> 
           </tr>
           <br>
  <tr>
  <th>CITY:</th>
               <td> <select name="Type">
               <option value="Delhi">Delhi</option>
                <option value="Banglore">Banglore</option>
                <option value="Amritsar">Amritsar</option>
                <option value="Gurgaon">Gurgaon</option>
                <option value="Rajisthan">Rajisthan</option>
                <option value="Jalandhar">Jalandhar</option>
                <option value="Ludhiana">Ludhiana</option>
                
                   </select>  </td> 
  <br>
  </tr>
  <br>
  <tr>
  <th>QUALIFICATION: </th>
  <td><input type="text" name="RecoveryEmail"><br><br></td>
  </tr>
  <tr>
      <th>SPECIALIZATION:</th>
      <td><input type="number" name="Contact No"></br><br></td>
  </tr>
  <tr>
      <th>EXPERIENCE: </th>
      <td><input type="password" name="Password"> </br><br> </td>
  </tr>
 
   <br>
   <br>
  </table>
   <button style="font-size:25px" type="submit">SAVE</button>
   <button style="font-size:25px" type="submit">CANCEL</button> 
   <button style="font-size:25px" type="submit">ADD WORKPLACE</button>
   </form>      
          </div>
        </div>
          
        <div class="sidebar">
        <div class="clr"></div>
        <div class="gadget">
            <h2 class="star"> <span>MENU</span> </h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">HOME</a></li>
            <li><a href="#">ABOUT US</a></li>
            <li><a href="#">FIRST AID</a></li>
            <li><a href="#">DISEASES</a></li>
            <li><a href="#">CAREERS</a></li>
          </ul>
           
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
