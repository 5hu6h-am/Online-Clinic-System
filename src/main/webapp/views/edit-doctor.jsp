<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Doctor</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        label {
            display: inline-block;
            width: 150px;
            text-align: right;
        }

        input[type="text"],
        input[type="email"] {
            padding: 5px;
            width: 250px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            font-weight: bold;
        }
        .home-button {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>
    <h1>Edit Doctor</h1>
    
    <a href="/admin/doctors" class="home-button">Home</a>

    <form method="post" action="update">
        <input type="hidden" id="id" name="id" value="${doctor.id}">



        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${doctor.name}" required><br><br>

        <label for="qualification">Qualification:</label>
        <input type="text" id="qualification" name="qualification" value="${doctor.qualification}" required><br><br>

        <label for="experience">Experience(in years):</label>
        <input type="text" id="experience" name="experience" value="${doctor.experience}" pattern="[0-9]" required><br><br>

        <label for="specialization">Specialization:</label>
        <input type="text" id="specialization" name="specialization" value="${doctor.specialization}" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${doctor.email}" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"><br><br>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" value="${doctor.phone}" required pattern="[0-9]{10}"><br><br>

        <input type="submit" value="Update">
    </form>
</body>
</html>
