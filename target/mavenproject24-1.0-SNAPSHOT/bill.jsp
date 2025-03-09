
<%@ page import="java.sql.*" %>
<%@ page import="com.example.mavenproject24.orderconnection.DBConnection" %> 
<%@ page import="java.sql.*" %>

<%
    Connection conn = DBConnection.getInstance().getConnection();
    String orderNumber = request.getParameter("order_number");
    double baseFare = 0, taxPercent = 0, discountPercent = 0;
    String name = "";

    if (orderNumber != null && !orderNumber.isEmpty()) {
        try {
            // Fetch booking details
            String sql = "SELECT name FROM customer_bookings WHERE order_number = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, orderNumber);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                name = rs.getString("name");
            } else {
                out.println("<p style='color:red;'>Order number not found!</p>");
            }
        } catch (SQLException e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        }
    }

    // Handle form submission for bill calculation
    if (request.getParameter("calculate") != null) {
        try {
            baseFare = Double.parseDouble(request.getParameter("base_fare"));
            taxPercent = Double.parseDouble(request.getParameter("tax_percentage"));
            discountPercent = Double.parseDouble(request.getParameter("discount_percentage"));
        } catch (NumberFormatException e) {
            out.println("<p style='color:red;'>Invalid input for fare, tax, or discount!</p>");
        }
    }

    // Calculate total amount
    double taxAmount = (taxPercent / 100) * baseFare;
    double discountAmount = (discountPercent / 100) * baseFare;
    double totalAmount = baseFare + taxAmount - discountAmount;
%>

<!DOCTYPE html>
<html>
<head>
    <title>Generate Bill</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        padding: 20px;
        background-color: #f4f4f4;
    }
    h2, h3 {
        color: #333;
    }
    form {
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 50%;
        margin: auto;
    }
    label {
        font-weight: bold;
        display: block;
        margin-top: 10px;
    }
    input[type="text"], input[type="number"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        background:#293b5f;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 10px;
        width: 100%;
    }
    input[type="submit"]:hover {
        background: #218838;
    }
</style>
</head>
 <header>
       <jsp:include page="header.jsp"/>
    </header>
<body>

    <h2>Enter Order Number</h2>
    <form method="get">
        <label>Order Number:</label>
        <input type="text" name="order_number" value="<%= (orderNumber != null) ? orderNumber : "" %>" required>
        <input type="submit" value="Fetch Booking">
    </form>

    <% if (orderNumber != null && !orderNumber.isEmpty() && !name.isEmpty()) { %>
        <h3>Booking Details for Order: <%= orderNumber %></h3>
        <p><strong>Customer Name:</strong> <%= name %></p>

        <h2>Enter Bill Details</h2>
        <form method="post">
            <input type="hidden" name="order_number" value="<%= orderNumber %>">

            <label>Base Fare:</label>
            <input type="number" name="base_fare" step="0.01" required><br>

            <label>Tax Percentage:</label>
            <input type="number" name="tax_percentage" step="0.01" required><br>

            <label>Discount Percentage:</label>
            <input type="number" name="discount_percentage" step="0.01" required><br>

            <input type="submit" name="calculate" value="Calculate Bill">
        </form>
    <% } %>

    <% if (request.getParameter("calculate") != null) { %>
        <h2>Billing Summary</h2>
        <p><strong>Base Fare:</strong> Rs<%= baseFare %></p>
        <p><strong>Tax ( <%= taxPercent %> % ):</strong> Rs<%= taxAmount %></p>
        <p><strong>Discount ( <%= discountPercent %> % ):</strong> -Rs<%= discountAmount %></p>
        <hr>
        <h3>Total Amount Payable: Rs<%= totalAmount %></h3>
    <% } %>
 <footer>
       <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>
