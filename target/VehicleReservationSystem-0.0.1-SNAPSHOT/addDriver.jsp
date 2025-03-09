<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Driver</title>
    <!-- Bootstrap 5 CSS -->
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
        .form-container {
            background: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .form-container h1 {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 20px;
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
    <!-- Form Container -->
    <div class="form-container">
        <h1>Add Driver Details</h1>
        <form action="AddDriverServlet" method="post">
            <!-- Row 1: Driver Name and Driver Phone -->
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="driverName" class="form-label">Name:</label>
                    <input type="text" class="form-control" name="driverName" required>
                </div>
                <div class="col-md-6">
                    <label for="driverPhone" class="form-label">Contact:</label>
                    <input type="text" class="form-control" name="driverPhone" required>
                </div>
            </div>

            <!-- Row 2: Driver Email and License Number -->
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="driverEmail" class="form-label">Email:</label>
                    <input type="email" class="form-control" name="driverEmail" required>
                </div>
                <div class="col-md-6">
                    <label for="licenseNumber" class="form-label">License Number:</label>
                    <input type="text" class="form-control" name="licenseNumber" required>
                </div>
            </div>

            <!-- Row 3: Car License Plate -->
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="licensePlate" class="form-label">Car License Number:</label>
                    <input type="text" class="form-control" name="licensePlate" required>
                </div>
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <button type="submit" class="btn btn-primary w-50">Add Driver</button>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>