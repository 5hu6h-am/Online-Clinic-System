<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Suggested Doctor</title>
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
        
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
        }
        
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Suggested Doctor</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Qualification</th>
            <th>Experience(in years)</th>
            <th>Specialization</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
        <c:forEach items="${doctor}" var="doctor">
            <tr>
                <td>${doctor.id}</td>
                <td>${doctor.name}</td>
                <td>${doctor.qualification}</td>
                <td>${doctor.experience}</td>
                <td>${doctor.specialization}</td>
                <td>${doctor.email}</td>
                <td>${doctor.phone}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
