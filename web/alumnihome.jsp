<%-- 
    Document   : alumnihome
    Created on : Jan 17, 2020, 1:21:05 PM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
    
    <!DOCTYPE html>
<html>

<head>
    
<style>
.imgage{
  border-radius: 50%;
}
body{
    margin: 0;
    font-family: Helvetica,sans-serif,Arial;
background-image: url('https://images.unsplash.com/photo-1508615039623-a25605d2b022?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80');
  background-size: cover;
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
.img1{
  border-radius: 20%;
  margin-left: 100px;
 
}
.img2{
  border-radius: 20%;
  margin-left: 100px;
}
.img3{
  border-radius: 20%;
  margin-left: 100px;
}
.round2 {
  border: 7px solid buttonshadow;
  border-radius: 15px;
}

*{
  box-sizing: border-box;
}
#myTable{
    font-size: 20px;
}
/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 40%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
  text-align: center;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}
</style>

</head>

<body>
    <div class="round2">
   <div class="header">
       
  <a href="#default" class="logo">Alumni Tracking System</a>
  <div class="header-right">
    <a class="active" href="index.html">Home</a>
    <a href="logout.jsp">Logout</a>
    <a href="updateprofile.jsp">Update</a>
    
  </div>
       </div>
    </div>
        
        
        
<div class="footer">
  <p>Copyright 2020 by NullByte. All rights reserved.</p>
</div>
   
<h1>Hello Alumni</h1>
       
<div class="row">
  <div class="column" style="background-color:transparent;">
      <center><h2>Notice</h2></center>
 
    
    
</head>
<body>


<%
try {
    int cid=Integer.parseInt((String)application.getAttribute("cid"));
	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			PreparedStatement ps=conn.prepareStatement("select * from notice_det where cid=? or cid=?");
                        ps.setInt(1,cid);
                         ps.setInt(2,200);
                        ResultSet rs=ps.executeQuery();
                       
                        
	
%>

	<table style="width:80%">
	  
<%
while(rs.next())
	{
	%>
	
           <tbody  id="myTable">
            <tr>
                
	  <td>&#x2192;<a href="shownotice.jsp?nid=<%=rs.getInt(1) %>"/><%=rs.getString(3) %></td>
                               
	  </tr>
       
 </tbody>
	<%
	}
	%>
	 </table>
	
	
	
	<% conn.close();%>

	
<%}catch (Exception e) {
	out.println(e);
}

%>



</body>
    
    
    
    
 <%
try {
    int cid=Integer.parseInt((String)application.getAttribute("cid"));
	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			PreparedStatement ps=conn.prepareStatement("select * from event_det where cid=? or cid=?");
                        ps.setInt(1,cid);
                        ps.setInt(2,200);
                        ResultSet rs=ps.executeQuery();
                       
                        
	
%>
 </div>
  <div class="column" style="background-color:transparent;">
      <center> <h2>Events</h2></center>
   


	<table style="width:80%">
	  
<%
while(rs.next())
	{
	%>
       
	
        <tbody  id="myTable">
	  <tr>
            
	  <td>&#x2192;<a href="showevents.jsp?eid=<%=rs.getInt(1) %>"/><%=rs.getString(2) %></td>
          
                     
	  </tr>
	    </tbody>
  </div>
	<%
	}
	%>
	 </table>
	
	
	
	<% conn.close();%>

	
<%}catch (Exception e) {
	out.println(e);
}

%>
   

</body>
</html>
    


    
     
  
