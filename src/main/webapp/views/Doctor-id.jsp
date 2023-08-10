<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Doctor Details</title>
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
            width: 100px;
            text-align: right;
        }

        input[type="text"] {
            padding: 5px;
            width: 200px;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
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
    <h2>Update Doctor Details</h2>
    
    <a href="/admin/doctors" class="home-button">Home</a>

    <form action="/admin/doctors/id/edit" method="Get">
        <label for="id">Doctor ID:</label>
        <input type="text" id="id" name="id" pattern="[0-9]+" required placeholder="Enter a valid Doctor ID"><br><br>
        <span id="errorMessage" class="error-message"></span><br><br>
     
    <c:if test="${not empty errorMessage}">
        <p class="error-message">${errorMessage}</p>
    </c:if>
        
        <button type="submit" >Update</button>
    </form>

</body>
</html>
