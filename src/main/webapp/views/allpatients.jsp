<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>All Patients</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 80%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            border: none;
            cursor: pointer;
        }

        .button:hover {
            background-color: #45a049;
        }
        .home-button {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>
    <h2>All Patients</h2>
    
    <a href="/admin/doctors" class="home-button">Home</a>
    
    <table>
        <tr>
            <th>Appointment ID</th>
            <th>Patient Name</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Symptoms</th>
            <th>Doctor Assigned</th>
            <th>Appointment Date</th>
            <th>Appointment Time</th>
        </tr>
        <c:forEach items="${patients}" var="patient">
            <tr>
                <td>${patient.appointmentId}</td>
                <td>${patient.patientName}</td>
                <td>${patient.patientPhone}</td>
                <td>${patient.patientAddress}</td>
                <td>${patient.symptoms}</td>
                <td>${patient.doctorAssigned}</td>
                <td>${patient.appointmentDate}</td>
                <td>${patient.appointmentTime}</td>
            </tr>
        </c:forEach>
    </table>

    <div>
        <a href="/admin/doctors/patients" class="button">Refresh</a>
    </div>
</body>
</html>
