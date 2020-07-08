<%-- 
    Document   : mail
    Created on : Jan 17, 2020, 6:47:23 PM
    Author     : HP
--%>

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
  background-color: #62372; /* Green */
 border-radius: 10px;
  border: windowframe;
  color: red;
  padding: 5px 42px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
}
input[type=text] {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=reset] {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
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
   
<center>
     <title>Sending Mail Through JSP</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width">

    </head>
    <body>
    <br>
    <br>

        <form action="sendmail1.jsp">

            <table >

         
                    </td>

                    <td><b><b><input type="hidden" name="mail" value="<%=request.getParameter("email")%>"/><br/>

                    </td>
                </tr>

                <tr>

                    <td>

                        <b><font color="red">Subject:

                    </td>

                    <td>

                        <input type="text" name="sub" placeholder="Enter Subject Line"><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Message Text:

                    </td>

                    <td>

                        <textarea rows="12" cols="80" name="mess"></textarea><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                       <input type="submit" value="Send">

                    </td>

                    <td>

                        <input type="reset" value="Reset">

                    </td>

                </tr>

            </table>

        </form>

</center>
    
<div class="footer">
  <p>Copyright 2020 by NullByte. All rights reserved.</p>
</div>
   


</body>
</html>
 