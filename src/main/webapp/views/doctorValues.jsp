<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Select Doctor and Appointment Date</title>
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

        select, input[type="submit"] {
            padding: 5px;
            width: 250px;
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
        .home-button {
            position: absolute;
            top: 10px;
            right: 10px;
        }
        .error-message{
        	color: red;
        }
    </style>
</head>
<body>
    <h2>Select Doctor and Appointment Date</h2>
    
    <a href="/admin/doctors" class="home-button">Home</a>
    
    <form action="/admin/doctors/appointments" method="get">
        <label for="doctorAssigned">Doctor Assigned:</label>
        <select name="doctorAssigned" id="doctorAssigned">
            <c:forEach items="${doctorNames}" var="doctor">
                <option value="${doctor}">${doctor}</option>
            </c:forEach>
        </select><br><br>
        
        <label for="appointmentDate">Appointment Date:</label>
        <select name="appointmentDate" id="appointmentDate">
            <c:forEach items="${appointmentDates}" var="date">
                <option value="${date}">${date}</option>
            </c:forEach>
        </select><br><br>
        <c:if test="${not empty errorMessage}">
            <p class="error-message">${errorMessage}</p>
        </c:if>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
