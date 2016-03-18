<%-- 
    Document   : profile
    Created on : 12 Feb, 2016, 1:42:53 PM
    Author     : Tanya
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css" rel="stylesheet" >
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String x=request.getParameter("uid");
                        Class.forName("com.mysql.jdbc.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/tanyadb", "root", "tanyabhardwaj");
      PreparedStatement getUser=conn.prepareStatement("Select user_id, name,password from users where user_id=? " );
      getUser.setInt(1, Integer.parseInt(x));
      ResultSet users=getUser.executeQuery();
      users.first();
            %>
           <form action="UpdateServlet" method="post">
               <label>Name</label><input type="text" name="username" value="<%=users.getString("name")%>"><br>
               <label>Password</label><input type="password" name="password" value="<%=users.getString("password")%>"><br>
               <input type="hidden" name="id" value="<%=x%>">
            <button type="submit">update</button><br>
        </form>
            <form action="DeleteServlet" method="post">
                <input type="hidden" name="id" value="<%=x%>">
            <button type="submit">Delete</button><br>
            </form>
    </body>
</html>
