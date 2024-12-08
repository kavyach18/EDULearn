<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Course</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
            display: flex; /* Enable Flexbox */
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            height: 100vh; /* Full viewport height */
        }

        /* Navbar Styles */
        .navbar {
            background-color: #333;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .navbar h1 {
            font-size: 20px;
            margin: 0;
            display: flex;
            align-items: center;
            gap: 10px; /* Space between icon and text */
        }

        .navbar h1 img {
            width: 30px;
            height: 30px;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }

        .navbar ul li {
            margin-left: 15px;
        }

        .navbar ul li a {
            color: white;
            text-decoration: none;
            font-size: 14px;
            padding: 8px 12px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .navbar ul li a:hover {
            background-color: #575757;
        }

        /* Body Styles */
        .form-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px 30px;
            max-width: 400px;
            width: 90%;
            text-align: center;
            margin-top: 0; /* Remove the margin as it's no longer needed */
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 14px;
            color: #555;
            text-align: left;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
            font-size: 14px;
            box-sizing: border-box;
        }

        button {
            padding: 10px 15px;
            font-size: 14px;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
        }

        .save-btn {
            background-color: #4caf50;
            transition: background-color 0.3s ease;
        }

        .save-btn:hover {
            background-color: #45a049;
        }

        .clear-btn {
            background-color: #f44336;
            transition: background-color 0.3s ease;
        }

        .clear-btn:hover {
            background-color: #e53935;
        }

        input:focus {
            outline: none;
            border-color: #4caf50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <h1>
            <img src="logo.png" alt=""> EDULearn
        </h1>
        <ul>
            <li><a href="viewallcourses">View All Courses</a></li>
            <li><a href="adminhome.jsp">Back</a></li>
        </ul>
    </div>
    
    <!-- Form Container -->
    <div class="form-container">
        <h2>Add Course</h2>
        <form action="add" method="post">
            <label for="courseId">Course Code:</label>
            <input type="text" id="courseId" name="courseId" required /><br/>

            <label for="courseName">Course Name:</label>
            <input type="text" id="courseName" name="courseName" required /><br/>

            <label for="courseDescription">Description:</label>
            <input type="text" id="courseDescription" name="courseDescription" required /><br/>

            <label for="category">Category:</label>
            <input type="text" id="category" name="category" required /><br/>

            <label for="courseCreator">Course Creator:</label>
            <input type="text" id="courseCreator" name="courseCreator" required /><br/>

            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" required /><br/>

            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" required /><br/>

            <button type="submit" class="save-btn">Save</button>
            <button type="reset" class="clear-btn">Clear</button>
        </form>
    </div>
</body>
</html>
