<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
    <style>
        /* Body styling for centering and background */
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            font-family: Arial, sans-serif;
            margin: 0;
            background-image: url('<%= request.getContextPath() %>/abtimg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        /* Transparent overlay to soften the background */
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(255, 255, 255, 0.8);
            z-index: -1;
        }

        /* Main container for layout */
        .main-container {
            display: flex;
            align-items: stretch; /* Ensure both sections are equal height */
            justify-content: center;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            max-width: 800px;
            width: 90%;
            height: 400px; /* Adjust height as per requirement */
        }

        /* Image container styling */
        .image-container {
            flex: 1;
            background-image: url('<%= request.getContextPath() %>/stulogimg.jpg'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            height: 100%;
            min-height: 400px;
        }

        /* Login container styling */
        .login-container {
            flex: 1;
            padding: 30px;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .login-container h2 {
            color: #333;
            margin-bottom: 20px;
        }

        /* Label styling */
        .login-container label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: #555;
            font-size: 14px;
        }

        /* Input styling */
        .login-container input[type="text"],
        .login-container input[type="password"],
        .login-container input[type="email"] {
            width: 90%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        /* Button styling */
        .login-container button {
            width: 100%;
            padding: 12px;
            background-color: #000000;
            border: none;
            border-radius: 5px;
            color: white;
            font-weight: bold;
            font-size: 14px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .login-container button:hover {
            background-color: #0056b3;
        }

        /* Error message styling */
        .login-container .error-message {
            color: red;
            margin-top: 15px;
            font-size: 14px;
        }

        /* Back button styling */
        .back-button {
            position: absolute;
            top: 20px;
            right: 20px;
            padding: 8px 16px;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #0056b3;
        }

        /* Project name styling */
        .project-name {
            position: absolute;
            top: 50px;
            left: 20px;
            font-size: 30px;
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>

    <!-- Background overlay -->
    <div class="overlay"></div>

    <!-- Back Button at the top right -->
    <a href="<%= request.getContextPath() %>/" class="back-button">Back</a>

    <!-- Project name in the top left corner -->
    <div class="project-name">
        <img src="<%= request.getContextPath() %>/logo.png" alt="Logo" style="height: 30px;">EDULearn
    </div>

    <!-- Main container -->
    <div class="main-container">
        <!-- Image Section -->
        <div class="image-container">
            <!-- You can add a fallback image or additional styling if needed -->
        </div>

        <!-- Login Form Section -->
        <div class="login-container">
            <h2>Student Login</h2>
            <form action="<%= request.getContextPath() %>/checkstudentlogin" method="post">
                <div>
                    <label for="semail">Enter Email ID</label>
                    <input type="email" id="semail" name="semail" placeholder="Enter email" required>
                </div>
                <div>
                    <label for="spwd">Password</label>
                    <input type="password" id="spwd" name="spwd" placeholder="Enter password" required>
                </div>
                <button type="submit">Login</button>
            </form>
            
            <!-- Error message display -->
            <p class="error-message">
                <%= (request.getAttribute("message") != null) ? request.getAttribute("message") : "" %>
            </p>
        </div>
    </div>

</body>
</html>
