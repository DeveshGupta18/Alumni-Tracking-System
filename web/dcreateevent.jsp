<%-- 
    Document   : createnotice
    Created on : Jan 17, 2020, 3:32:39 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    
    
    <%-- 
    Document   : createnotice
    Created on : Jan 17, 2020, 3:32:39 PM
    Author     : HP
--%>
      


	<title>Alumni tracking website2</title>
	<link rel="stylesheet" type="text/css" href="style3.css">
</head>
<body>
<div class="login-wrap">
	<div class="login-html">
		<label for="tab-2" class="tab">Event Details</label>
		<div class="login-form">
			<form action="dcreateevent1.jsp" method="get">
			<div class="sign-up-htm">
				<div class="group">
					<label for="clgname" class="label">Event Title</label>
					<input id="clgname" type="text" class="input" required="required" name="ename">
				</div>
				<div class="group">
					<label for="clgname" class="label">Date</label>
					<input id="clgname" type="text" class="input" required="required" name="edate">
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


    
    
    <body>
        <form action="" method="get">
            Event Heading<input type="text" name="ename"><br>
            Event Date<input type="text" name="edate"/> <br>
            Details<input type="text" name="detail"/><br>
            <input type="submit" value="submit"/>
        </form>
    </body>
</html>
