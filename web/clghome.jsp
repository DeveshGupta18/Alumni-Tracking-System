<%-- 
    Document   : clghome
    Created on : Jan 17, 2020, 2:06:23 PM
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
    
* {
  box-sizing: border-box;
}
#myTable{
    font-size: 20px;
}
/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 25%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
  text-align: center;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}

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
.img4{
  border-radius: 20%;
  margin-left: 100px;
}
.round2 {
  border: 7px solid buttonshadow;
  border-radius: 15px;
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
   
   
        <br>
       
        <br>
      
         <br>
       
<div class="footer">
  <p>Copyright 2020 by NullByte. All rights reserved.</p>
</div>
        <br>
        <br>
<center>
    <div class="row">
  <div class="column" style="background-color:transparent;">
      <center> <a href="verifyprofile.jsp"><img class="img1" src="https://lcweb.it/wp-content/uploads/2017/08/pcma_verified_user.png" alt="Avatar" style="width:200px ;height :200px "></a></center>
   <a href="verifyprofile.jsp">Verify Alumni</a>
  </div>
    
    <div class="row">
  <div class="column" style="background-color:transparent;">
      <center> <a href="createnotice.jsp" ><img class="img2" src="https://img.pngio.com/notice-png-images-transparent-free-download-pngmartcom-notice-png-600_347.png" alt="Avatar"  style="width:200px ;height :200px "></a></center>
   <a href="createnotice.jsp">Create Notice</a>
  </div>
        
        <div class="row">
  <div class="column" style="background-color:transparent;">
      <center><a href="createevent.jsp"><img class="img3" src="https://i.ibb.co/st6n4Yg/event-logo-new.png" alt="Avatar"  style="width:200px ;height :200px "></a> </center>
   <a href="createevent.jsp">Create Event</a>
  </div>
            
            <div class="row">
  <div class="column" style="background-color:transparent;">
      <center>  <a href="showstudents.jsp"><img class="img4" src="https://www.pngarts.com/files/2/List-PNG-Free-Download.png" alt="Avatar"  style="width:200px ;height :200px "> </a></center>
   <a href="showstudents.jsp">Show Students</a>
  </div>
    
   
       
         
         
         
            
             
              <br>  
             
              
              
             

    </body>
</html>
