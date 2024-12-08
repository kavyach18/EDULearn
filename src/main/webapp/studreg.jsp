<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EDULearn</title>
    <style>
        .navbar {
            background-color: #333;
            overflow: hidden;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            padding: 5px 15px;
        }

        .navbar .title {
            color: white;
            font-size: 20px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .navbar a {
            display: block;
            color: #f2f2f2;
            padding: 8px 16px;
            text-decoration: none;
            font-size: 20px;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding-top: 60px;
            background-image: url('abtimg.jpg');
            background-size: cover;
            background-position: center;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.85);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            width: 400px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            text-align: center;
            color: #333;
            font-weight: bold;
            margin-bottom: 20px;
            letter-spacing: 1px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
            width: 100%;
        }

        label {
            color: #555;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input, select, button {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            outline: none;
            transition: border 0.3s ease;
            width: 100%;
        }

        input:focus, select:focus {
            border-color: #28a745;
        }

        button {
            background-color: #000000;
            border: none;
            color: white;
            font-weight: bold;
            font-size: 16px;
            cursor: pointer;
            margin-top: 15px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #333;
        }

        @media (max-width: 500px) {
            .form-container {
                width: 90%;
            }

            .navbar a {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a class="navbar-brand" href="#"><img src="logo.png" alt="Logo" style="height: 30px;"> EDULearn</a>
        <div>
            <a href="/">Home</a>
			<a href="studentlogin">Student Login</a>
        </div>
    </div>

    <div class="form-container">
        <h2>Student Registration Form</h2>
        <form action="insertstud" method="post">
            <div>
                <label for="sname">Full Name</label>
                <input type="text" id="sname" name="sname" placeholder="Enter full name" required>
            </div>
            <div>
                <label for="sgender">Gender</label>
                <select id="sgender" name="sgender" required>
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>
            <div>
                <label for="department">Department</label>
                <input type="text" id="department" name="department" placeholder="Enter department" required>
            </div>
            <div>
                <label for="semail">Email</label>
                <input type="email" id="semail" name="semail" placeholder="Enter email address" required>
            </div>
            <div>
                <label for="spwd">Password</label>
                <input type="password" id="spwd" name="spwd" placeholder="Enter password" required>
            </div>
            <div>
                <label for="scontact">Contact Number</label>
                <input type="text" id="scontact" name="scontact" placeholder="Enter contact number" required>
            </div>
            <button type="submit">Register</button>
        </form>
    </div>

</body>
</html>
