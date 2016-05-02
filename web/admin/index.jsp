<%-- 
    Document   : index
    Created on : 2 May, 2016, 4:34:12 PM
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="AdminLoginServlet" method="post">
            <input type="text" name="admin_name">
            <input type="password" name="admin_password">
            <button type="submit">Login</button>
        </form>
    </body>
</html>
