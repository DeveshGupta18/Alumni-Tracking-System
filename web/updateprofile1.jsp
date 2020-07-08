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
	background-color: #888888; /* Green */
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
        try {

	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			int aid=(int)application.getAttribute("aid");
                        PreparedStatement ps1= conn.prepareStatement("update reg_alumni set aname=?, gender=? ,clgname=? ,branch=? ,batch=? ,rollno=? ,profession=?,detail=?,post=?,mob=?,email=?,address=?, pass=? where id=? ");
                       
                        ps1.setString(1,aname);
                        ps1.setString(2,gender);
                        ps1.setString(3,clgname);
                        ps1.setString(4,branch);
                        ps1.setString(5,batch);
                        ps1.setString(6,rollno);
                        ps1.setString(7,profession);
                        ps1.setString(8,detail);
                        ps1.setString(9,post);
                        ps1.setString(10,mob);
                        ps1.setString(11,email);
                        ps1.setString(12,address);
                        ps1.setString(13,pass);
                        ps1.setInt(14, aid);
                        ps1.executeUpdate();
                        
        }
        catch(Exception e){
           out.print(e);
        }
                      
                                
	 
        %>
    <center>
        <h1>Profile Updated Successfully</h1>
        <a href="alumnihome.jsp"><button class="button button1">
				<h3>Home</h3>
            </button></a></center>
    </body>
</html>
