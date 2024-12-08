<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Layout</title>
    <style>
        /* Reset some default styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f0f8ff;
            color: #333;
            font-size: 16px;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Header */
        header {
            background-color: black; /* Black background */
            color: #ffffff; /* White text */
            padding: 1rem;
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .header-left {
            display: flex;
            gap: 1.5rem;
        }

        .logo {
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }

        header h1 {
            font-size: 1.8em;
            margin-bottom: 0.5em;
            font-weight: 600;
        }

        header nav ul {
            list-style: none;
            display: flex;
            gap: 1.5rem;
        }

        header nav ul li a {
            color: #ffffff; /* White text */
            text-decoration: none;
            font-weight: bold;
            padding: 0.5rem;
            border-radius: 4px;
            transition: background 0.3s ease;
        }

        header nav ul li a:hover {
            background-color: #444444; /* Slightly lighter black for hover */
            transform: scale(1.05);
        }

        /* Main content section */
        section {
            padding: 2rem;
            flex-grow: 1;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 1.5rem;
            margin-top: 1.5rem;
        }

        .card {
            background-color: #ffffff; /* White background */
            border: 3px solid #28a745; /* Thicker green border */
            border-radius: 15px;
            padding: 1.5rem;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            color: #333; /* Black text */
            outline: 4px solid #d4edda; /* Add thick outline color to cards */
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
        }

        /* Calendar Section */
        .calendar-section h2 {
            margin-bottom: 1rem;
            color: #003366;
            font-size: 1.8em;
            font-weight: bold;
        }

        .calendar {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            gap: 10px;
            justify-items: center;
            background-color: #ffffff;
            border-radius: 15px;
            padding: 2rem;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            max-width: 750px;
            margin: 0 auto;
            font-size: 1.1em;
            background: linear-gradient(135deg, #eaf2f8, #d4e2f2);
            outline: 5px solid #28a745; /* Add thick outline for calendar */
        }

        /* Calendar Days */
        .calendar-day {
            padding: 15px;
            text-align: center;
            border-radius: 12px;
            cursor: pointer;
            position: relative;
            background-color: #e8f0f9;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .calendar-day:hover {
            background-color: #d0e3f2;
            transform: scale(1.1);
            border: 2px solid #003366; /* Add border for hover */
        }

        /* Event Highlights */
        .event-day {
            background-color: #28a745;
            color: #fff;
            border-radius: 50%;
            font-weight: bold;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow for event days */
            transition: transform 0.3s ease;
        }

        .event-day:hover {
            transform: scale(1.2);
            background-color: #218838;
        }

        /* Footer Section */
        footer {
            background-color: #003366;
            color: #ffffff;
            text-align: center;
            padding: 1.5rem; /* Increase padding */
            font-weight: 700; /* Make text bold */
            border-top: 4px solid #28a745; /* Add border-top to footer */
        }

        /* Calendar Section */
        .calendar-section {
            margin-top: 3rem;
            text-align: center;
        }

        .calendar {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            gap: 10px;
            justify-items: center;
            background-color: #ffffff;
            border-radius: 15px;
            padding: 2rem;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            max-width: 750px;
            margin: 0 auto;
            font-size: 1.1em;
            background: linear-gradient(135deg, #eaf2f8, #d4e2f2);
        }

        .calendar-header {
            font-weight: bold;
            color: #ffffff;
            background-color: black; /* Black header for calendar */
            padding: 0.6rem;
            font-size: 1.2em;
            text-align: center;
            border-radius: 8px;
        }

        .calendar-day {
            padding: 15px;
            text-align: center;
            border-radius: 12px;
            cursor: pointer;
            position: relative;
            background-color: #e8f0f9;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .calendar-day:hover {
            background-color: #d0e3f2;
            transform: scale(1.1);
        }

        .calendar-day.highlight {
            background-color: #28a745;
            color: #fff;
        }

        .calendar-day .event-name {
            position: absolute;
            bottom: 5px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 0.9em;
            color: #fff;
            background-color: #003366;
            padding: 2px 5px;
            border-radius: 5px;
        }

        /* Highlighted days for events */
        .event-day {
            background-color: #28a745;
            color: #fff;
            border-radius: 50%;
            transition: transform 0.3s ease;
        }

        .event-day:hover {
            transform: scale(1.2);
            background-color: #218838;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            header nav ul {
                flex-direction: column;
                gap: 0.8rem;
            }

            table,
            table thead,
            table tbody,
            table th,
            table td,
            table tr {
                display: block;
                width: 100%;
            }

            table thead {
                display: none;
            }

            table tr {
                margin-bottom: 1rem;
            }

            table td {
                text-align: left;
                padding: 0.6rem;
                position: relative;
                padding-left: 50%;
            }

            table td:before {
                content: attr(data-label);
                position: absolute;
                left: 0;
                width: 45%;
                padding-left: 0.5rem;
                font-weight: bold;
            }
        }
    </style>
</head>

<body>

    <!-- Header Section -->
    <header>
        <div class="header-left">
            <img src="logo.png" alt="Logo" class="logo">
            <h1>EDULearn</h1>
        </div>
        <nav>
            <ul>
                <li><a href="studprofile.jsp">My Profile</a></li>
                <li><a href="updatestudent.jsp">Update Profile</a></li>
                <li><a href="registercourse">Register Courses</a></li>
                <li><a href="registercourse">My Courses</a></li>
                <li><a href="viewassignments">Submissions</a></li>
                <li><a href="studentlogin.jsp">Logout</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content Section -->
    <section>
        <div class="card">
            <h3>Upcoming Events</h3>
            <p>No events scheduled yet</p>
        </div>
        <div class="card">
            <h3>Pending Tasks</h3>
            <p>4 tasks pending for review</p>
        </div>
        <div class="card">
            <h3>Course Registration</h3>
            <p>Register for new courses</p>
        </div>
        <div class="card">
            <h3>Course Feedback</h3>
            <p>Rate your completed courses</p>
        </div>
        <div class="card">
            <h3>Upcoming Exams</h3>
            <p>Exam schedule for this semester</p>
        </div>
        <div class="card">
            <h3>Notifications</h3>
            <p>Check your important notifications</p>
        </div>
    </section>

    <!-- Calendar Section -->
    <div class="calendar-section">
        <h2>Upcoming Events Calendar(2024-25)</h2>
        <div class="calendar">
            <div class="calendar-header">Sun</div>
            <div class="calendar-header">Mon</div>
            <div class="calendar-header">Tue</div>
            <div class="calendar-header">Wed</div>
            <div class="calendar-header">Thu</div>
            <div class="calendar-header">Fri</div>
            <div class="calendar-header">Sat</div>

            <!-- Calendar Days -->
            <div class="calendar-day">1</div>
            <div class="calendar-day">2</div>
            <div class="calendar-day event-day">3
                <div class="event-name">Java Quiz</div>
            </div>
            <div class="calendar-day">4</div>
            <div class="calendar-day event-day">5
                <div class="event-name">Python Quiz</div>
            </div>
            <div class="calendar-day">6</div>
            <div class="calendar-day">7</div>
            <div class="calendar-day">8</div>
            <div class="calendar-day event-day">9
                <div class="event-name">Math Quiz</div>
            </div>
            <div class="calendar-day">10</div>
            <div class="calendar-day">11</div>
            <div class="calendar-day event-day">12
                <div class="event-name">JavaScript Quiz</div>
            </div>
			<div class="calendar-day">13</div>
			<div class="calendar-day">14</div>
			<div class="calendar-day">15</div>
			<div class="calendar-day">16</div>
			<div class="calendar-day">17</div>
			<div class="calendar-day">18</div>
			<div class="calendar-day">19</div>
			<div class="calendar-day">20</div>
			<div class="calendar-day">21</div>
			<div class="calendar-day">22</div>
			<div class="calendar-day">23</div>
			<div class="calendar-day">24</div>
			<div class="calendar-day">25</div>
			<div class="calendar-day">26</div>
			<div class="calendar-day">27</div>
			<div class="calendar-day">28</div>
			<div class="calendar-day">29</div>
			<div class="calendar-day">30</div>
			
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 EDULearn. All rights reserved.</p>
    </footer>

</body>

</html>
