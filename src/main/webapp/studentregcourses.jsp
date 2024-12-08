<!DOCTYPE html>
<html>
<head>
    <title>View Courses</title>
</head>
<body>
    <h1>Available Courses</h1>
    <table border="1">
        <tr>
            <th>Course ID</th>
            <th>Course Name</th>
            <th>Course Description</th>
            <th>Category</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Action</th>
        </tr>
        <c:forEach var="course" items="${courses}">
            <tr>
                <td>${course.courseId}</td>
                <td>${course.courseName}</td>
                <td>${course.courseDescription}</td>
                <td>${course.category}</td>
                <td>${course.startDate}</td>
                <td>${course.endDate}</td>
                <td>
                    <form action="/register" method="post">
                        <input type="hidden" name="courseId" value="${course.courseId}" />
                        <input type="submit" value="Register" />
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
	