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
	<title>Alumni tracking website2</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
			<form action="loginclg1.jsp" method="get">
			<div class="sign-in-htm">
				<div class="group">
					<label for="email" class="label">Email</label>
					<input id="email" type="email" class="input" name="email">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password" name="pass">
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
			<form action="registerclg1.jsp" method="get">
			<div class="sign-up-htm">
				<div class="group">
					<label for="clgname" class="label">College Name</label>
					<input id="clgname" type="text" class="input" required="required" name="clgname">
				</div>
				<div class="group">
					<label for="Address" class="label">Address</label>
					<input id="Address" type="text" class="input" required="required" name="address">
				</div>
				<div class="group">
					<label for="Mobno" class="label">Mobile no</label>
					<input id="Mobno" type="number" class="input" required="required" name="Mobno">
				</div>
				<div class="group">
					<label for="email" class="label">Email</label>
					<input id="email" type="text" class="input" name="email">
				</div>
				<div class="group">
					<label for="Director_name" class="label">Director Name</label>
					<input id="Director_name" type="text" class="input" required="required" name="Director_name">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="text" class="input" name="pass">
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
</html>
