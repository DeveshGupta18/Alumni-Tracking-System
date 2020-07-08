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
body {
	font-family: Arial, Helvetica, sans-serif;
	background: url('https://cdn.hipwallpaper.com/m/91/99/ZbJ5Oy.jpg');
	background-size: cover;
	color: #fff;
}
.button {
	background-color: #98348; /* Green */
	border: 2px;
	color: burlywood;
	padding: 2px 42px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
        font-size: 20px;
}

.button1 {
	border-radius: 8px;
}
</style>



        <% 
        String aname=request.getParameter("aname");
        String gender=request.getParameter("gender");
        String clgname=request.getParameter("clgname");
        String branch=request.getParameter("branch");
        String batch=request.getParameter("batch");
        String rollno=request.getParameter("rollno");
        String profession=request.getParameter("profession");
        String detail=request.getParameter("detail");
        String post=request.getParameter("post");
        String mob=request.getParameter("mob");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        String pass=request.getParameter("pass");
        int cid=Integer.parseInt((String)request.getParameter("cid"));
        try {

	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			PreparedStatement ps=conn.prepareStatement("select count(id) from reg_alumni");
                        
                        ResultSet rs=ps.executeQuery();
                        rs.next();
                        int id=rs.getInt(1);
                        PreparedStatement ps1= conn.prepareStatement("insert into reg_alumni values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                        ps1.setInt(1,id+1);
                        ps1.setString(2,aname);
                        ps1.setString(3,gender);
                        ps1.setString(4,clgname);
                        ps1.setString(5,branch);
                        ps1.setString(6,batch);
                        ps1.setString(7,rollno);
                        ps1.setString(8,profession);
                        ps1.setString(9,detail);
                        ps1.setString(10,post);
                        ps1.setString(11,mob);
                        ps1.setString(12,email);
                        ps1.setString(13,address);
                        ps1.setString(14,pass);
                        ps1.setString(15,"N");
                        ps1.setInt(16,cid);
                        ps1.execute();
                        
        }
        catch(Exception e){
           out.print(e);
        }
                      
                                
	 
        %><center>
        <h1>Registered Successfully</h1>
        <a href="registeralumni.jsp"><button class="button button1">
                <h3>Login</h3><br>
			</button></a></center>
    </body>
</html>
