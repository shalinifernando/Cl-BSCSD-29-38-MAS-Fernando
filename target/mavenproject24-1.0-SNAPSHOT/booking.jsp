
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
        style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
              background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 800px;
           margin-left: auto;
            margin-right: auto;
        }

        input[type="text"],
        input[type="number"],
        input[type="datetime-local"],
        textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        textarea {
            height: 80px;
            resize: none;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .table-container {
            display: flex;
            justify-content: center;
            width: 100%;
            margin-top: 20px;
        }

        table {
            width: 90%;
            max-width: 800px;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
              margin-left: auto;
            margin-right: auto;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
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
