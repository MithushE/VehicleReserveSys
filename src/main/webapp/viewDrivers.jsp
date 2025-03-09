<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.reservation.models.Driver" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Drivers</title>
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
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .table {
            margin-bottom: 0;
        }
        .table thead th {
            background-color: #343a40;
            color: white;
        }
        .badge {
            font-size: 0.875rem;
            padding: 0.5em 0.75em;
        }
        .btn-sm {
            padding: 0.25rem 0.5rem;
            font-size: 0.875rem;
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
    <!-- Page Title -->
    <h1 class="text-center mb-4 text-primary">List of Drivers</h1>

    <!-- Table Container -->
    <div class="card shadow">
        <div class="card-body">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                <tr>
                    <th>Driver Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>License Number</th>
                    <th>License Plate</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="driver" items="${requestScope.drivers}">
                    <tr>
                        <td>${driver.driverName}</td>
                        <td>${driver.driverPhone}</td>
                        <td>${driver.driverEmail}</td>
                        <td>${driver.licenseNumber}</td>
                        <td>${driver.licensePlate}</td>
                        <td>
                                    <span class="badge ${driver.status == 'Available' ? 'bg-success' : 'bg-danger'}">
                                            ${driver.status}
                                    </span>
                        </td>
                        <td>
                            <form action="DeleteDriverServlet" method="post" class="d-inline">
                                <input type="hidden" name="licenseNumber" value="${driver.licenseNumber}">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>