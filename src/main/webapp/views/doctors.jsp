<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Doctors List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-image: url('/images/blur-hospital.jpg');
            background-size: cover;
            background-position: center   
	    }

        h1 {
            color: #333;
            text-align: center;
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
    </style>
</head>
<body>
    <h1>Doctors List</h1>

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
        <c:forEach items="${doctors}" var="doctor">
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
    
     <div>
        <a href="doctors/new" class="button">Add Doctor</a>
        <a href="doctors/doctor-id" class="button">Update Doctor Details</a>
        <a href="doctors/doctor-id-delete" class="button">Delete Doctor</a>
        <a href="doctors/view" class="button">View Doctor</a>
        <a href="doctors/values" class="button">Appointments</a>
        <a href="/admin/doctors/patients" class="button">All patients</a>
        <a href="/admin/password-reset" class="button">Update Password</a>
        <a href="/admin/logout" class="button">Logout</a>
    </div> 
</body>
</html>
