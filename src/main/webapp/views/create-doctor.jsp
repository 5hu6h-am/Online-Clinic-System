<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Doctor details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
            color: #333;
            text-align: center;
            
        }

        form {
            margin: 0 auto;
            width: 50%;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            display: block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            border: none;
            cursor: pointer;
        }
        .home-button {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>
    <h1>Add doctor details</h1>
    
    <a href="/admin/doctors" class="home-button">Home</a>

    <form method="post" action="save">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required placeholder="Enter name of Doctor">

        <label for="qualification">Qualification:</label>
        <input type="text" id="qualification" name="qualification" required placeholder="Enter qualification of Doctor">

        <label for="experience">Experience(in years):</label>
        <input type="text" id="experience" name="experience" pattern="[0-9]" required placeholder="Enter experience in years">

        <label for="specialization">Specialization:</label>
        <input type="text" id="specialization" name="specialization" required placeholder="Enter specialization of Doctor">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" placeholder="Enter a valid email address">

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" pattern="[0-9]{10}" required placeholder="Enter a 10-digit phone number">

        <input type="submit" value="Create">
    </form>
</body>
</html>
