<%-- 
    Document   : registeralumni
    Created on : Jan 17, 2020, 11:45:05 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
body{
background-image: url('https://answers.unity.com/storage/attachments/135164-fade.png');
  background-size: cover;

}
.button {
	background-color: lightgray; /* Green */
	border: 2px;
	color: burlywood;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
}

.button1 {
	border-radius: 8px;
}
</style>



        <% 
        
        String clgname=request.getParameter("clgname");
        String address=request.getParameter("address");
        String mob=request.getParameter("Mobno");
        String email=request.getParameter("email");
        String dirname=request.getParameter("Director_name");
         String pass=request.getParameter("pass");
        try {

	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			PreparedStatement ps=conn.prepareStatement("select count(id) from reg_clg");
                        
                        ResultSet rs=ps.executeQuery();
                        rs.next();
                        int id=rs.getInt(1);
                        PreparedStatement ps1= conn.prepareStatement("insert into reg_clg values(?,?,?,?,?,?,?)");
                        ps1.setInt(1,id+1);
                        ps1.setString(2,clgname);
                        ps1.setString(3,address);
                        ps1.setString(4,mob);
                        ps1.setString(5,email);
                        ps1.setString(6,dirname);
                        ps1.setString(7,pass);
                        ps1.execute();
                        
        }
        catch(Exception e){
          out.print(e);
        }
                      
                                
	 
        %>
    <center>
        <h1>Registered Successfully</h1>
        <a href="registerclg.jsp"><button class="button button1">
				<h3>Login</h3>
			</button></a>
    </center>
    </body>
</html>
