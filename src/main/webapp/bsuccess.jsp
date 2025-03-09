<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Success</title>
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
        .text-success {
            color: #28a745 !important;
        }
        .text-primary {
            color: #0d6efd !important;
        }
        .btn-outline-primary {
            border-color: #0d6efd;
            color: #0d6efd;
        }
        .btn-outline-primary:hover {
            background-color: #0d6efd;
            color: white;
        }
        .btn-primary {
            background-color: #0d6efd;
            border-color: #0d6efd;
        }
        .btn-primary:hover {
            background-color: #0b5ed7;
            border-color: #0b5ed7;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="logo">
        <a href="user.jsp" class="text-white">MegaCityCabs</a>
    </div>
    <a href="newBooking.jsp"><i class="bi bi-calendar-plus"></i> New Booking</a>
    <a href="manageBooking.jsp"><i class="bi bi-calendar-check"></i> My Bookings</a>
    <a href="profile.jsp"><i class="bi bi-person-circle"></i> Profile</a>
    <a href="logout.jsp" class="mt-4"><i class="bi bi-box-arrow-right"></i> Logout</a>
</div>

<!-- Main Content -->
<div class="main-content">
    <div class="card shadow-lg p-4">
        <!-- Success Message -->
        <div class="text-center mb-4">
            <i class="bi bi-check-circle-fill text-success" style="font-size: 4rem;"></i>
            <h1 class="mt-3">Booking Successful!</h1>
            <p class="lead">Thank you for choosing MegaCityCabs. Your booking details are below.</p>
        </div>

        <!-- Booking Details -->
        <div class="mb-4">
            <h2><i class="bi bi-calendar-check"></i> Booking Details</h2>
            <p class="mb-2"><strong>Order Number:</strong> <span class="text-primary">${param.orderNumber}</span></p>
            <p class="mb-2"><strong>Customer Name:</strong> ${param.name}</p>
            <p class="mb-2"><strong>Pickup Location:</strong> ${param.pickupLocation}</p>
            <p class="mb-2"><strong>Destination:</strong> ${param.destination}</p>
            <p class="mb-2"><strong>Vehicle Type:</strong> ${param.vehicleType}</p>
            <p class="mb-2"><strong>Date of Booking:</strong> ${param.date}</p>
            <p class="mb-2"><strong>Time of Booking:</strong> ${param.time}</p>
        </div>

        <!-- Fare Details -->
        <div class="mb-4">
            <h2><i class="bi bi-cash-coin"></i> Fare Details</h2>
            <p class="mb-2"><strong>Fare:</strong> ${param.fare}</p>
            <p class="mb-2"><strong>Tax:</strong> ${param.tax}</p>
            <p class="mb-2"><strong>Total Fare:</strong> <span class="text-primary">${param.totalFare}</span></p>
        </div>

        <!-- Payment Details -->
        <div class="mb-4">
            <h2><i class="bi bi-credit-card"></i> Payment Details</h2>
            <p class="mb-2"><strong>Payment Method:</strong> <span class="text-primary">${param.paymentMethod}</span></p>
        </div>

        <!-- Driver and Vehicle Details -->
        <div class="mb-4">
            <h2><i class="bi bi-car-front"></i> Driver and Vehicle Details</h2>
            <p class="mb-2"><strong>Car Model:</strong> ${param.carModel}</p>
            <p class="mb-2"><strong>Car License Plate:</strong> ${param.carLicensePlate}</p>
            <p class="mb-2"><strong>Driver Name:</strong> ${param.driverName}</p>
            <p class="mb-2"><strong>Driver Phone:</strong> ${param.driverPhone}</p>
        </div>

        <!-- Back to Dashboard Link -->
        <div class="text-center mb-4">
            <a href="user.jsp" class="btn btn-outline-primary"><i class="bi bi-arrow-left"></i> Back to Dashboard</a>
        </div>

        <!-- Print Bill Form -->
        <div class="text-center">
            <h3><i class="bi bi-printer"></i> Print Your Bill</h3>
            <form action="PrintBillServlet" method="get" class="d-inline-block">
                <div class="mb-3">
                    <label for="orderNumber" class="form-label">Enter your Booking Order Number:</label>
                    <input type="text" name="orderNumber" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary"><i class="bi bi-printer"></i> Print Bill</button>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>