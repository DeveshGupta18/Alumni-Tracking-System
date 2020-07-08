<%-- 
    Document   : createnotice
    Created on : Jan 17, 2020, 3:32:39 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <%-- 
    Document   : loginalumni1
    Created on : Jan 17, 2020, 12:49:07 PM
    Author     : HP
--%>


	<title>Alumni tracking website2</title>
	<link rel="stylesheet" type="text/css" href="style3.css">
</head>
<body>
<div class="login-wrap">
	<div class="login-html">
		<label for="tab-2" class="tab">Notice Details</label>
		<div class="login-form">
			<form action="noticedetails1.jsp" method="get">
			<div class="sign-up-htm">
				<div class="group">
					<label for="clgname" class="label">Notice Heading</label>
					<input id="clgname" type="text" class="input" required="required" name="nname">
				</div>
				<div class="group">
					<label for="clgname" class="label">Date</label>
					<input id="clgname" type="text" class="input" required="required" name="ndate">
				</div>
                                <div class="group">
					<label for="clgname" class="label">Details</label>
					<input id="clgname" type="text" class="input" required="required" name="detail">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Submit">
				</div>
				
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>

