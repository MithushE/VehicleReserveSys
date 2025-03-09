<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <!-- Custom CSS -->
    <style>
        body {
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
    <div class="logo"><a href="adminDashboard.jsp">MegaCityCabs</a></div>
    <a href="ViewCarsServlet"><i class="bi bi-car-front"></i> Manage Cars</a>
    <a href="ViewDriversServlet"><i class="bi bi-person-badge"></i> Manage Drivers</a>
    <a href="viewUsers.jsp"><i class="bi bi-people"></i> Manage Users</a>
    <a href="ViewBookingsServlet"><i class="bi bi-calendar-check"></i> Manage Bookings</a>
    <a href="logout.jsp" class="mt-4"><i class="bi bi-box-arrow-right"></i> Logout</a>
</div>

<!-- Main Content -->
<div class="main-content">
    <!-- Welcome Section -->
    <div class="mb-4">
        <h1>Welcome to the Admin Dashboard</h1>
        <p class="lead">Manage your fleet, drivers, users, and bookings efficiently.</p>
    </div>

    <!-- Statistics Cards -->
    <div class="row">
        <div class="col-md-3">
            <div class="stat-card text-center">
                <i class="bi bi-car-front"></i>
                <h3>150</h3>
                <p>Total Cars</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="stat-card text-center">
                <i class="bi bi-person-badge"></i>
                <h3>45</h3>
                <p>Active Drivers</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="stat-card text-center">
                <i class="bi bi-people"></i>
                <h3>1,200</h3>
                <p>Registered Users</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="stat-card text-center">
                <i class="bi bi-calendar-check"></i>
                <h3>320</h3>
                <p>Total Bookings</p>
            </div>
        </div>
    </div>

    <!-- Quick Actions -->
    <div class="row mt-4">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Quick Actions</h5>
                    <a href="addCar.jsp" class="btn btn-primary w-100 mb-2">Add Car</a>
                    <a href="addDriver.jsp" class="btn btn-primary w-100 mb-2">Add Driver</a>
                    <a href="viewUsers.jsp" class="btn btn-primary w-100 mb-2">View Users</a>
                    <a href="ViewBookingsServlet" class="btn btn-primary w-100">View Bookings</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Recent Activity</h5>
                    <ul class="list-group">
                        <li class="list-group-item">New booking from User #1234</li>
                        <li class="list-group-item">Driver #12 completed a trip</li>
                        <li class="list-group-item">New car added to the fleet</li>
                        <li class="list-group-item">User #5678 registered</li>
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