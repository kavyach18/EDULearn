<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        /* General body styling */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #ffffff; /* Set entire background to white */
        }

        /* Navbar styling */
		.navbar {
		    background-color: #333;
		    display: flex; /* Use flexbox for alignment */
		    justify-content: flex-end; /* Align navbar items to the right */
		    padding: 10px 20px; /* Add padding for better spacing */
		}

		.navbar a {
		    display: block;
		    color: #f2f2f2;
		    text-align: center;
		    padding: 14px 20px;
		    text-decoration: none;
		    font-size: 17px;
		}

		.navbar a:hover {
		    background-color: #ddd;
		    color: black;
		}

        /* Container for the layout */
        .main-container {
            display: flex;
            height: calc(100vh - 50px); /* Adjust for navbar height */
        }

        /* Left side styling for image */
        .left-side {
            flex: 1;
            background-image: url('adminloginimg.jpg'); /* Replace with your image file path */
            background-size: contain; /* Adjust to fit without cropping */
            background-repeat: no-repeat;
            background-position: center;
        }

        /* Right side styling for login form */
        .right-side {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Enhanced styling for the login container */
        .login-container {
            background-color: #f9f9f9; /* Light gray background for the form */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2); /* Deeper shadow for a modern effect */
            width: 350px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .login-container:hover {
            transform: scale(1.02); /* Slight zoom effect on hover */
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3); /* Intensify shadow on hover */
        }

        /* Title styling */
        .login-container h2 {
            color: #444; /* Softer shade of black for text */
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 25px;
        }

        /* Label styling */
        .login-container label {
            text-align: left;
            margin-bottom: 5px;
            color: #666; /* Muted text color for labels */
            font-size: 14px;
            font-weight: 600;
        }

        /* Input field styling */
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%; /* Utilize full width of the form */
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px; /* Rounded corners */
            font-size: 16px;
            margin-bottom: 20px;
            box-sizing: border-box;
            background-color: #fff;
            transition: border-color 0.3s;
        }

        .login-container input[type="text"]:focus,
        .login-container input[type="password"]:focus {
            border-color: #0056b3; /* Change border color on focus */
            outline: none; /* Remove default outline */
        }

        /* Button styling (Green color) */
        .login-container button {
            width: 100%;
            padding: 14px;
            background-color: #28a745; /* Green color */
            border: none;
            border-radius: 8px; /* Rounded corners */
            color: white;
            font-weight: bold;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, box-shadow 0.3s;
        }

        .login-container button:hover {
            background-color: #218838; /* Darker green on hover */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Add shadow on hover */
        }

        /* Error message styling */
        .login-container .error-message {
            color: #d9534f; /* Bright red for errors */
            margin-top: 15px;
            font-size: 14px;
            font-weight: 600;
        }

        /* Back button styling */
        .back-button {
            position: absolute;
            top: 20px; /* Top margin */
            right: 20px; /* Move to the right */
            padding: 8px 16px;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #0056b3;
        }

        /* Project name styling */
        .project-name {
            position: absolute;
            top: 20px;
            left: 100px;
            font-size: 24px;
            font-weight: bold;
            color: #ffffff;
            display: flex;
            align-items: center;
        }

        .project-name img {
            height: 30px;
            margin-right: 10px;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="/">Home</a>
        
        
    </div>

    

    <!-- Project name with logo -->
    <div class="project-name">
        <img src="logo.png" alt="Logo"> EDULearn
    </div>

    <!-- Main content container -->
    <div class="main-container">
        <!-- Left side for image -->
        <div class="left-side"></div>

        <!-- Right side for login form -->
        <div class="right-side">
            <div class="login-container">
                <h2>Admin Login</h2>

                <form action="${pageContext.request.contextPath}/checkadminlogin" method="post">
                    <div>
                        <label for="auname">Username</label>
                        <input type="text" id="auname" name="auname" placeholder="Enter username" required>
                    </div>
                    <div>
                        <label for="apwd">Password</label>
                        <input type="password" id="apwd" name="apwd" placeholder="Enter password" required>
                    </div>
                    <button type="submit">Login</button>
                </form>

                <!-- Error message display -->
                <c:if test="${not empty message}">
                    <p class="error-message">${message}</p>
                </c:if>
            </div>
        </div>
    </div>

</body>
</html>
