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
	background-color: #352143; /* Green */
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
.header {
  overflow: hidden;
  opacity: 0.5;
 
  padding: 12px 10px;
}
.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  opacity: 0.5;
  color: black;
  text-align: center;
}
.neeche {
  position: absolute;
  margin-top: 10px;
  margin-left: 10px;
  margin-right: 10px;
  color: black;
  font-size: 30px;
  font-family: Comic Sans MS;
  text-align: center;
}

/* Style the header links */
.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
 
}

/* Style the logo link (notice that we set the same value of line-height and font-size to prevent the header to increase when the font gets bigger */
.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

/* Change the background color on mouse-over */
.header a:hover {
  background-color: #ddd;
  color: black;
}

/* Style the active/current link*/
.header a.active {
  background-color: dodgerblue;
  color: white;
}

/* Float the link section to the right */
.header-right {
  float: right;
}

/* Add media queries for responsiveness - when the screen is 500px wide or less, stack the links on top of each other */
@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }
}
</style>
  <div class="header">
       
  <a href="#default" class="logo">Alumni Tracking System</a>
  <div class="header-right">
    <a class="active" href="index.html">Home</a>
    <a href="index.html">Logout</a>
    <a href="createnotice.jsp">Create Notice</a>
    <a href="createevent.jsp">Create Event</a>
  </div>
       </div>


        <% 
        int eid=Integer.parseInt(request.getParameter("eid"));
        int cid=Integer.parseInt(request.getParameter("cid"));
        String ename=request.getParameter("ename");
        try {
	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			PreparedStatement ps1=conn.prepareStatement("insert into reg_event values(?,?,?,?,?)");
                        int aid = (int)application.getAttribute("aid");
                        String sname=(String)application.getAttribute("sname");
                        
                        
                        ps1.setInt(1,aid);
                        ps1.setInt(2,cid);
                        ps1.setString(3,sname);
                        ps1.setString(4,ename);
                        ps1.setInt(5,eid);
                        ps1.executeQuery();
                        
        }
        catch(Exception e){
           System.out.print(e);
        }
                      
                                
	 
        %>
    <center>
        <h1>Participated Successfully</h1>
        <a href="alumnihome.jsp"><button class="button button1">
				<h3>Go Home</h3>
            </button></a></center>
    </body>
</html>
