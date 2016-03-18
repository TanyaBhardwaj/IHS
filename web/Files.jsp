<%-- 
    Document   : Files
    Created on : 16 Feb, 2016, 1:03:18 PM
    Author     : Tanya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <ul>
        <%  
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/tanyadb", "root", "tanyabhardwaj");
      PreparedStatement GetFile=conn.prepareStatement("Select url from `images`");
      ResultSet files=GetFile.executeQuery();
      while(files.next())
      {
          %>
          <li><a href="<%=files.getString("url")%>"><%=files.getString("url")%></a></li>
        <%
      }
                    %>
        </ul>
    </body>
</html>
