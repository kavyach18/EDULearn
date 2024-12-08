<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - EDULearn</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* General page styling */
        body {
            font-family: Arial, sans-serif;
        }

        /* Page header styling */
        .page-header {
            background-color: #00796b;
            color: #ffffff;
            padding: 50px 20px;
            text-align: center;
        }

        .page-header h1 {
            font-size: 2.5rem;
            margin: 0;
        }

        .page-header p {
            font-size: 1.2rem;
            margin: 10px 0 0;
        }

        /* Contact form styling */
        .contact-form {
            margin: 40px auto;
            max-width: 800px;
            padding: 20px;
            background: #f7f7f7;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .form-control:focus {
            border-color: #00796b;
            box-shadow: 0 0 5px rgba(0, 121, 107, 0.5);
        }

        .btn-submit {
            background-color: #00796b;
            border: none;
            color: #fff;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 25px;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #005f56;
        }

        /* Footer styling */
        .footer {
            background-color: #000000;
            color: #ffffff;
            padding: 20px 0;
            text-align: center;
        }

        .footer a {
            color: #ff7043;
            text-decoration: none;
        }
    </style>
</head>
<body>

<!-- Page Header -->
<div class="page-header d-flex align-items-center">
    <!-- Back Button -->
    <a href="/" class="btn btn-light mr-3" style="border-radius: 25px; background-color: #ffffff;">
        &larr; Back to home
    </a>
    <div>
        <h1>Contact Us</h1>
        <p>Have questions? Get in touch with us!</p>
    </div>
</div>

<!-- Contact Form -->
<div class="container">
    <div class="contact-form">
        <form action="sendemail" method="post" >
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="subject">Subject</label>
                <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter the subject" required>
            </div>
            <div class="form-group">
                <label for="message">Message</label>
                <textarea class="form-control" id="message" name="message" rows="5" placeholder="Write your message here" required></textarea>
            </div>
            <button type="submit" class="btn btn-submit">Send Message</button>
        </form>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; 2024 EDULearn. All rights reserved. | <a href="#">Privacy Policy</a></p>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
