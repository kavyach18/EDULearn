<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Assignment</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        /* Reset styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            display: flex;
            min-height: 100vh;
            background-color: #f4f4f9;
        }

        /* Sidebar Styling */
        .sidebar {
            width: 250px;
            background-color: #2c3e50;
            color: white;
            padding: 20px;
            height: 100vh;
            position: fixed;
            left: 0;
            top: 0;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 30px;
            text-align: center;
        }

        nav ul {
            list-style: none;
            margin-bottom: 50px;
        }

        nav ul li {
            margin-bottom: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: white;
            font-weight: 500;
            padding: 10px 0;
            display: block;
            transition: 0.3s;
        }

        nav ul li a:hover {
            background-color: #34495e;
            border-radius: 5px;
        }

        /* Main content area */
        .main-content {
            margin-left: 250px;
            padding: 30px;
            width: 100%;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        .search-bar input {
            padding: 10px;
            font-size: 1rem;
            border-radius: 5px;
            border: 1px solid #ddd;
            width: 300px;
        }

        .profile {
            display: flex;
            align-items: center;
            font-weight: 500;
        }

        .profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .profile span {
            font-size: 1rem;
            color: #34495e;
        }

        /* Form Container Styling */
        .form-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 800px;
            margin: auto;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 1.8rem;
            color: #2c3e50;
        }

        .form-section {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 20px;
        }

        .form-section div {
            width: 48%;
        }

        label {
            display: block;
            font-size: 1rem;
            font-weight: 500;
            margin-bottom: 5px;
            color: #2c3e50;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        textarea,
        input[type="file"] {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border-radius: 5px;
            border: 1px solid #ddd;
            margin-bottom: 15px;
            color: #2c3e50;
        }

        textarea {
            height: 100px;
            resize: none;
        }

        button {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #2c3e50;
            color: white;
            font-weight: 600;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background-color: #34495e;
        }

        button:focus {
            outline: none;
        }

        /* Mobile responsiveness */
        @media (max-width: 768px) {
            .form-section {
                flex-direction: column;
            }

            .form-section div {
                width: 100%;
            }

            .main-content {
                margin-left: 0;
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="sidebar">
            <div class="icon">EDULearn</div>
            <nav>
                <ul>
                    <li><a href="edashboard">Dashboard</a></li>
                    <li><a href="updateassignment.jsp">Update Assignments</a></li>
                    <li><a href="viewallassignments">View Assignments</a></li>
                    <li><a href="viewAssignments">View Submissions</a></li>
                </ul>
                <ul>
                    <li><a href="adminhome">Logout</a></li>
                    <li><a href="#">Messages</a></li>
                    <li><a href="#">Profile</a></li>
                    <li><a href="#">Help</a></li>
                </ul>
            </nav>
        </div>

        <div class="main-content">
            <header>
                <div class="search-bar">
                    <input type="text" placeholder="Search">
                </div>
                <div class="profile">
                    <img src="images/profile.png" alt="">
                    
                </div>
            </header>

            <div class="form-container">
                <h2>Add Assignment</h2>
                <form action="adda" method="post" enctype="multipart/form-data">
                    <div class="form-section">
                        <div>
                            <label for="title">Assignment Title:</label>
                            <input type="text" id="title" name="title" required>

                            <label for="description">Description:</label>
                            <textarea id="description" name="description"></textarea>

                            <label for="courseCode">Course Code:</label>
                            <input 
                                type="text" 
                                id="courseCode" 
                                name="courseCode" 
                                value="<%= request.getParameter("courseCode") != null ? request.getParameter("courseCode") : "" %>" 
                                <%= request.getParameter("courseCode") != null ? "readonly" : "" %>
                                required
                            >

                            <label for="dueDate">Due Date:</label>
                            <input type="date" id="dueDate" name="dueDate" required>
                        </div>
                        <div>
                            <label for="totalMarks">Total Marks:</label>
                            <input type="number" id="totalMarks" name="totalMarks" required>

                            <label for="uploadType">Upload Type:</label>
                            <input type="text" id="uploadType" name="uploadType" value="PDF" readonly>

                            <label for="tags">Tags (comma separated):</label>
                            <input type="text" id="tags" name="tags">

                            <label for="questionPdf">Upload Question PDF:</label>
                            <input type="file" id="questionPdf" name="questionPdf" accept=".pdf" required>
                        </div>
                    </div>

                    <button type="submit">Add Assignment</button>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
