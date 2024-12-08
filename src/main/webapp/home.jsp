<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EDULearn - Learning Management System</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Top Bar styling */
        .top-bar {
            background-color: #00796B;
            color: #ffffff;
            font-size: 0.9rem;
            padding: 10px;
            text-align: center;
        }

        /* Navbar styling */
        .navbar {
            background-color: #00796B;
        }
        .navbar a.nav-link, .navbar a.navbar-brand {
            color: #ffffff !important;
            font-weight: 600;
        }
        .navbar a.nav-link:hover, .navbar a.navbar-brand:hover {
            color: #ffffff !important;
        }

        /* Header Section Styling */
        .header {
            padding: 60px 20px; /* Adjusted padding */
            background-color: #f8f9fa;
        }
        .header h1 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #00796b;
        }
        .header p {
            font-size: 1.2rem;
            color: #6c757d;
        }

        /* Card Styling */
        .card {
            border: none;
            border-radius: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            margin-bottom: 20px;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.2);
        }
        .card-header {
            background-color: #00796b;
            color: #ffffff;
            font-weight: bold;
            font-size: 1.2rem;
            text-align: center;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }
        .card img {
            border-bottom-left-radius: 15px;
            border-bottom-right-radius: 15px;
        }

        .btn-custom {
            background-color: #ff7043;
            color: white;
            font-weight: bold;
            border: none;
            padding: 10px 20px;
            border-radius: 25px;
            transition: background-color 0.3s ease;
        }
        .btn-custom:hover {
            background-color: #e64a19;
        }

        /* Reduce space between header and card section */
        .container {
            margin-top: 20px; /* Reduced margin */
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .header h1 {
                font-size: 2rem;
            }
            .header p {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#"><img src="logo.png" alt="Logo" style="height: 30px;"> EDULearn</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="adminlogin">Admin Login</a></li>
            <li class="nav-item"><a class="nav-link" href="studreg">Student Registration</a></li>
            <li class="nav-item"><a class="nav-link" href="studentlogin">Student Login</a></li>
            <li class="nav-item"><a class="nav-link" href="Aboutus.jsp">About Us</a></li>
            <li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact Us</a></li>
        </ul>
    </div>
</nav>
<!-- Header Section -->
<div class="header">
    <div class="container">
        <div class="row align-items-center">
            <!-- Text Section -->
            <div class="col-md-6 text-center text-md-left">
                <h1>Welcome to EDULearn</h1>
                <p>EDULearn is to provide an accessible and efficient platform for educators and students to engage in interactive and flexible learning experiences..</p>
            </div>
            <!-- Image Section -->
            <div class="col-md-6 text-center">
                <img src="edulearnimg.jpg" alt="EDULearn Illustration" class="img-fluid rounded">
            </div>
        </div>
    </div>
</div>

<!-- Cards Section -->
<div class="container">
    <div class="row">
        <!-- Card for Educators -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">For Educators</div>
                <div class="card-body">
                    <h5 class="card-title">Teach with Ease</h5>
                    <p class="card-text">Create engaging courses and manage your content effortlessly. Your students will thank you!</p>
                    <button class="btn btn-custom" onclick="location.href='adminlogin'">Get Started</button>
                </div>
                <img src="hmeimg1.jpg" alt="Educators" class="card-img-bottom">
            </div>
        </div>
        <!-- Card for Students -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">For Students</div>
                <div class="card-body">
                    <h5 class="card-title">Learn Anytime, Anywhere</h5>
                    <p class="card-text">Access course materials and submit assignments from the comfort of your couch. Pajamas encouraged!</p>
                    <button class="btn btn-custom" onclick="location.href='studentlogin'">Get Started</button>
                </div>
                <img src="hmeimg2.jpg" alt="Students" class="card-img-bottom">
            </div>
        </div>
        <!-- Card for Everyone -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">For Everyone</div>
                <div class="card-body">
                    <h5 class="card-title">Join the Revolution</h5>
                    <p class="card-text">Be part of a community that values education. Because learning should be fun, not a chore!</p>
                    <button class="btn btn-custom" onclick="location.href='about'">Learn More</button>
                </div>
                <img src="hmeimg3.jpg" alt="Everyone" class="card-img-bottom">
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>