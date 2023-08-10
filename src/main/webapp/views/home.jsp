<!DOCTYPE html>
<html>
<head>
    <title>Online Clinic System</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('/images/blur-hospital.jpg');
            background-size: cover;
            background-position: center      
		}

        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 30px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            font-size: 28px;
            margin-top: 0;
            text-align: center;
        }

        .description {
            margin-bottom: 30px;
            color: #555;
            font-size: 18px;
            text-align: justify;
        }

        .button {
            display: block;
            width: 100%;
            max-width: 300px;
            margin: 0 auto;
            padding: 12px 20px;
            font-size: 16px;
            text-align: center;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            
        }

        .button:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Online Clinic System</h1>
        <div class="description">
            <p>Welcome to Online Clinic System, a trusted healthcare provider dedicated to delivering high-quality medical services. Our experienced team of doctors, nurses, and staff are committed to providing comprehensive care to our patients.</p>
            <p>At Online Clinic System, we prioritize your well-being and offer a wide range of medical treatments and services to address your healthcare needs. Whether you require routine check-ups, specialized consultations, or advanced medical procedures, we are here to support you every step of the way.</p>
            <p>Our state-of-the-art facilities are equipped with the latest medical technologies, ensuring accurate diagnoses and effective treatments. We maintain a warm and comfortable environment to make your visit as pleasant as possible.</p>
        </div>
        <a href="/admin/login" class="button">Admin Login</a>
        <br>
        <a href="/admin/doctors/specialization" class="button">Patient</a>
    </div>
</body>
</html>

