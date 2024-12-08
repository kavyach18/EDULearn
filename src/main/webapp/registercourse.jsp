<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Register Courses</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        /* Navbar styles */
        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            display: block;
        }

        .navbar a:hover {
            background-color: #575757;
            color: white;
        }

        .navbar .left, .navbar .right {
            display: flex;
        }

        .navbar .right {
            justify-content: flex-end;
        }

        h2 {
            color: #333;
            margin-top: 20px;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #ffffff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4caf50;
            color: #ffffff;
            font-size: 14px;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td {
            color: #555;
            font-size: 14px;
        }

        /* Center container adjustments */
        div {
            text-align: center;
            width: 100%;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="left">
            <a href="#">Home</a>
           
            
        </div>
        <div class="right">
            <a href="studenthome.jsp">Back</a>
        </div>
    </div>

    <!-- Table Section -->
    <div>
        <h2>All Courses</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Description</th>
                <th>Category</th>
                <th>Course Creator</th>
                <th>Start Date</th>
                <th>End Date</th>
				<th>Register</th>
            </tr>
            <c:forEach var="course" items="${courses}">
                <tr>
                    <td>${course.id}</td>
                    <td>${course.courseId}</td>
                    <td>${course.courseName}</td>
                    <td>${course.courseDescription}</td>
                    <td>${course.category}</td>
                    <td>${course.courseCreator}</td>
                    <td>${course.startDate}</td>
                    <td>${course.endDate}</td>
					<td> <a href = "#" > register</a></td> 
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
