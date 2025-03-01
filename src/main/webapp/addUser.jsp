<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*" %>
<%@ page import="com.example.mavenproject24.newpackage.OrderHandler" %>




<html>
<head>
    <title>Customer Booking Form</title>
    <style>
        /* Styling for the fixed header */
        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding-top: 60px; /* To give space for the fixed header */
        }

        /* Container for the form */
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-size: 14px;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 12px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        .form-group input[type="text"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

        .form-group input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-group input[type="submit"]:hover {
            background-color: #45a049;
        }

        .booking-details {
            margin-top: 20px;
        }

        .booking-details h3 {
            color: #333;
        }

        .booking-details p {
            font-size: 16px;
            color: #555;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Customer Booking System</h1>
     
        <a href="dashboard1.jsp">Back</a>
    </header>

    <!-- Form Container -->
    <div class="container">
        <h2>Enter Customer Booking Details</h2>
        <form method="post">
            <div class="form-group">
                <label for="orderNumber">Order Number:</label>
                <input type="text" name="orderNumber" id="orderNumber" required>
            </div>
            <div class="form-group">
                <label for="customerName">Customer Name:</label>
                <input type="text" name="customerName" id="customerName" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" name="address" id="address" required>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <input type="text" name="phoneNumber" id="phoneNumber" required>
            </div>
            <div class="form-group">
                <label for="destinationDetails">Destination Details:</label>
                <input type="text" name="destinationDetails" id="destinationDetails" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Submit Booking">
            </div>
        </form>

        <%
            if(request.getMethod().equalsIgnoreCase("POST")) {
                // Get the form data
                String orderNumber = request.getParameter("orderNumber");
                String customerName = request.getParameter("customerName");
                String address = request.getParameter("address");
                String phoneNumber = request.getParameter("phoneNumber");
                String destinationDetails = request.getParameter("destinationDetails");

                // Get the singleton instance of OrderHandler
                OrderHandler orderHandler = OrderHandler.getInstance();

                // Set the order details
                orderHandler.setOrderNumber(orderNumber);
                orderHandler.setCustomerName(customerName);
                orderHandler.setAddress(address);
                orderHandler.setPhoneNumber(phoneNumber);
                orderHandler.setDestinationDetails(destinationDetails);

                // Display the order details
                out.println("<div class='booking-details'>");
                out.println("<h3>Booking Details:</h3>");
                out.println("<p><strong>Order Number:</strong> " + orderHandler.getOrderNumber() + "</p>");
                out.println("<p><strong>Customer Name:</strong> " + orderHandler.getCustomerName() + "</p>");
                out.println("<p><strong>Address:</strong> " + orderHandler.getAddress() + "</p>");
                out.println("<p><strong>Phone Number:</strong> " + orderHandler.getPhoneNumber() + "</p>");
                out.println("<p><strong>Destination Details:</strong> " + orderHandler.getDestinationDetails() + "</p>");
                out.println("</div>");
            }
        %>
    </div>
</body>
</html>
