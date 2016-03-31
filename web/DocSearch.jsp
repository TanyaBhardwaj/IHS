<%-- 
    Document   : DocSearch
    Created on : 21 Mar, 2016, 12:13:28 AM
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
            border: 1px solid black;
            border-spacing: 20px;
          
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
            <table>
                <tr>           
                    <td>CITY:<select name="Type">                   
                <option value="bangalore">BANGALORE</option>
                <option value="punjab">DELHI</option>
                <option value="kerela">KOLKATA</option>
                 <option value="punjab">MUMBAI</option>
                  <option value="punjab">PUNJAB</option>
                   </select>  </td> 
                   
             </TR>
        
             <tr style="border: 1px solid black">
                 <td> AREA: <select name="Type">
               <option value="k">k</option>
                <option value="l">P</option>
                <option value="m">l</option>
                <option value="n">l</option>
                <option value="o">l</option>
                <option value="p">l</option>
                <option value="q">l</option>
                <option value="r">l</option>
                <option value="s">l</option>
                <option value="t">l</option>
                   </select>  </td> 
           </tr>
                 <tr style="border: 1px solid black">
                 <td>DATE: 
               
                    </td> 
           </tr>
           </tr>
                 <tr style="border: 5px solid black">
                     <td> TIMINGS: 
               
                    </td> 
           </tr>
           </tr>
                 <tr style="border: 1px solid black">
                 <td>FEASIBLE FEES: 
               
                    </td> 
           </tr>
           <br>
           </table>
            
        <div class="clr"></div>
        <div class="gadget">
            
          <div class="clr"></div>
          <div class="sb_menu">
             
           
        </div>
        
      </div>
        </div>
        <div class="mainbar">
            <div class="article"> 
                
                     <table style="width:100%">
                          <tr style="border: 1px solid black">
                              <td><a href="AboutDoc.jsp"><img width="90px" height="90px" src="icons/doc1.png" /> </a>
               
                    </td> 
                       
                    <td>ABOUT YOURSELF:</td>
           </tr>
          
                 <tr style="border: 1px solid black">
                 <td>NAME: </td> 
                    <td>QUALIFICATION:</TD>
          
                    <tr style="border: 1px solid black">
                     <td> SPECIALIZATION: 
               
                    </td>
                    <td> EXPERIENCE: </TD>
           </tr>
           </tr>
                 <tr style="border: 1px solid black">
                 <td>SPECIALIZATION: 
               
                    </td> 
                    <TD>FEES: </TD>
           </tr>
           
           </table>
                    <br>
                    <FORM ACTION="BookAppointment.jsp" method="POST">
                     <button style="font-size:25px" type="submit">BOOK APPOINTMENTS</button>
                     <button style="font-size:25px" type="submit">SEE MORE</button>
                    </FORM>
                
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
   
