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
	<link rel="stylesheet" type="text/css" href="style.css">
        
</head>
<body>
<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
                    <form action="loginalumni1.jsp" method="get">
			<div class="sign-in-htm">
				<div class="group">
					<label for="email" class="label">Email</label>
					<input id="email" type="email" name="email" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" name="pass" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot"></a>
				</div>
			</div>
			</form>
			<form action="registeralumni1.jsp" method="get">
			<div class="sign-up-htm">
				<div class="group">
					<label for="Alumniname" class="label">Alumni Name</label>
					<input id="Alumniname" type="text" name="aname" class="input" required="required">
				</div>
				<div class="group">
					<label for="gender" class="label">Gender</label>
					<input type="radio" name="gender" value="M" > Male
					<input type="radio" name="gender" value="F"> Female
					
				</div>
				<div class="group">
					<label for="Clgname" class="label">College Name</label>
					<input id="Clgname" name="clgname" type="text" class="input" required="required">
				</div>
				<div class="group">
					<label for="Branch name" class="label">Brach Name</label>
					<select class="Branch_name" name="branch">
  						<option value="CSE">Computer Science and Engineering</option>
  						<option value="ME">Mechanical Engineering</option>
  						<option value="EE">Electrical Engineering</option>
  						<option value="ECE">Electrical and Electronics Communication Engineering</option>
  						<option value="Civil">Civil Engineering</option>
					</select>
				</div>
					<div class="group">
					<label for="Batch" class="label">Batch</label>
					<input id="Batch" name="batch" type="text" class="input">
					</div>
				<div class="group">
					<label for="Roll no" class="label">Roll no</label>
					<input id="Roll no" name="rollno" type="text" class="input" required="required">
				</div>
				<div class="group">
					<label for="Branch name" class="label">Brach </label>
					<select class="Profession" name="profession">
						<option value="Startup">Startup</option>
						<option value="Job">Job</option>
						<option value="Further study">Further study</option>
					</select>
				</div>
				<div class="group">
					<label for="Details" class="label">Job Details</label>
					<input id="Details" name="detail" type="textarea" class="input">
				</div>
				<div class="group">
					<label for="Post" class="label">Post</label>
					<input id="Post" name="post" type="text" class="input">
				</div>
				<div class="group">
					<label for="Mobno" class="label">Mobile no</label>
					<input id="Mobno" name="mob" type="number" class="input" required="required">
				</div>
				<div class="group">
					<label for="email" class="label">Email Address</label>
					<input id="email" name="email" type="email" class="input">
				</div>
				<div class="group">
					<label for="Address" class="label">Address</label>
					<input id="Address" name="address" type="text" class="input" required="required">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" name="pass" type="text" class="input">
				</div>
				<div class="group">
					<label for="clgid" class="label">College id</label>
					<input id="clgid" name="cid" type="text" class="input">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>
