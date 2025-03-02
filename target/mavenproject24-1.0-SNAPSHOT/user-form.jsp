<%-- 
 
<%-- 
    Document   : user-form
    Created on : Sep 15, 2024, 5:02:13 PM
    Author     : 
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Form</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: whitesmoke;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Custom form styles */
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            font-family: Arial, sans-serif;
           
        }

        .container h1 {
            text-align: center;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
            padding: 20px;
            background-color:white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 1rem;
            color: #555;
        }

        input[type="text"],
        input[type="email"] {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
        }

        input[type="submit"] {
            padding: 10px;
            font-size: 1rem;
            color: white;
            background-color: #28a745;

            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .back-link {
            text-align: center;
            margin-top: 15px;
        }

        .back-link a {
            text-decoration: none;
            color: #007BFF;
            font-size: 1rem;
        }

        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<header>
       <jsp:include page="header.jsp"/>
    </header>
<body>
    <div class="container">
        <h1>${user == null ? "Create New User" : "Edit User"}</h1>
        <form action="${user == null ? 'insert' : 'update'}" method="post">
            <input type="hidden" name="id" value="${user != null ? user.id : ''}" />
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" value="${user != null ? user.name : ''}" required/><br/>
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" value="${user != null ? user.email : ''}" required/><br/>
            <label for="country">Country:</label>
            <input type="text" name="country" id="country" value="${user != null ? user.country : ''}" required/><br/>
            <input type="submit" value="${user == null ? 'Save' : 'Update'}" />
        </form>
        <div class="back-link">
            <a href="list">Back to User List</a>
        </div>
    </div>
        <footer>
       <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>
