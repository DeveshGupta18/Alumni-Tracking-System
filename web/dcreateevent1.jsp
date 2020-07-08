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
	background-color: magenta; /* Green */
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
        String ename=request.getParameter("ename");
        String edate=request.getParameter("edate");
        String detail=request.getParameter("detail");
        int cid=(int)application.getAttribute("cid");
        try {
	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			PreparedStatement ps=conn.prepareStatement("select count(id) from event_det");
                        
                        ResultSet rs=ps.executeQuery();
                        rs.next();
                        int id=rs.getInt(1);
                        PreparedStatement ps1= conn.prepareStatement("insert into event_det values(?,?,?,?,?)");
                        ps1.setInt(1,id+1);
                        ps1.setString(2,ename);
                        ps1.setString(3,edate);
                        ps1.setString(4,detail);
                        ps1.setInt(5,cid);
                        ps1.execute();
                        
        }
        catch(Exception e){
           out.print(e);
        }
                      
                                
	 
        %>
    <center>
        <h1>Event Created Successfully</h1>
        <a href="dhome.jsp"><button class="button button1">
				<h3>Go Home</h3>
            </button></a></center>
    
    </body>
</html>
