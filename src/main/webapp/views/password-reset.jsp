<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Password Reset</title>
    <style>
        body {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            width: 400px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333333;
            margin-top: 0;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555555;
        }

        input[type="email"],
        input[type="date"] {
            width: 100%;
            padding: 5px;
            border: 1px solid #cccccc;
            border-radius: 3px;
            font-size: 14px;
        }

        button[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #ffffff;
            border: none;
            border-radius: 3px;
            font-size: 14px;
            cursor: pointer;
        }

        p {
            color: #ff0000;
            margin-top: 10px;
        }
        .home-button {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Password Reset</h2>
        <a href="/admin/doctors" class="home-button">Home</a>
        
         
        <form action="/password-reset" method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" required placeholder="Enter a valid email"><br><br>
            
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required placeholder="Enter Date of birth"><br><br>
            
            <button type="submit">Reset Password</button>
        </form>
        
        <p>${errorMessage}</p>
    </div>
</body>
</html>


    