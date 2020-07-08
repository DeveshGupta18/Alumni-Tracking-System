<%-- 
    Document   : loginalumni1
    Created on : Jan 17, 2020, 12:49:07 PM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           try{
               boolean st;
               String email=request.getParameter("email");
               String pass=request.getParameter("pass");
               if(email.equals("admin@admin.com") && pass.equals("a"))
               {
                            application.setAttribute("cid",200 );
                            application.setAttribute("cname","directorate" );
				response.sendRedirect("dhome.jsp");
			} else {
                            response.sendRedirect("dlogin.jsp");
			}    
           }
           catch(Exception e){
               System.out.print(e);
           }
    
    %>
    </body>
</html>
