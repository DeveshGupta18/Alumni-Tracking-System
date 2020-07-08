<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	 body{
background-image: url('https://answers.unity.com/storage/attachments/135164-fade.png');
  background-size: cover;

}	
.button {
  background-color: paleturquoise; /* Green */
 
  border: windowframe;
  color: red;
  padding: 8px 30px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 10px;
}
#box {
  width: 320px;
  padding: 10px;
  border: 5px solid gray;
  margin: 0;
}
#dat{
    margin-left: 800px;
}


</style>
</head>
<body>

<%
try {
	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			PreparedStatement ps=conn.prepareStatement("select * from event_det");
                        
                        ResultSet rs=ps.executeQuery();
                       rs.next();
                        
	
%>

<h1><center><%=rs.getString(2)%></center></h1>

<div id="dat"><%=rs.getString(3)%></div><br>
<center>
<div id="box"><%=rs.getString(4)%></div>
</center>
	
	
<center>
	   <a href="regevent1.jsp?eid=<%=rs.getInt(1)%>&&cid=<%=rs.getInt(5)%>&&ename=<%=rs.getString(2)%>"><button class="button button1">
				<h3>Participate</h3>
			</button></a>
</center>   
	

	
	
	
	
	<% conn.close();%>

	
<%}catch (Exception e) {
	System.out.println(e);
}

%>



</body>
</html>