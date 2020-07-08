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
	<title>Alumni tracking website</title>
	<link rel="stylesheet" type="text/css" href="style3.css">
        
</head>
<body>
   
    <%
    
    
    try {
        int aid=(int)application.getAttribute("aid");
	boolean st = false;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
			PreparedStatement ps=conn.prepareStatement("select * from reg_alumni where id=?");
                        ps.setInt(1, aid);
                      ResultSet rs =ps.executeQuery();
                        rs.next();
                    %>      
   
  
    
    <div class="login-wrap">
	<div class="login-html">
         
		<label for="tab-1" class="tab">Update</label>
		<div class="login-form">
                    
			<form action="updateprofile1.jsp" method="get">
			<div class="sign-up-htm">
				<div class="group">
					<label for="Alumniname" class="label">Alumni Name</label>
					<input id="Alumniname" type="text" name="aname" class="input" value="<%=rs.getString(2)%>" required="required">
				</div>
				<div class="group">
					<label for="gender" class="label">Gender</label>
					<input type="radio" name="gender" value="M" > Male
					<input type="radio" name="gender" value="F"> Female
					
				</div>
				<div class="group">
					<label for="Clgname"  class="label">College Name</label>
					<input id="Clgname"  value="<%=rs.getString(4)%>" name="clgname" type="text" class="input" required="required">
				</div>
				<div class="group">
					<label for="Branch name"  class="label">Brach Name</label>
					<select class="Branch_name" value="<%=rs.getString(5)%>" name="branch">
  						<option value="CSE">Computer Science and Engineering</option>
  						<option value="ME">Mechanical Engineering</option>
  						<option value="EE">Electrical Engineering</option>
  						<option value="ECE">Electrical and Electronics Communication Engineering</option>
  						<option value="Civil">Civil Engineering</option>
					</select>
				</div>
					<div class="group">
					<label for="Batch"  class="label">Batch</label>
					<input id="Batch" value="<%=rs.getString(6)%>" name="batch" type="text" class="input">
					</div>
				<div class="group">
					<label for="Roll no"  class="label">Roll no</label>
					<input id="Roll no" value="<%=rs.getString(7)%>" name="rollno" type="text" class="input" required="required">
				</div>
				<div class="group">
					<label for="Branch name" class="label">Brach </label>
					<select class="Profession" value="<%=rs.getString(8)%>" name="profession">
						<option value="Startup">Startup</option>
						<option value="Job">Job</option>
						<option value="Further study">Further study</option>
					</select>
				</div>
				<div class="group">
					<label for="Details" class="label">Job Details</label>
					<input id="Details" value="<%=rs.getString(9)%>" name="detail" type="textarea" class="input">
				</div>
				<div class="group">
					<label for="Post" class="label">Post</label>
					<input id="Post" value="<%=rs.getString(10)%>" name="post" type="text" class="input">
				</div>
				<div class="group">
					<label for="Mobno" class="label">Mobile no</label>
					<input id="Mobno" value="<%=rs.getString(11)%>" name="mob" type="text" class="input" required="required">
				</div>
				<div class="group">
					<label for="email" class="label">Email Address</label>
					<input id="email" value="<%=rs.getString(12)%>" name="email" type="email" class="input">
				</div>
				<div class="group">
					<label for="Address" class="label">Address</label>
					<input id="Address" value="<%=rs.getString(13)%>" name="address" type="text" class="input" required="required">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" value="<%=rs.getString(14)%>" name="pass" type="text" class="input">
				</div>
				
				<div class="group">
					<input type="submit" class="button" value="Submit">
				</div>
			</div>
			</form>
		</div>
	</div>
</div>
    
    
  <%   }catch(Exception e){
    out.print(e);
    
    }
    
    
    %>

</body>
</html>
