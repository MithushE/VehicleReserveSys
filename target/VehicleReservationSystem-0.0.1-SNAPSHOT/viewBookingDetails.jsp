<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%
    ResultSet booking = (ResultSet) request.getAttribute("booking");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Details</title>
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
        .text-primary {
            color: #0d6efd !important;
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
    <a href="manageBooking.jsp"><i class="bi bi-calendar-check"></i> Manage Bookings</a>
    <a href="profile.jsp"><i class="bi bi-person-circle"></i> Profile</a>
    <a href="logout.jsp" class="mt-4"><i class="bi bi-box-arrow-right"></i> Logout</a>
</div>

<!-- Main Content -->
<div class="main-content">
    <div class="card shadow-lg p-4">
        <h1 class="text-center mb-4"><i class="bi bi-file-earmark-check"></i> Booking Details</h1>

        <!-- Booking Details -->
        <% if (booking != null) { %>
        <div class="mb-4">
            <p class="mb-2"><strong>Order Number:</strong> <span class="text-primary"><%= booking.getString("order_number") %></span></p>
            <p class="mb-2"><strong>Customer Name:</strong> <%= booking.getString("customer_name") %></p>
            <p class="mb-2"><strong>Pickup Location:</strong> <%= booking.getString("pickup_location") %></p>
            <p class="mb-2"><strong>Destination:</strong> <%= booking.getString("destination") %></p>
            <p class="mb-2"><strong>Date:</strong> <%= booking.getString("booking_date") %></p>
            <p class="mb-2"><strong>Time:</strong> <%= booking.getString("booking_time") %></p>
            <p class="mb-2"><strong>Total Fare:</strong> <span class="text-primary"><%= booking.getString("total_fare") %> LKR</span></p>
        </div>
        <% } else { %>
        <p class="text-danger">No booking found.</p>
        <% } %>

        <!-- Back to Management Button -->
        <div class="text-center">
            <a href="user.jsp" class="btn btn-primary"><i class="bi bi-arrow-left-circle"></i> Dashboard</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>