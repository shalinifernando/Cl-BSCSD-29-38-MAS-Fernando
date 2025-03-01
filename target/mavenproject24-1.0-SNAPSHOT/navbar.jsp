<!DOCTYPE html>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: lightblue;
}

li {
  float: right;
}

li a {
  display: block;
  color: white;
  text-align: right;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color:buttonface;
}
</style>
</head>
<body>

<ul>
    <li><a href="logout.jsp">Logout</a></li>
    <li><a href="#about">Calculate Bill</a></li>
  <li><a href="#about">system usage guidelines</a></li>
   
  <li><a class="active" href="dashboard.jsp">Dashboard</a></li>
  <li><a href="">Car Info</a></li>
  <li><a href="user-form.jsp">Driver Info</a></li>
  <li><a href="addUser.jsp">New Customer Booking</a></li>  
</ul>

</body>
</html>
