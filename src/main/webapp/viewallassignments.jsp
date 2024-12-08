<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Assignments</title>

    <!-- Link to Google Fonts for Poppins -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
            color: #333;
        }

        /* Container */
        .container {
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar */
        .sidebar {
            width: 250px;
            background-color: #2C3E50;
            color: #fff;
            padding: 20px;
            height: 100vh;
            position: fixed;
        }

        .sidebar .logo {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 30px;
            text-align: center;
        }

        .sidebar nav ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar nav ul li {
            margin: 20px 0;
        }

        .sidebar nav ul li a {
            color: #ecf0f1;
            text-decoration: none;
            font-size: 18px;
            display: block;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .sidebar nav ul li a:hover {
            background-color: #2980B9;
        }

        /* Main Content */
        .main-content {
            margin-left: 250px;
            padding: 30px;
            width: 100%;
            background-color: #fff;
            flex-grow: 1;
        }

        /* Header */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-bottom: 20px;
            border-bottom: 2px solid #ecf0f1;
            margin-bottom: 20px;
        }

        .header .title {
            font-size: 30px;
            font-weight: 600;
            color: #34495E;
        }

        .search-bar input {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 250px;
        }

        .search-bar input:focus {
            outline: none;
            border-color: #2980B9;
        }

        /* Table */
        .table-container table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table-container table th, .table-container table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .table-container table th {
            background-color: #2C3E50;
            color: white;
        }

        .table-container table td a {
            color: #2980B9;
            text-decoration: none;
            font-weight: 500;
        }

        .table-container table td a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

            .main-content {
                margin-left: 0;
            }

            .header {
                flex-direction: column;
                align-items: flex-start;
            }

            .search-bar input {
                width: 100%;
                margin-top: 10px;
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
                    <li><a href="edashboard">Dashboard</a></li>
                    
					<li><a href="updateassignment.jsp">Update Assignments</a></li>
                    <li><a href="student_assignments">View Submissions</a></li>
					
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
            <!-- Header Section -->
            <div class="header">
                <div class="title">All Assignments</div> <!-- Title styled here -->
                <form action="viewallassignments" method="GET" class="search-bar">
                    <input type="text" name="courseCode" placeholder="Search by Course Code..." value="${param.courseCode}">
                </form>
            </div>

            <!-- Table Section -->
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Assignment ID</th>
                            <th>Title</th>
                            <th>Course Code</th>
                            <th>Description</th>
                            <th>Due Date</th>
                            <th>Question PDF</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="assignment" items="${assignments}">
                            <tr>
                                <td>${assignment.id}</td>
                                <td>${assignment.title}</td>
                                <td>${assignment.courseCode}</td>
                                <td>${assignment.description}</td>
                                <td>${assignment.dueDate}</td>
                                <td>
                                    <a href="download?fileName=${fn:escapeXml(assignment.questionPdfPath)}">Download PDF</a>
                                </td>
                                <td>
                                    <a href="updateassignment?id=${assignment.id}">Update</a> |
                                    <a href="deleteassignment?id=${assignment.id}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>
