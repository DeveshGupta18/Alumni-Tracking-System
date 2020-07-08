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
               Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
    PreparedStatement ps = conn.prepareStatement("select * from reg_clg where email=? and pass=?");
			ps.setString(1,email);
			ps.setString(2, pass);
                        
			ResultSet rs = ps.executeQuery();
			st = rs.next();
			
			if (st) {
                            application.setAttribute("cid",rs.getInt(1) );
                            application.setAttribute("cname",rs.getString(2) );
				response.sendRedirect("clghome.jsp");
			} else {
                            response.sendRedirect("loginclg.jsp");
			conn.close();}    
           }
           catch(Exception e){
               System.out.print(e);
           }
    
    %>
    </body>
</html>
