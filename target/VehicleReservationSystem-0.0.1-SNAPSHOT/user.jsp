<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }
        .sidebar {
            height: 100vh;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #343a40;
            color: white;
            padding: 20px;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px;
            margin: 5px 0;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .sidebar .logo {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .stat-card {
            background: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .stat-card i {
            font-size: 2rem;
            color: #0d6efd;
        }
        .stat-card h3 {
            font-size: 1.5rem;
            margin: 10px 0;
        }
        .stat-card p {
            color: #6c757d;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="logo">
        <a href="user.jsp" class="text-white">MegaCityCabs</a>
    </div>
    <a href="newBooking.jsp"><i class="bi bi-calendar-plus"></i> Make a Booking</a>
    <a href="manageBooking.jsp"><i class="bi bi-calendar-check"></i> My Bookings</a>
    <a href="profile.jsp"><i class="bi bi-person-circle"></i> Profile</a>
    <a href="logout.jsp" class="mt-4"><i class="bi bi-box-arrow-right"></i> Logout</a>
</div>

<!-- Main Content -->
<div class="main-content">
    <!-- Welcome Section -->
    <div class="card mb-4">
        <div class="card-body">
            <h4>Welcome, <%= session.getAttribute("userName") %></h4>
            <p><strong>Email:</strong> <%= session.getAttribute("userEmail") %></p>
            <p><strong>Phone:</strong> <%= session.getAttribute("userPhone") %></p>
        </div>
    </div>

    <!-- Statistics Cards -->
    <div class="row">
        <div class="col-md-4">
            <div class="stat-card text-center">
                <i class="bi bi-calendar-check"></i>
                <h3>5</h3>
                <p>Total Bookings</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="stat-card text-center">
                <i class="bi bi-check-circle"></i>
                <h3>3</h3>
                <p>Completed Bookings</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="stat-card text-center">
                <i class="bi bi-clock-history"></i>
                <h3>2</h3>
                <p>Upcoming Bookings</p>
            </div>
        </div>
    </div>

    <!-- Quick Actions -->
    <div class="row mt-4">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Quick Actions</h5>
                    <a href="newBooking.jsp" class="btn btn-primary w-100 mb-2">Make a Booking</a>
                    <a href="manageBooking.jsp" class="btn btn-warning w-100">Manage Bookings</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Recent Activity</h5>
                    <ul class="list-group">
                        <li class="list-group-item">Booking #1234 confirmed</li>
                        <li class="list-group-item">Booking #5678 completed</li>
                        <li class="list-group-item">New booking created</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>