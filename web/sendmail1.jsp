<%-- 
    Document   : sendmail1
    Created on : Jan 17, 2020, 8:42:36 PM
    Author     : HP
--%>

<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.*"%>
<%@page import="javax.mail.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

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


.button {
	background-color: #98348; /* Green */
	border: 2px;
	color: burlywood;
	padding: 2px 42px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
        font-size: 20px;
}

.button1 {
	border-radius: 8px;
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
</style>
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
   
    
     <%
            
        
        
        String host="smtp.gmail.com",  port="587";
            final String userName="jobgetset@gmail.com",password= "asdfghjkl1!", toAddress=request.getParameter("mail");
                    String subject = request.getParameter("sub"), message= request.getParameter("mess");
   
                
            
             
          
        try{
        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
// *** BEGIN CHANGE
        properties.put("mail.smtp.user", userName);

        // creates a new session, no Authenticator (will connect() later)
        Session session1 = Session.getDefaultInstance(properties);
// *** END CHANGE

        // creates a new e-mail message
        Message msg = new MimeMessage(session1);

        msg.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        // set plain text message
        msg.setText(message);

// *** BEGIN CHANGE
        // sends the e-mail
        Transport t = session1.getTransport("smtp");
        t.connect(userName, password);
        t.sendMessage(msg, msg.getAllRecipients());
        t.close();
// *** END CHANGE
        
        }
        catch(Exception e){
            System.out.println(e);
        }
   
   
    
      
           
            %>
        <center>
        <h1>Mail Sent Successfully</h1>
        <a href="clghome.jsp"><button class="button button1">
                <h3>Go Home</h3><br>
			</button></a></center>
        
    
    
<div class="footer">
  <p>Copyright 2020 by NullByte. All rights reserved.</p>
</div>
   


</body>
</html>
        
        
     
        
      
    </body>
</html>
