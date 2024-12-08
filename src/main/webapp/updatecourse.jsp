<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Course</title>
    <style>
        /* Reset Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Navbar Styles */
        .navbar {
            width: 100%;
            background-color: #333; /* Dark gray */
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            color: white;
        }

        .navbar .logo {
            display: flex;
            align-items: center;
        }

        .navbar .logo img {
            width: 40px; /* Adjust the size of the logo */
            margin-right: 10px;
        }

        .navbar .logo span {
            font-size: 1.5rem;
            font-weight: bold;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .navbar ul li {
            display: inline;
        }

        .navbar ul li a {
            text-decoration: none;
            color: white;
            font-size: 1rem;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .navbar ul li a:hover {
            color: #ffd700; /* Golden hover effect */
        }

        /* Form Container */
        .form-container {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 30px;
            width: 100%;
            max-width: 800px;
            margin-top: 50px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 1.8rem;
            color: #00796b;
        }

        form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 1rem;
        }

        input, textarea, button {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 1rem;
        }

        textarea {
            resize: none;
            height: 80px;
        }

        input:focus, textarea:focus {
            outline: none;
            border-color: #007bff;
        }

        .full-width {
            grid-column: 1 / 3; /* Span both columns */
        }

        button {
            background-color: #008000;
            color: white;
            border: none;
            font-weight: bold;
            cursor: pointer;
            padding: 12px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        .button-group {
            display: flex;
            justify-content: center;
            gap: 20px;
            grid-column: 1 / 3; /* Center the buttons across both columns */
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">
            <img src="<%= request.getContextPath() %>/resources/images/icon.png" alt=""> <!-- Adjust the path as needed -->
            <span>EDUlearn</span>
        </div>
        <ul>
            <li><a href="<%= request.getContextPath() %>/view-course">View Course</a></li>
            <li><a href="<%= request.getContextPath() %>/adminhome">Back</a></li>
        </ul>
    </div>

    <!-- Form Container -->
    <div class="form-container">
        <h2>Update Course</h2>
        <form action="<%= request.getContextPath() %>/update" method="POST">
            <div>
                <label for="id">Course ID:</label>
                <input type="text" name="id" id="id" placeholder="Enter Course ID" required>
            </div>
            <div>
                <label for="courseId">Course Code:</label>
                <input type="text" name="courseId" id="courseId" placeholder="Enter Course Code" required>
            </div>
            <div>
                <label for="courseName">Course Name:</label>
                <input type="text" name="courseName" id="courseName" placeholder="Enter Course Name" required>
            </div>
            <div>
                <label for="category">Category:</label>
                <input type="text" name="category" id="category" placeholder="Enter Category">
            </div>
            <div>
                <label for="courseCreator">Creator:</label>
                <input type="text" name="courseCreator" id="courseCreator" placeholder="Enter Course Creator">
            </div>
            <div>
                <label for="startDate">Start Date:</label>
                <input type="date" name="startDate" id="startDate" required>
            </div>
            <div>
                <label for="endDate">End Date:</label>
                <input type="date" name="endDate" id="endDate" required>
            </div>
            <div class="full-width">
                <label for="courseDescription">Description:</label>
                <textarea name="courseDescription" id="courseDescription" placeholder="Enter Course Description"></textarea>
            </div>
            <div class="button-group">
                <button type="submit">Update Course</button>
                <button type="reset">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>
