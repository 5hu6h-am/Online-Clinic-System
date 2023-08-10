<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Password</title>
    <style>
        html, body {
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

        input[type="password"] {
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
        <h2>Update Password</h2>
        <a href="/admin/doctors" class="home-button">Home</a>
        
        
        <form action="/update-password" method="post">
            <input type="hidden" name="email" value="${email}" required>
            
            <label for="password">New Password:</label>
            <input type="password" id="password" name="password" pattern="^(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{6,}$" required placeholder="Atleast a capital, a small letter, a special character and a number (length greater than 5)"><br><br>
            
            <label for="confirm-password">Confirm New Password:</label>
            <input type="password" id="confirm-password" name="confirmPassword" required placeholder="Confirm your new password"><br><br>
            
            
            <button type="submit">Update Password</button>
        </form>
        
        <p style="color: green;">${successMessage}</p>
   		<p style="color: red;">${errorMessage}</p>
   		
    </div>
</body>
</html>

