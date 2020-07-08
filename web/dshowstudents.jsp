<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<head>
<title>Alumni</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">

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
.button {
  background-color: #62372; /* Green */
 border-radius: 10px;
  border: windowframe;
  color: red;
  padding: 5px 42px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
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
p{
    font-size: 20px;
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
input[type=text] {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
.button {
  background-color: #62372; /* Green */
 border-radius: 10px;
  border: windowframe;
  color: red;
  padding: 5px 42px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</head>
<body>
    <div class="round2">
    <div class="header">
       
  <a href="#default" class="logo">Alumni Tracking System</a>
  <div class="header-right">
    <a class="active" href="index.html">Home</a>
    <a href="index.html">Logout</a>
    <a href="createnotice.jsp">Create Notice</a>
    <a href="createevent.jsp">Create Event</a>
  </div>
       </div>
</div>
   
   
     <center><p>
Search 
<input id="myInput" type="text" placeholder="Search..">
</p></center>




	
	
	<div id="header"></div>
<body>

	 
<div id="header"></div>
<%
try {
    int cid=(int)application.getAttribute("cid");
	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			PreparedStatement ps=conn.prepareStatement("select * from reg_alumni");
                        
                        ResultSet rs=ps.executeQuery();
                       
                        
	
%>
<center>
	<table border=1px style="width:80%">
	  <tr>
	    <th>Name</th>
	    <th>Branch</th> 
	    <th>Batch</th>
	    <th>Roll No</th>
            <th>College Name</th>
            <th>Profession</th>
            <th>Post</th>
            <th>Mobile No.</th>
            <th>Address</th>
            <th>Send Mail</th>
		 </tr>
<%
while(rs.next())
	{
	%>
	
        <tbody id="myTable">
	  <tr>
	  <td><%=rs.getString(2) %></td>
          <td><%=rs.getString(5) %></td>
          <td><%=rs.getString(6) %></td>
          <td><%=rs.getString(7) %></td>
          <td><%=rs.getString(4) %></td>
	   <td><%=rs.getString(8) %></td>
	   <td><%=rs.getString(10)%></td>
           <td><%=rs.getString(11)%></td>
	   <td><%=rs.getString(13) %></td>
           <td><center><a href="dmail.jsp?email=<%=rs.getString(12)%>"><button class="button button1">
				<h3>Send Mail</h3>
                       </button></a></center></td>
                        </tbody>
	  </tr>
	 

	<%
	}
	%>
	 </table></center>
	
	
	
	<% conn.close();%>

	
<%}catch (Exception e) {
	System.out.println(e);
}

%>
    
<div class="footer">
  <p>Copyright 2020 by NullByte. All rights reserved.</p>
</div>
   


</body>
</html>
