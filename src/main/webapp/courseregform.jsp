<!DOCTYPE html>
<html lang="en">
<head>
    <title>Register for Course</title>
</head>
<body>
    <h2>Register for Courses</h2>
    <form action="registerCourse" method="POST">
        <label for="studentId">Student ID:</label>
        <input type="text" id="studentId" name="studentId" required /><br/><br/>
        
        <label for="courseId">Course ID:</label>
        <input type="text" id="courseId" name="courseId" required /><br/><br/>

        <button type="submit">Register</button>
    </form>

    <h3>Available Courses</h3>
    <ul>
        <c:forEach var="course" items="${courses}">
            <li>${course.courseName} (${course.courseId})</li>
        </c:forEach>
    </ul>
</body>
</html>
