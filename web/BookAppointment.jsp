<%-- 
    Document   : BookAppointment
    Created on : 22 Mar, 2016, 11:57:13 AM
    Author     : Tanya
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
    <style>
         .main{
            background-image: none;
            background-color: black;
        }
        table{
             border: solid 1px black;
        }
         h2{
             border: solid 1px black;
        }
    </style>
    <%
        
         Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "tanyabhardwaj");
            Calendar cal=Calendar.getInstance();
            int i=0;
        %>
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
             <li><a href="#"></a></li>
          </ul>
         
        </div>
        
      </div>
        <div class="mainbar">
            <div class="article"> 
                <table>
            <tr>`
            <th>DATE</th><th>MORNING</th><th>AFTERNOON</th><th>EVENING</th>
            </tr>
            <% 
                for(i=0;i<15;i++)
                {
                    cal.add(Calendar.DAY_OF_MONTH, i);
                    SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
                        
                
            %>
            <tr>
                <td>
                    <% 
                    
            out.println(format1.format(cal.getTime()));
                    %>
                </td><td>
                    <table>
                        <% PreparedStatement getmslots=conn.prepareStatement("select slot_id,start_time,end_time from doctor_slot where doctor_id=? and slot_status='morning' and slot_id NOT IN (select slot_id from appointments where appointment_date=?) ");
            getmslots.setString(1, "1");
            getmslots.setDate(2, new java.sql.Date(cal.getTimeInMillis()));
            ResultSet mslots=getmslots.executeQuery();
                            while(mslots.next())
                        { 
                           %>
                           <tr>
                               <td><%=mslots.getString("start_time")%></td>
                               <td><%=mslots.getString("end_time")%></td>
                               
                                       <td><form action="AppointmentServlet">
                                               <input type="hidden" name="slot_id" value="<%=mslots.getString("slot_id")%>">
                                               <input type="hidden" name="appointment_date" value="<%=cal.getTimeInMillis()%>">
                                               <button>BOOK</button>
                                   </form>
                                   </td>
                        </tr>
                        <% 
                        }%>
                        
                        
                    </table>
                </td>
                <td>
                    <table>
                        <% PreparedStatement getaslots=conn.prepareStatement("select slot_id,start_time,end_time from doctor_slot where doctor_id=? and slot_status='afternoon' and slot_id NOT IN (select slot_id from appointments where appointment_date=?) ");
            getaslots.setString(1, "1");
            getaslots.setDate(2, new java.sql.Date(cal.getTimeInMillis()));
            ResultSet aslots=getaslots.executeQuery();
                            while(aslots.next())
                        { 
                           %>
                           <tr>
                               <td><%=aslots.getString("start_time")%></td>
                               <td><%=aslots.getString("end_time")%></td>
                               
                                       <td><form action="AppointmentServlet">
                                               <input type="hidden" name="slot_id" value="<%=aslots.getString("slot_id")%>">
                                               <input type="hidden" name="appointment_date" value="<%=cal.getTimeInMillis()%>">
                                               <button>BOOK</button>
                                   </form>
                                   </td>
                        </tr>
                        <% 
                        }%>
                        
                        
                    </table>
                </td>
                <td>
                    <table>
                        <% PreparedStatement geteslots=conn.prepareStatement("select slot_id,start_time,end_time from doctor_slot where doctor_id=? and slot_status='evening' and slot_id NOT IN (select slot_id from appointments where appointment_date=?) ");
            geteslots.setString(1, "1");
            geteslots.setDate(2, new java.sql.Date(cal.getTimeInMillis()));
            ResultSet eslots=geteslots.executeQuery();
                            while(eslots.next())
                        { 
                           %>
                           <tr>
                               <td><%=eslots.getString("start_time")%></td>
                               <td><%=eslots.getString("end_time")%></td>
                               
                                       <td><form action="AppointmentServlet">
                                               <input type="hidden" name="slot_id" value="<%=eslots.getString("slot_id")%>">
                                               <input type="hidden" name="appointment_date" value="<%=cal.getTimeInMillis()%>">
                                               <button>BOOK</button>
                                   </form>
                                   </td>
                        </tr>
                        <% 
                        }%>
                        
                        
                    </table>
                </td>
            </tr>
            <% } %>
                
           </table>
                <BR>
                <BR>
                <div>
                <h2 style=" text-align: center; color:black;  ">RS.100 EXTRA FOR ONLINE BOOKING </h2>
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
