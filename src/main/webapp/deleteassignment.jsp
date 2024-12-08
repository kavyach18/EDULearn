<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Assignment</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        .container {
            display: flex;
            height: 100vh;
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background-color: #2C3E50;
            color: #fff;
            padding: 20px;
            box-shadow: 4px 0 6px rgba(0, 0, 0, 0.1);
            position: fixed;
            height: 100%;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 20px;
            text-align: center;
        }

        .sidebar nav ul {
            list-style: none;
            padding: 0;
        }

        .sidebar nav ul li {
            margin: 15px 0;
        }

        .sidebar nav ul li a {
            color: #ecf0f1;
            text-decoration: none;
            font-size: 1rem;
            display: block;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .sidebar nav ul li a:hover {
            background-color: #34495E;
        }

        /* Main Content Styles */
        .main-content {
            margin-left: 250px;
            padding: 30px;
            width: 100%;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .search-bar input {
            padding: 8px 12px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 250px;
        }

        .profile {
            display: flex;
            align-items: center;
        }

        .profile img {
            width: 35px;
            height: 35px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .profile span {
            font-weight: 500;
            color: #2C3E50;
        }

        /* Form Container Styles */
        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 0 auto;
        }

        .form-container h2 {
            font-size: 1.5rem;
            color: #34495E;
            margin-bottom: 20px;
        }

        .form-container label {
            display: block;
            font-size: 1rem;
            margin-bottom: 8px;
            color: #34495E;
        }

        .form-container input[type="text"] {
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .form-container button {
            background-color: #E74C3C;
            color: #fff;
            border: none;
            padding: 12px 20px;
            font-size: 1.1rem;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .form-container button:hover {
            background-color: #C0392B;
        }

    </style>
</head>
<body>

    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="logo">GradeMate</div>
            <nav>
                <ul>
                    <li><a href="#">Dashboard</a></li>
                    <li><a href="addassignment">Upload Assignments</a></li>
                    <li><a href="updateassignment">Update Assignments</a></li>
                    
                    <li><a href="viewallassignments">View Assignments</a></li>
                    <li><a href="viewAssignments">View Submissions</a></li>
                    <li><a href="viewAssignments">Grade Assignments</a></li>
                </ul>
                <ul>
                    <li><a href="adminhome">Logout</a></li>
                    <li><a href="#">Messages</a></li>
                    <li><a href="#">Profile</a></li>
                    <li><a href="contactus.jsp">Help</a></li>
                </ul>
            </nav>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <!-- Header -->
            <header>
                <div class="search-bar">
                    <input type="text" placeholder="Search">
                </div>

                <div class="profile">
                    <img src="images/profile.png" alt="">
                    
                </div>
            </header>

            <!-- Delete Assignment Form -->
            <div class="form-container">
                <h2>Delete Assignment</h2>
                <form action="delete" method="post">
                    <label for="id">Assignment ID:</label>
                    <input type="text" id="id" name="id" required/><br/><br/>

                    <button type="submit">Delete Assignment</button>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
