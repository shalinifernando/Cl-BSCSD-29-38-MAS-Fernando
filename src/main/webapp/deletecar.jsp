<%@page import="com.example.mavenproject24.CarDAOSingleton.CarDAO"%>
<%@page import="com.example.mavenproject24.carmodel.Car"%>

<%
    int carId = Integer.parseInt(request.getParameter("id"));
    CarDAO carDAO = CarDAO.getInstance();
    carDAO.deleteCar(carId);
    response.sendRedirect("index.jsp");
%>
