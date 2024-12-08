<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"> <!-- Add Font Awesome for icons -->
    <style>
        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        /* Navbar styling */
        nav {
            background-color: #333;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
        }

        .nav-title {
            color: #fff;
            font-size: 1.8em;
            font-weight: bold;
            text-decoration: none;
            display: flex;
            align-items: center;
        }

        .nav-title i {
            margin-right: 10px;
        }

        .nav-links {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 1.1em;
        }

        .nav-links a:hover {
            color: #f9f9f9;
        }

        /* Header styling */
        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
        }

        header h1 {
            margin: 0;
        }

        /* Main content section styling */
        .content {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 40px;
            text-align: center;
        }

        .content h2 {
            font-size: 2em;
            color: #333;
            margin-bottom: 20px;
        }

        .content p {
            font-size: 1.2em;
            line-height: 1.6;
            color: #555;
            margin-bottom: 30px;
            max-width: 800px;
            margin: 0 auto;
        }

        .team-section {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .team-member {
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 250px;
            margin: 20px;
            border-radius: 8px;
            overflow: hidden;
            text-align: center;
            transition: transform 0.3s ease;
        }

        .team-member:hover {
            transform: scale(1.05);
        }

        .team-member img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .team-member h3 {
            margin: 15px 0;
            font-size: 1.2em;
            color: #333;
        }

        .team-member p {
            font-size: 1em;
            color: #777;
            padding: 0 10px;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        footer p {
            margin: 0;
        }

    </style>
</head>
<body>

    <!-- Navbar Section -->
    <nav>
        <a class="nav-title" href="/">
            <i class="fas fa-graduation-cap"></i> EDULearn
        </a>
        <ul class="nav-links">
            <li><a href="/">Home</a></li>
           
        </ul>
    </nav>

    <!-- Header Section -->
    <header>
        <h1>About Us</h1>
    </header>
    
    <!-- Main Content Section -->
    <div class="content">
        <h2>Welcome to Our Company!</h2>
        <p>
            We are a passionate team committed to delivering top-quality solutions and services
            to our clients. With years of experience and expertise in various fields, we provide
            tailored solutions to meet the unique needs of each business. Our vision is to help
            our clients grow and succeed in today's fast-paced world.
        </p>

        <h2>Meet Our Team</h2>

        <!-- Team Section -->
        <div class="team-section">
            <!-- Team Member 1 (John Doe) -->
            <div class="team-member">
                <img src="<%= request.getContextPath() %>abtimg1.jpg" alt="John Doe">
                <h3>John Doe</h3>
                <p>CEO & Founder</p>
            </div>
            <!-- Team Member 2 (Jane Smith) -->
            <div class="team-member">
                <img src="<%= request.getContextPath() %>abtimg2.png" alt="Jane Smith">
                <h3>Jane Smith</h3>
                <p>Chief Technology Officer</p>
            </div>
            <!-- Team Member 3 (David Lee) -->
            <div class="team-member">
                <img src="<%= request.getContextPath() %>abtimg3.jpeg" alt="David Lee">
                <h3>David Lee</h3>
                <p>Marketing Director</p>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 EDULearn. All rights reserved.</p>
    </footer>

</body>
</html>
