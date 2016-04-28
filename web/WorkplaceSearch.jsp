<%-- 
    Document   : WorkplaceSearch
    Created on : 21 Mar, 2016, 4:57:01 PM
    Author     : Tanya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
              String cat=request.getParameter("cat");
              String type=request.getParameter("type");
              Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "tanyabhardwaj");
              String query="select workplace.workplace_id, workplace_name, workplace_type,workplace_spec,branch_state,branch_city from workplace inner join branch on branch.workplace_id=workplace.workplace_id where workplace_type=? and workplace_spec=? ";
              PreparedStatement GetDocInfo=conn.prepareStatement(query);
                GetDocInfo.setString(1, type);
                GetDocInfo.setString(2, cat);
                
                
              
              //DocInfo.first();
              Connection wconn=DriverManager.getConnection("jdbc:mysql://localhost/world", "root", "tanyabhardwaj");
              if(request.getParameter("state")!=null)
              {
                query+=" and branch_state=? ";
                GetDocInfo=conn.prepareStatement(query);
                GetDocInfo.setString(1, type);
                GetDocInfo.setString(2, cat);
                GetDocInfo.setString(3, request.getParameter("state"));
              }
              if(request.getParameter("city")!=null)
              {
                query+=" and branch_city=?";
                GetDocInfo=conn.prepareStatement(query);
                GetDocInfo.setString(1, type);
                GetDocInfo.setString(2, cat);
                GetDocInfo.setString(3, request.getParameter("city"));
              }
              
              ResultSet DocInfo=GetDocInfo.executeQuery();
    
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
              <%
/*                  Class.forName("com.mysql.jdbc.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "tanyabhardwaj");
       
      PreparedStatement getUser=conn.prepareStatement("Select branch_city,branch_area,branch_timing from ihs.branch where branch_city=?,branch_area and branch_timing=?");
            
      ResultSet users=getUser.executeQuery( );
  */    
                  %>
              
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
              <%
                    Statement getState=wconn.createStatement();
                    ResultSet states=getState.executeQuery("select District from City where CountryCode='IND'");
                    
                    %>
                
                     
                
                   <table>
                <tr>           
                    <td> <form action="WorkplaceSearch.jsp" method="get">
                            <input type="hidden" name="cat" value="<%=cat%>">
                            <input type="hidden" name="type" value="<%=type%>">
                            State:<select name="state">
                                <% while(states.next())
                            {
                               %>
               <option value="<%=states.getString("District")%>"><%=states.getString("District")%></option>
                            <% 
                            }%>
                        </select>
                        <button type="submit">Apply Filter</button>
                        </form>  </td>
             </TR>
        
             <tr style="border: 1px solid black">
                 <%
                    
                     PreparedStatement getCity=wconn.prepareStatement("select `Name` from City where District=?");
                    getCity.setString(1, request.getParameter("state"));
                    ResultSet cities=getCity.executeQuery();
                     %>
                 <td><form action="WorkplaceSearch.jsp" method="get"> 
                         <input type="hidden" name="cat" value="<%=cat%>">
                         <input type="hidden" name="type" value="<%=type%>">
                     CITY: <select name="city">
                            <% while(cities.next())
                            {
                               %>
                               <option value="<%=cities.getString(1)%>"><%=cities.getString(1)%></option>
                            <% 
                            }%>
               
                     </select>
                            <button type="submit">Apply Filter</button>
                     </form>  </td> 
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
                     <form method="get" action="DocSearch.jsp">
     
    
        <input type="text" name="doc_fee">
      
        <input type="submit" data-inline="true" value="Submit">
        <p>The range slider can be useful for allowing users to select a specific price range when browsing products.</p>
      </form>
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
            <%
                while(DocInfo.next())
                {
                    
                    %>
                   <div class="article"> 
                
                     <table style="width:100%">
                          <tr style="border: 1px solid black">
                              <td><a href="AboutHosp.jsp"><img width="90px" height="90px" src="icons/hos.png" /> </a>
               
                    </td> 
                                <td>NAME: <%=DocInfo.getString("workplace_name")%> </td>                       </tr>
          
                 <tr style="border: 1px solid black">
                
                    <td>TYPE: <%=DocInfo.getString("workplace_type")%></TD>
                 </tr>
                    <tr style="border: 1px solid black">
                     <td> SPECIALITY: 
               <%=DocInfo.getString("workplace_spec")%>
                    </td>
                    
           </tr>
                
                     </TABLE>
                    <BR>
                    
                    <% if(type.equals("hospital"))
                    {
                    %>
                    <form action="AboutHosp.jsp" method="post">
                        <input type="hidden" name="workplace_id" value="<%=DocInfo.getString("workplace.workplace_id")%>">
                     <button style="font-size:25px" type="submit">SEE MORE</button>
                    </form>
                    <%
                        
                    }else
                    {
                        %>
                        <FORM ACTION="AboutLab.jsp" method="post">
                         <input type="hidden" name="workplace_id" value="<%=DocInfo.getString("workplace.workplace_id")%>">
                     <button style="font-size:25px" type="submit">SEE MORE</button>
                    </form>
                    <%
                    }
                    %>
                    
               
            </div>
            <%
                }
                %>
           
            
        </div>
                <div class="clr"></div>
    </div>
            </div>
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
