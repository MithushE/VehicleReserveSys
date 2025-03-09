<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.reservation.utils.DBConnection" %>

<%
    String email = (String) session.getAttribute("userEmail");
    if (email == null) {
        response.sendRedirect("login.jsp"); // Redirect if not logged in
        return;
    }

    String name = "";
    String phone = "";
    String address = "";
    String nic = "";

    try (Connection con = DBConnection.getConnection()) {
        String sql = "SELECT name, phone, address, nic FROM Customers WHERE email=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            name = rs.getString("name");
            phone = rs.getString("phone");
            address = rs.getString("address");
            nic = rs.getString("nic");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Profile</title>
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
        .form-control {
            border-radius: 8px;
            padding: 0.75rem;
        }
        .btn-primary {
            background-color: #0d6efd;
            border-color: #0d6efd;
        }
        .btn-primary:hover {
            background-color: #0b5ed7;
            border-color: #0b5ed7;
        }
        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }
        .btn-secondary:hover {
            background-color: #5a6268;
            border-color: #545b62;
        }
        .alert {
            border-radius: 8px;
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
    <div class="card shadow">
        <div class="card-body">
            <h2 class="text-center mb-4">Manage Your Profile</h2>

            <%-- Show Success or Error Message --%>
            <% String message = (String) request.getAttribute("message"); %>
            <% if (message != null) { %>
            <div class="alert alert-success text-center">
                <%= message %>
            </div>
            <% } %>

            <!-- Profile Form -->
            <form action="ProfileServlet" method="post">
                <div class="mb-3">
                    <label>Name:</label>
                    <input type="text" name="name" class="form-control" value="<%= name %>" required>
                </div>

                <div class="mb-3">
                    <label>Phone:</label>
                    <input type="text" name="phone" class="form-control" value="<%= phone %>" required>
                </div>

                <div class="mb-3">
                    <label>Address:</label>
                    <input type="text" name="address" class="form-control" value="<%= address %>" required>
                </div>

                <div class="mb-3">
                    <label>NIC:</label>
                    <input type="text" name="nic" class="form-control" value="<%= nic %>" required>
                </div>

                <div class="mb-3">
                    <label>Email (Read-Only):</label>
                    <input type="email" name="email" class="form-control" value="<%= email %>" readonly>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Update Profile</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>