<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ page import="com.reservation.utils.DBConnection" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Users</title>
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
    <h1 class="text-center mb-4 text-primary">Users List</h1>

    <!-- Table Container -->
    <div class="card shadow">
        <div class="card-body">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                <tr>
                    <th>Customer ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try {
                        Connection con = DBConnection.getConnection();  // Create connection
                        String sql = "SELECT customer_id, name, email, phone FROM Customers";
                        PreparedStatement ps = con.prepareStatement(sql);  // Prepare the query
                        ResultSet rs = ps.executeQuery();  // Execute the query

                        while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getInt("customer_id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("phone") %></td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();  // Handle exception
                    }
                %>
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