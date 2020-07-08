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
#box {
  width: 320px;
  padding: 10px;
  border: 5px solid gray;
  margin: 0;
}
#dat{
    margin-left: 800px;
}
.button {
  background-color: paleturquoise; /* Green */
 
  border: windowframe;
  color: red;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius: 10px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>
<body>

	 

<%
try {
    int nid=Integer.parseInt(request.getParameter("nid"));
    
	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			PreparedStatement ps=conn.prepareStatement("select * from notice_det where id=?");
                        ps.setInt(1,nid);
                        ResultSet rs=ps.executeQuery();
                        rs.next();
                        
	
%>
<h1><center><%=rs.getString(3)%></center></h1>

<div id="dat"><%=rs.getString(5)%></div><br>
<center>
<div id="box"><%=rs.getString(4)%></div>
</center>
	
	
	
	<% conn.close();%>

	
<%}catch (Exception e) {
	out.println(e);
}

%>
<center>
<a href="alumnihome.jsp"><button class="button button1">
				<h3>Go Back</h3>
			</button></a>
</center>

</body>
</html>