<%-- 
    Document   : user-list
    Created on : Sep 15, 2024, 5:01:32 PM
    Author     : Java Programming with Aldrin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="navbar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User List</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: whitesmoke;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            text-align: center;
            margin: 20px 0;
            font-size: 2.5rem;
            color: #293b5f; /* Blue color for the heading */
        }

        a {
            text-decoration: none;
            color: lightblue;
            background-color: whitesmoke;

            padding: 8px 16px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: lightblue; /* Darker blue for hover effect */
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            background-color: #ffffff; /* White background for the table */
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #293b5f; /* Blue background for table headers */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f1f1f1; /* Light gray for alternate rows */
        }

        tr:hover {
            background-color: #e1e1e1; /* Slightly darker gray for hover effect */
        }

        .actions a {
            margin: 0 10px;
        }

        .actions a:first-child {
            background-color: #28a745; /* Green for 'Edit' button */
        }

        .actions a:first-child:hover {
            background-color: #218838;
        }

        .actions a:last-child {
            background-color: #dc3545; /* Red for 'Delete' button */
        }

        .actions a:last-child:hover {
            background-color: #c82333;
        }

        .create-btn {
            display: inline-block;
            margin-bottom: 20px;
            padding: 12px 20px;
            background-color: #007BFF; /* Blue color for the 'Create New User' button */
            color: white;
            border-radius: 5px;
            font-size: 1.2rem;
            transition: background-color 0.3s;
        }

        .create-btn:hover {
            background-color: #0056b3; /* Darker blue for hover effect */
        }

    </style>
</head>
<!-- Header -->
    <header>
       <jsp:include page="header.jsp"/>
    </header>
<body>

    <div class="container">
        <a href="new" class="create-btn">Create New User</a>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Country</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${listUser}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>${user.country}</td>
                        <td class="actions">
                            <a href="edit?id=${user.id}">Edit</a>
                            <a href="delete?id=${user.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
<footer>
       <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>

