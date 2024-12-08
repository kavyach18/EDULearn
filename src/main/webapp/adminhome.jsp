<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        /* Reset styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Navbar styling */
        .navbar {
            background-color: #333;
            padding: 1em;
            display: flex;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar .project-title {
            color: white;
            font-size: 1.5rem;
            font-weight: bold;
            display: flex;
            align-items: center;
        }

        .navbar .project-title img {
            height: 40px;
            margin-right: 10px;
        }

        .navbar .nav-links {
            display: flex;
            gap: 10px;
            margin-left: auto;
        }

        .navbar .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 0.5em 1em;
            border-radius: 5px;
        }

        .navbar .nav-links a:hover {
            background-color: #575757;
        }

        /* Dropdown styles */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-toggle {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 0.5em 1em;
            border-radius: 5px;
        }

        .dropdown-toggle:hover {
            background-color: #575757;
            cursor: pointer;
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #333;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            border-radius: 5px;
            overflow: hidden;
        }

        .dropdown:hover .dropdown-menu {
            display: block;
        }

        .dropdown-menu a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-weight: bold;
            border-bottom: 1px solid #575757;
        }

        .dropdown-menu a:hover {
            background-color: #575757;
        }

        .dropdown-menu a:last-child {
            border-bottom: none;
        }

        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            color: #333;
            padding-top: 80px; /* Prevent content overlap with navbar */
        }

        h1 {
            text-align: center;
            margin: 20px 0;
            font-size: 2rem;
            color: #333;
        }

        /* Card Section Styling */
        .cards-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); /* Flexible layout */
            gap: 20px;
            padding: 20px;
            justify-content: center;
        }

        .card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .card-header {
            background-color: #00796b;
            color: white;
            padding: 20px;
            font-size: 1.2rem;
            font-weight: bold;
        }

        .card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }

        .card-body {
            padding: 15px;
        }

        .card-body h5 {
            font-size: 1.2rem;
            margin-bottom: 10px;
            color: #333;
        }

        .card-body p {
            font-size: 1rem;
            color: #555;
            margin-bottom: 15px;
        }

        .card-body .btn {
            display: inline-block;
            background-color: #ff7043;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
        }

        .card-body .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="project-title">
            <img src="logo.png" alt="Logo">
            EDUlearn
        </div>
        <div class="nav-links">
            <a href="addcourse">Add Course</a>
            <a href="viewallcourses">View All Courses</a>
            <a href="updatecourse">Update Course</a>
            <a href="deletecourse">Delete Course</a>

            <!-- Grading Dropdown -->
            <div class="dropdown">
                <a href="#" class="dropdown-toggle">Assignments</a>
                <div class="dropdown-menu">
                    <a href="addassignment.jsp">Add Assignment</a>
                    <a href="updateassignment.jsp">Update Assignment</a>
                    <a href="deleteassignment.jsp">Delete Assignment</a>
                    <a href="viewallassignments">View Assignments</a>
                </div>
            </div>

            
            <a href="adminlogin">Logout</a>
        </div>
    </div>

    <!-- Header -->
    <h1>Admin Dashboard</h1>

    <!-- Cards Section -->
    <div class="cards-container">
        <!-- Card 1 -->
        <div class="card">
            <div class="card-header">Add Course</div>
            <div class="card-body">
                <h5>Add New Courses</h5>
                <p>Create new courses and manage their details effortlessly.</p>
                <a href="addcourse" class="btn">Add Course</a>
            </div>
			
			
			<div class="card">
			            <div class="card-header">Update Course</div>
			            <div class="card-body">
			                <h5>Update Existing Courses</h5>
			                <p>Edit course details and keep them up-to-date with ease.</p>
			                <a href="updatecourse" class="btn">Update Course</a>
			            </div>
			        </div>
        </div>
        
        <!-- Card 2 -->
        <div class="card">
            <div class="card-header">View All Courses</div>
            <div class="card-body">
                <h5>Update Existing Courses</h5>
                <p>Edit course details and keep them up-to-date with ease.</p>
                <a href="updatecourse" class="btn">Update Course</a>
            </div>
			<div class="card">
			            <div class="card-header">Update Course</div>
			            <div class="card-body">
			                <h5>Update Existing Courses</h5>
			                <p>Edit course details and keep them up-to-date with ease.</p>
			                <a href="updatecourse" class="btn">Update Course</a>
			            </div>
			        </div>
        </div>
        
        <!-- Card 3 -->
        <div class="card">
            <div class="card-header">Delete Course</div>
            <div class="card-body">
                <h5>Remove Courses</h5>
                <p>Delete courses that are no longer active.</p>
                <a href="deletecourse" class="btn">Delete Course</a>
            </div>
			<div class="card">
			            <div class="card-header">Update Course</div>
			            <div class="card-body">
			                <h5>Update Existing Courses</h5>
			                <p>Edit course details and keep them up-to-date with ease.</p>
			                <a href="updatecourse" class="btn">Update Course</a>
			            </div>
			        </div>
					
        </div>
    </div>
</body>
</html>
