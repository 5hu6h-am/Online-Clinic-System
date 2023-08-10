<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Select Doctor Specialization</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        
        h1 {
            color: #333;
            font-size: 28px;
            margin-top: 0;
            text-align: center;
        }
        
        form {
            max-width: 400px;
            margin: 0 auto;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
            color: #555;
        }
        
        select {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        
        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 12px 20px;
            margin-top: 10px;
            font-size: 16px;
            text-align: center;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
	
    <h1>Select Doctor Specialization</h1>
    
    <form action="/admin/doctors/doctorsBySpecialization" method="get">
        <label for="specialization">Select Specialization:</label>
        <select id="specialization" name="specialization">
            <c:forEach items="${specializations}" var="specialization">
                <option value="${specialization}">${specialization}</option>
            </c:forEach>
        </select>
        <br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
