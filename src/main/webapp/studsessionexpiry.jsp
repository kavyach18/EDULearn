<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Session Expired</title>
<style>
    /* Center the message and link on the page */
    body {
        font-family: Arial, sans-serif;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
        background-color: #f2f2f2;
        color: #333;
    }

    /* Style the message text */
    h1 {
        font-size: 2em;
        color: #e74c3c; /* Red color for error indication */
        margin: 0.5em 0;
    }

    /* Style the link button */
    a {
        display: inline-block;
        padding: 10px 20px;
        margin-top: 20px;
        color: #fff;
        background-color: #3498db; /* Blue color */
        text-decoration: none;
        font-weight: bold;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    a:hover {
        background-color: #2980b9; /* Darker blue on hover */
    }
</style>
</head>
<body>
    <h1>OOPS .. !!! Session Expired</h1>
    <br><br>
    <a href="studentlogin">Login Again</a>
</body>
</html>