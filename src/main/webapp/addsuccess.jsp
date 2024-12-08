<!DOCTYPE html>
<html lang="en">
<head>
    <title>Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        h2 {
            color: #4caf50;
            font-size: 24px;
            margin-bottom: 20px;
        }

        a {
            text-decoration: none;
            color: #ffffff;
            background-color: #4caf50;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #45a049;
        }

        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<div class="container">
    <h2>${message}</h2>
    <a href="adminhome">Back to Home</a>
</div>
</body>
</html>
