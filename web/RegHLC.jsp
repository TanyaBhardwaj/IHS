<%-- 
    Document   : RegHospital
    Created on : 14 Mar, 2016, 2:22:07 PM
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
                 
    <form action="RegWorkplace" method="post">  
       <table>
           <tr>
               <th>TYPE:</th>
               <td> <select name="Wtype">
               <option value="hospital">Hospital</option>
                <option value="lab">Laboratory</option>
                <option value="clinic">Clinic</option>
                   </select>  </td> 
           </tr>
           <tr>
               <th> NAME:</th>
               <td><input type="text" name="workname"><br><br></td>
           </tr>
           <tr>
           <th>SPECIALIZATION</th>
           <td> <input type="text" name="Email"><br><br></td>
           </tr>
           <tr>
               <th>EMAIL</th>
               <td><input type="text" name="RecoveryEmail"><br><br></td>
           </tr>
           <tr>
               <th>CONTACT NO:</th>
               <td><input type="number" name="Contact"></br><br></td>
           </tr>
           <tr>
               <th><b>PASSWORD</b></th>
               <td><input type="password" name="Password"></br></br></td>
           </tr>
           <tr>
               <th> RETYPE PASSWORD</th>
               <td><input type="password" name="RPassword"> </br></br></td>
           </tr>
           <br>
           <br>
       </table>
      <button style="font-size:30px" type="submit">SUBMIT</button>
   <button style="font-size:30px" type="reset">CANCEL</button>
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

    </body>
</html>
