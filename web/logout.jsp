<%-- 
    Document   : logout
    Created on : Jan 17, 2020, 3:26:53 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        application.setAttribute("cid","");
        response.sendRedirect("index.html");
        %><h1>Logout Successfully</h1>
        
    </body>
</html>
