<%@ page import="java.util.List" %>
<%@ page import="com.example.mavenproject24.CarDAOSingleton.CarDAO" %>
<%@ page import="com.example.mavenproject24.carmodel.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    CarDAO carDAO = new CarDAO();
    if (request.getMethod().equalsIgnoreCase("POST")) {
        String brand = request.getParameter("brand");
        String model = request.getParameter("model");
        int year = Integer.parseInt(request.getParameter("year"));
        carDAO.addCar(brand, model, year);
    }
    List<Car> carList = carDAO.getAllCars();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Car Manager</title>
</head>
<body>
    <h2>Add a New Car</h2>
    <form method="post">
        Brand: <input type="text" name="brand" required><br>
        Model: <input type="text" name="model" required><br>
        Year: <input type="number" name="year" required><br>
        <input type="submit" value="Add Car">
    </form>

    <h2>Car List</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Brand</th>
            <th>Model</th>
            <th>Year</th>
        </tr>
        <% for (Car car : carList) { %>
            <tr>
                <td><%= car.getId() %></td>
                <td><%= car.getBrand() %></td>
                <td><%= car.getModel() %></td>
                <td><%= car.getYear() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
