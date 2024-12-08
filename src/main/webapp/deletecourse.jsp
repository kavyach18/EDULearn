<!DOCTYPE html>
<html lang="en">
<head>
    <title>Delete Course</title>
    <style>
        /* General Body Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Navbar Styling */
        .navbar {
            width: 100%;
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 16px;
        }

        .navbar a:hover {
            background-color: #575757;
        }

        .navbar a.active {
            background-color: #4caf50;
        }

        /* Form Container Styling */
        .form-container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 100%;
            max-width: 400px;
            margin-top: 40px;
        }

        h2 {
            color: #00796b;
            font-size: 24px;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 16px;
            color: #333;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        button {
            background-color: #ff7043;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #b71c1c;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .form-container {
                padding: 20px;
            }

            .navbar a {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
  
    <!-- Navbar -->
    <div class="navbar">
        <a href="adminhome" class="active">Home</a>
        <a href="addcourse">Add Course</a>
        <a href="viewallcourses">View Courses</a>
       
        <a href="adminhome">Back</a>
    </div>

    <!-- Form Container -->
    <div class="form-container">
        <h2>Delete Course</h2>
        <form action="delete" method="POST">
            <label>Course ID to Delete:</label>
            <input type="text" name="id" placeholder="Enter Course ID" required>
            <button type="submit">Delete Course</button>
        </form>
    </div>
</body>
</html>