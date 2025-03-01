
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Header</title>
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
</head>
<body>

 <header class="site-header">
  <div class="site-identity">
    <h4><a href="dashboard.jsp">"The Epitome of Class on Wheels"</a></h4>
   
  </div>  
  <nav class="site-navigation">
    <ul class="nav">
          <li>
                                <a id="catalog" href="dashboard.jsp" class="tab__link">Dashboard</a>
                            </li>
       <li>
                                <a id="catalog" href="booking.jsp" class="tab__link">Add New Customer</a>
                            </li>
                            <li>
                                <a href="booking.jsp" id="pricing" class="tab__link">Display Booking Details</a>
                            </li>
                            <li>
                                <a href="bill.jsp" id="pricing" class="tab__link">Calculate Bill</a>
                            </li>
                            <li>
                                <a href="car_manager.jsp" id="pricing" class="tab__link">Car Info</a>
                            </li>
                             <li>
                                <a href="user-list.jsp" id="pricing" class="tab__link">Driver Info</a>
                            </li>
                            <li>
                                <a href="index.jsp" id="pricing" class="tab__link">LogOut</a>
                            </li>
    </ul>
  </nav>
</header>
</body>
</html>
