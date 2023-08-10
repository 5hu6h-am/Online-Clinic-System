<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Appointments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
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
        
        .home-button {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>
    <h1>Appointments</h1>
    
    <a href="/admin/doctors" class="home-button">Home</a>

    <table>
        <tr>
            <th>Appointment ID</th>
            <th>Patient Name</th>
            <th>Patient Phone</th>
            <th>Patient Address</th>
            <th>Symptoms</th>
            <th>Doctor Assigned</th>
            <th>Appointment Date</th>
            <th>Appointment Time</th>
        </tr>
        <c:forEach items="${appointments}" var="appointment">
            <tr>
                <td>${appointment.appointmentId}</td>
                <td>${appointment.patientName}</td>
                <td>${appointment.patientPhone}</td>
                <td>${appointment.patientAddress}</td>
                <td>${appointment.symptoms}</td>
                <td>${appointment.doctorAssigned}</td>
                <td>${appointment.appointmentDate}</td>
                <td>${appointment.appointmentTime}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
