<%-- 
    Document   : header
    Created on : Mar 1, 2025, 1:08:27 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body {
  font-family: Helvetica;
  margin: 0;
}
a {
  text-decoration: none;
  color: #000;
}
.site-header { 
  border-bottom: 1px solid #ccc;
  padding: .5em 1em;
  display: flex;
  justify-content: space-between;
}

.site-identity h1 {
  font-size: 1.5em;
  margin: .6em 0;
  display: inline-block;
}


.site-navigation ul, 
.site-navigation li {
  margin: 0; 
  padding: 0;
}

.site-navigation li {
  display: inline-block;
  margin: 1.4em 1em 1em 1em;
}
    </style>
    <body>
      
<header class="site-header">
  <div class="site-identity">
    <h1><a href="#">Mega City Cab</a></h1>
  </div>  
  <nav class="site-navigation">
    <ul class="nav">
          <li><a href="dashboard.jsp">Dashboard</a></li> 
      <li><a href="#">New Customer Booking</a></li> 
      <li><a href="#">Calculate Bill</a></li> 
      <li><a href="#">Car Info</a></li> 
       <li><a href="#">Driver Info</a></li> 
       <li><a href="#">system usage guidelines</a></li> 
       <li><a href="logout.jsp">Logout</a></li> 
       
    </ul>
  </nav>
</header>
    </body>
</html>
