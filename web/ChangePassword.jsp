<%-- 
    Document   : ChangePassword
    Created on : 2 May, 2016, 2:25:19 PM
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
        <form action="ChangePasswordServlet">
            <input type="email" name="user_email" required>
            <input type="password" name="user_password" >
            <button type="submit">Change Password</button>
        </form>
    </body>
</html>
