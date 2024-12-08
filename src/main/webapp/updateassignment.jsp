<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Assignment</title>

    <!-- Link to Google Fonts to include Poppins -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background-color: #2C3E50;
            color: white;
            padding: 20px;
            height: 100vh;
            position: fixed;
        }

        .logo {
            font-size: 24px;
            font-weight: 600;
            text-align: center;
            margin-bottom: 40px;
        }

        nav ul {
            list-style: none;
            padding: 0;
        }

        nav ul li {
            margin: 20px 0;
        }

        nav ul li a {
            text-decoration: none;
            color: white;
            font-size: 16px;
            display: block;
            padding: 10px;
            border-radius: 5px;
        }

        nav ul li a:hover {
            background-color: #34495E;
        }

        /* Main Content Styles */
        .main-content {
            margin-left: 250px;
            padding: 40px;
            width: 100%;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .search-bar input {
            padding: 10px;
            font-size: 16px;
            width: 200px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .profile {
            display: flex;
            align-items: center;
        }

        .profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .profile span {
            font-size: 16px;
            color: #333;
        }

        .form-container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 30px;
        }

        .form-section {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        .form-section div {
            width: 48%;
        }

        label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
            font-weight: 500;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        textarea,
        input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        textarea {
            resize: vertical;
            height: 100px;
        }

        button {
            background-color: #2C3E50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #34495E;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .form-section {
                flex-direction: column;
            }

            .form-section div {
                width: 100%;
            }

            .main-content {
                margin-left: 0;
            }
        }
    </style>

</head>
<body>

    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="logo">EDULearn</div>
            <nav>
                <ul>
                    <li><a href="#">Dashboard</a></li>
                    <li><a href="addassignment">Upload Assignments</a></li>
                    <li><a href="viewallassignments">View Assignments</a></li>
                    <li><a href="#">View Submissions</a></li>
                </ul>
                <ul>
                    <li><a href="adminhome">Logout</a></li>
                    <li><a href="#">Messages</a></li>
                    <li><a href="#">Profile</a></li>
                    <li><a href="#">Help</a></li>
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

            <!-- Update Assignment Form -->
            <div class="form-container">
                <h2>Update Assignment</h2>
                <form action="updateassignment" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="id" value="${assignment.id}" />
                    
                    <!-- First Section -->
                    <div class="form-section">
                        <div>
                            <label for="title">Title:</label>
                            <input type="text" name="title" value="${assignment.title}" required /><br>
                            
                            <label for="description">Description:</label>
                            <textarea name="description" required>${assignment.description}</textarea><br>
                            
                            <label for="courseCode">Course Code:</label>
                            <input type="text" name="courseCode" value="${assignment.courseCode}" required /><br>
                            
                            <label for="dueDate">Due Date:</label>
                            <input type="date" name="dueDate" value="${assignment.dueDate}" required /><br>
                        </div>

                        <div>
                            <label for="totalMarks">Total Marks:</label>
                            <input type="number" name="totalMarks" value="${assignment.totalMarks}" required /><br>
                            
                            <label for="uploadType">Upload Type:</label>
                            <input type="text" name="uploadType" value="${assignment.uploadType}" required /><br>
                            
                            <label for="tags">Tags:</label>
                            <input type="text" name="tags" value="${assignment.tags}" required /><br>
                            
                            <label for="questionPdf">Question PDF:</label>
                            <input type="file" name="questionPdf" /><br>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit">Update Assignment</button>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
