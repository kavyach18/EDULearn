<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student Profile - EDULearn</title>
    <style>
        /* General body styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding-top: 60px;
            background-image: url('abtimg.jpg');
            background-size: cover;
            background-position: center;
            color: #333;
        }

        /* Navbar styles */
        .navbar {
            background-color: #333;
            overflow: hidden;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
            z-index: 100;
        }

        .navbar .title {
            color: white;
            font-size: 22px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .navbar a {
            color: #f2f2f2;
            font-size: 18px;
            text-decoration: none;
            padding: 10px 20px;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Form container styles */
        .form-container {
            background-color: rgba(255, 255, 255, 0.85);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 400px;
            margin: 80px auto;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            text-align: center;
            color: #333;
            font-weight: bold;
            margin-bottom: 25px;
            letter-spacing: 1px;
        }

        /* Form elements styles */
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
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 16px;
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
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #333;
        }

        /* Mobile responsiveness */
        @media (max-width: 500px) {
            .form-container {
                width: 90%;
            }

            .navbar a {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a class="navbar-brand" href="#"><img src="logo.png" alt="Logo" style="height: 30px;"> EDULearn</a>
        <div>
            <a href="studenthome.jsp">Back</a>
        </div>
    </div>

    <!-- Form Container -->
    <div class="form-container">
        <h2>Update Student Profile</h2>
        <form action="updatestudprofile" method="post">
            <div>
                <label for="sname">Full Name</label>
                <input type="text" id="sname" name="sname" value="${student.name}" required>
            </div>
            <div>
                <label for="sgender">Gender</label>
                <select id="sgender" name="sgender" required>
                    <option value="">Select Gender</option>
                    <option value="Male" ${student.gender == 'Male' ? 'selected' : ''}>Male</option>
                    <option value="Female" ${student.gender == 'Female' ? 'selected' : ''}>Female</option>
                    <option value="Other" ${student.gender == 'Other' ? 'selected' : ''}>Other</option>
                </select>
            </div>
            
            <div>
                <label for="spwd">Password</label>
                <input type="password" id="spwd" name="spwd" placeholder="Enter new password (leave blank if unchanged)">
            </div>
            <div>
                <label for="scontact">Contact Number</label>
                <input type="text" id="scontact" name="scontact" value="${student.contact}" required>
            </div>
            <button type="submit">Update Profile</button>
        </form>
    </div>

</body>
</html>
