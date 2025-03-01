
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.example.mavenproject24.orderconnection.DBConnection" %>  
<%
    Connection conn = DBConnection.getInstance().getConnection();

    // Handle Form Submission
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String orderNumber = request.getParameter("order_number");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String contactNumber = request.getParameter("contact_number");
        int numberOfGuests = Integer.parseInt(request.getParameter("number_of_guests"));
        String pickupDate = request.getParameter("pickup_date");
        String destination = request.getParameter("destination");

        try {
            String sql = "INSERT INTO customer_bookings (order_number, name, address, contact_number, number_of_guests, pickup_date, destination) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, orderNumber);
            pstmt.setString(2, name);
            pstmt.setString(3, address);
            pstmt.setString(4, contactNumber);
            pstmt.setInt(5, numberOfGuests);
            pstmt.setString(6, pickupDate);
            pstmt.setString(7, destination);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Customer Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
            padding: 0;
        }
        .container {
            width: 20%;
            margin: auto;
            background: white;
            padding: 20px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
             width: 50%;
             margin-left: auto;
             margin-right: auto;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
        }
        input, textarea {
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: lavender;
            color: white;
            border: none;
            padding: 10px;
            margin-top: 15px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        table {
            width: 50%;
            margin-top: 20px;
            border-collapse: collapse;
             margin-left: auto;
             margin-right: auto;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: lightblue;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
 <!-- Header -->
    <header>
       <jsp:include page="header.jsp"/>
    </header>
<body>
    <h2>New Booking</h2>
    <form method="post">
        Order Number: <input type="text" name="order_number" required><br>
        Name: <input type="text" name="name" required><br>
        Address: <textarea name="address" required></textarea><br>
        Contact Number: <input type="text" name="contact_number" required><br>
        Number of Guests: <input type="number" name="number_of_guests" required><br>
        Pickup Date & Time: <input type="datetime-local" name="pickup_date" required><br>
        Destination: <input type="text" name="destination" required><br>
        <input type="submit" value="Submit Booking">
    </form>

    <h2>Existing Bookings</h2>
    <table border="1">
        <tr>
            <th>Order Number</th>
            <th>Name</th>
            <th>Address</th>
            <th>Contact Number</th>
            <th>Guests</th>
            <th>Pickup Date</th>
            <th>Destination</th>
        </tr>
        <%
            try {
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM customer_bookings ORDER BY pickup_date DESC");
                while (rs.next()) {
        %>
                    <tr>
                        <td><%= rs.getString("order_number") %></td>
                        <td><%= rs.getString("name") %></td>
                        <td><%= rs.getString("address") %></td>
                        <td><%= rs.getString("contact_number") %></td>
                        <td><%= rs.getInt("number_of_guests") %></td>
                        <td><%= rs.getTimestamp("pickup_date") %></td>
                        <td><%= rs.getString("destination") %></td>
                    </tr>
        <%
                }
            } catch (SQLException e) {
                out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
            }
        %>
    </table>
    
</body>
</html>
