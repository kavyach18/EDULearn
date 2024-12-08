<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Profile</title>
    <style>
        /* General body styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7f6;
        }

        /* Navigation Bar */
        nav {
            background-color: #333;
            padding: 10px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 100;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            text-align: center;
        }

        nav ul li {
            display: inline;
        }

        nav ul li a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }

        nav ul li a:hover {
            background-color: #4CAF50;
            border-radius: 4px;
        }

        /* Add space below the navbar for the content */
        .content {
            margin-top: 80px;
        }

        /* Container to center the content */
        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Title style */
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            font-size: 16px;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) td {
            background-color: #f1f1f1;
        }

        tr:hover td {
            background-color: #f0f0f0;
        }

        /* Button styles */
        .button {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            padding: 12px 24px;
            border-radius: 5px;
            font-size: 16px;
            text-align: center;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #45a049;
        }

        .button:active {
            background-color: #3e8e41;
        }

        /* Mobile responsiveness */
        @media (max-width: 768px) {
            nav ul li a {
                padding: 10px 14px;
                font-size: 14px;
            }

            .container {
                padding: 10px;
            }

            table {
                width: 100%;
            }

            .button {
                width: 100%;
                padding: 15px 20px;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav>
        <ul>
            
            <li><a href="viewallcourses">Courses</a></li>
            <li><a href="studenthome.jsp">Logout</a></li>
        </ul>
    </nav>

    <!-- Content Section -->
    <div class="content">
        <div class="container">
            <h1>Student Profile</h1>

            <c:if test="${not empty sessionScope.stud}">
                <table>
                    <tr>
                        <th>ID</th>
                        <td>${sessionScope.stud.id}</td>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <td>${sessionScope.stud.name}</td>
                    </tr>
                    <tr>
                        <th>Gender</th>
                        <td>${sessionScope.stud.gender}</td>
                    </tr>
                    <tr>
                        <th>Department</th>
                        <td>${sessionScope.stud.department}</td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td>${sessionScope.stud.email}</td>
                    </tr>
                    <tr>
                        <th>Contact</th>
                        <td>${sessionScope.stud.contact}</td>
                    </tr>
                </table>

                <a href="updatestudent" class="button">Update Profile</a>
            </c:if>
        </div>
    </div>
</body>
</html>
