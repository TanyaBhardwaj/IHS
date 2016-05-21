<%-- 
    Document   : AdminDash
    Created on : 2 May, 2016, 5:36:07 PM
    Author     : Tanya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                border: 1px solid black;
                border-collapse: collapse;
            }
            td{
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <% 
     String name=request.getParameter("name");
            String email=request.getParameter("email");
             String website=request.getParameter("website");
              String message=request.getParameter("message");
            Class.forName("com.mysql.jdbc.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "sr71xb35");
       
      PreparedStatement getUser=conn.prepareStatement("Select contact_name,contact_email,contact_website,contact_message from contact"  );
       
      ResultSet queries=getUser.executeQuery();
     
        %>
        <table >
            <tr >
                        
                    <td>NAME  </td>
                    <td>EMAIL </td>
                    <td>WEBSITE  </td>
                    <td>QUERY  </td>
                      </tr>
            <%
                while(queries.next())
                {
                    %>
                      
                    <tr style="border: 1px solid black">
                        <td> <label> <%=queries.getString("contact_name")%> </label></td>
                        <td><label> <%=queries.getString("contact_email")%> </label> </td>
                     <td> <label>  <%=queries.getString("contact_website")%></label> </td>
                     <td><label> <%=queries.getString("contact_message")%></label> </td>
                      
           </tr>
       
                
           
            <%
                }
                %>
            
        </table>
    </body>
</html>
