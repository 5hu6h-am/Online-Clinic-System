<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Delete doctor details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        label {
            display: inline-block;
            width: 150px;
            text-align: right;
        }

        input[type="text"] {
            padding: 5px;
            width: 250px;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #f44336;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #d32f2f;
        }
        
        .home-button {
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .error-message {
            color: red;
        }
    </style>
</head>
<body>
    <h2>Delete doctor details</h2>
    
    <a href="/admin/doctors" class="home-button">Home</a>

    <form action="/admin/doctors/id/delete" method="Get">
        <label for="id">Doctor ID:</label>
        <input type="text" id="id" name="id" pattern="[0-9]+" required placeholder="Enter a valid Doctor ID"><br>
        <span id="errorMessage" class="error-message"></span><br><br>
        
    <c:if test="${not empty errorMessage}">
        <p class="error-message">${errorMessage}</p>
    </c:if>

        <button type="submit">Delete</button>
    </form>
</body>
</html>

    