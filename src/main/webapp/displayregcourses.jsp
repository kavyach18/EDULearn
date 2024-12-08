<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Courses</title>
</head>
<body>
    <h2>My Registered Courses</h2>
    <ul>
        <c:forEach var="course" items="${registeredCourses}">
            <li>${course.courseName} (${course.courseId})</li>
        </c:forEach>
    </ul>
</body>
</html>
