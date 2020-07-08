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
    PreparedStatement ps = conn.prepareStatement("select * from reg_alumni where email=? and pass=? and verify=?");
			ps.setString(1,email);
			ps.setString(2, pass);
                        ps.setString(3, "Y");
			ResultSet rs = ps.executeQuery();
			st = rs.next();
			
			if (st) {
                            application.setAttribute("aid",rs.getInt(1) );
                            application.setAttribute("sname",rs.getString(2) );
                            application.setAttribute("cid",rs.getString(16) );
                            out.print("haaa");
				response.sendRedirect("alumnihome.jsp");
			} else {
                            //response.sendRedirect("loginalumni1.jsp");
			conn.close();}    
           }
           catch(Exception e){
               out.print(e);
           }
    
    %>
    </body>
</html>
