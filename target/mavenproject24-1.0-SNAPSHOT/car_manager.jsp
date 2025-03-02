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
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f4f4fred;
            
        }

        h2 {
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
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
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

        table {
            width: 50%;
            border-collapse: collapse;
            margin-top: 20px;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-left: auto;
  margin-right: auto;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .footer{
            position: fixed;
  left: 0;
  bottom: 0;
        }
    </style>
</head>
 <header>
       <jsp:include page="header.jsp"/>
    </header>
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
<footer>
       <jsp:include page="footer.jsp"/>
    </footer>
</html>
