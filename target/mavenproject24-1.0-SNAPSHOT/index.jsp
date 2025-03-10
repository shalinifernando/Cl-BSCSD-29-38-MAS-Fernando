<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="ISO-8859-1">
    <title>Login and Logout Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        /* Body background */
        body {
           background-image: url(https://images.pexels.com/photos/21014/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
            background-repeat: no-repeat;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Glassmorphism effect for the form */
        .form-login {
            max-width: 400px;
            padding: 50px;
            margin: auto;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            color: white;
        }

        /* Form control styles */
        .form-login .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
            border: 1px solid rgba(255, 255, 255, 0.5);
            background: rgba(255, 255, 255, 0.2);
            color: white;
        }

        /* Input focus */
        .form-control:focus {
            background-color: rgba(255, 255, 255, 0.3);
            border-color: rgba(0, 123, 255, 0.8);
            color: white;
        }

        /* Button styling */
        .form-login button {
            width: 100%;
            background-color: #293b5f;
            border: none;
            border-radius: 10px;
            padding: 10px;
            color: white;
            font-size: 16px;
        }

        .form-login button:hover {
            background-color: rgba(0, 123, 255, 1);
            cursor: pointer;
        }
    </style>
</head>
<body>

    <div class="container">
        <%-- Check if user is logged in --%>
        <%
            String username = (String) session.getAttribute("username");
            if (username == null) {
        %>
        <!-- Login Form -->
        <form class="form-login" method="post" action="login.jsp">
            <h2 class="mb-3">Login</h2>
            <% if (request.getParameter("error") != null) { %>
                <div class="alert alert-danger" role="alert">
                    Invalid username or password!
                </div>
            <% } %>
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <button class="btn btn-primary" type="submit">Sign in</button>
        </form>
        <% } else { %>
        <!-- Logout Form -->
        <form class="form-login" method="post" action="logout.jsp">
            <h2 class="mb-3">Welcome, <%= username %>!</h2>
            <button class="btn btn-primary" type="submit">Logout</button>
        </form>
        <% } %>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
