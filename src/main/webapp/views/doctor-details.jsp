<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor Details</title>
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
            width: 50%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            border: 1px solid #ccc;
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
    <h1>Doctor Details</h1>
    
    <a href="/admin/doctors" class="home-button">Home</a>

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
        <tr>
            <td>${doctor.id}</td>
            <td>${doctor.name}</td>
            <td>${doctor.qualification}</td>
            <td>${doctor.experience}</td>
            <td>${doctor.specialization}</td>
            <td>${doctor.email}</td>
            <td>${doctor.phone}</td>
        </tr>
    </table>
</body>
</html>
