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
	<link rel="stylesheet" type="text/css" href="style3.css">
</head>
<body>
<div class="login-wrap">
	<div class="login-html">
		<label for="tab-1" class="tab">Sign In</label>
		
		<div class="login-form">
			<form action="dlogin1.jsp" method="get">
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
			
			
		</div>
	</div>
</div>
</body>
</html>
</html>
