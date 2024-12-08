<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>View All Courses</title>
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
            align-items: center;
            padding: 10px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar .brand {
            display: flex;
            align-items: center;
            color: white;
            font-size: 20px;
            font-weight: bold;
            text-decoration: none;
        }

        .navbar .brand img {
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }

        .navbar .left,
        .navbar .right {
            display: flex;
            gap: 15px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s;
            font-size: 16px;
        }

        .navbar a:hover {
            background-color: #575757;
        }

        h2 {
            color: #333;
            margin-top: 20px;
            text-align: center;
            font-size: 24px;
        }

        /* Table styling */
        table {
            width: 90%;
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

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .navbar {
                flex-wrap: wrap;
                justify-content: center;
            }

            table {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <!-- Left side with brand -->
        <a href="#" class="brand">
            <img src="logo.png" alt=""> EDULearn
        </a>
        <div class="left">
           
        </div>
        <div class="right">
            <a href="adminhome.jsp">Home</a>
            <a href="addcourse.jsp">Add Course</a>
			
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
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
