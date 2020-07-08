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
  <style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background: url('https://cdn.hipwallpaper.com/m/91/99/ZbJ5Oy.jpg');
	background-size: cover;
	color: #fff;
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
</style>
<head>
<title>Alumni</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">

    
     <%
            
        
        
        String host="smtp.gmail.com",  port="587";
           final String userName="<YOURMAILHERE>",password= "<YOURPSSWORDHERE>", toAddress=request.getParameter("mail");
                    String subject = "Bingo ! your profile approved", message= "please login to continue";
                       
            
             
          
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
            out.println(e);
        }
   
   
    
      
           
            %>
        
    
    <center>
       <h1>Registered Successfully</h1>
        <a href="clghome.jsp"><button class="button button1">
				<h3>Go Back</h3>
                               
			</button></a>
</center>

   


</body>
</html>
        
        
     
        
      
    </body>
</html>
