<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        form {
            display: inline-block;
            margin-top: 20px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="email"],
        input[type="password"] {
            padding: 8px;
            width: 250px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
        }
    </style>
</head>
<body>
    <h1>Admin Login</h1>
    <form action="/admin/login" method="post">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" placeholder="Enter email"><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required placeholder="Enter password"><br><br>
        <input type="submit" value="Login">
    </form>
    <c:if test="${param.error != null}">
        <p class="error-message">Invalid email or password.</p>
    </c:if>
</body>
</html>
