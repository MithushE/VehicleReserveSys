<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Booking</title>
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
    <!-- Form Container -->
    <div class="card shadow">
        <div class="card-body">
            <h1 class="text-center mb-4 text-primary">New Booking</h1>

            <form action="BookingServlet" method="post">
                <!-- Row 1: Customer Name and Address -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="name" class="form-label">Customer Name:</label>
                        <input type="text" name="name" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label for="address" class="form-label">Address:</label>
                        <input type="text" name="address" class="form-control" required>
                    </div>
                </div>

                <!-- Row 2: Phone and Pickup Location -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="phone" class="form-label">Telephone Number:</label>
                        <input type="text" name="phone" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label for="pickupLocation" class="form-label">Pickup Location:</label>
                        <input type="text" name="pickupLocation" class="form-control" required>
                    </div>
                </div>

                <!-- Row 3: Destination and Vehicle Type -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="destination" class="form-label">Destination:</label>
                        <select id="destination" name="destination" class="form-control" onchange="calculateFare()" required>
                            <option value="">Select Destination</option>
                            <option value="Nallur">Nallur</option>
                            <option value="Jaffna Town">Jaffna Town</option>
                            <option value="Chundikuli">Chundikuli</option>
                            <option value="Kokuvil">Kokuvil</option>
                            <option value="Kondavil">Kondavil</option>
                            <option value="Kaithady">Kaithady</option>
                            <option value="Manipay">Manipay</option>
                            <option value="Chavakachcheri">Chavakachcheri</option>
                            <option value="Point Pedro">Point Pedro</option>
                            <option value="Kopay">Kopay</option>
                            <option value="Uduvil">Uduvil</option>
                            <option value="Tellippalai">Tellippalai</option>
                            <option value="Chunnakam">Chunnakam</option>
                            <option value="Sandilipay">Sandilipay</option>
                            <option value="Karainagar">Karainagar</option>
                            <option value="Velanai">Velanai</option>
                            <option value="Delft Island">Delft Island</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="vehicleType" class="form-label">Vehicle Type:</label>
                        <select id="vehicleType" name="vehicleType" class="form-control" onchange="calculateFare()" required>
                            <option value="">Select Vehicle Type</option>
                            <option value="Sedan">Sedan</option>
                            <option value="SUV">SUV</option>
                            <option value="Hatchback">Hatchback</option>
                            <option value="Coupe">Coupe</option>
                            <option value="Convertible">Convertible</option>
                            <option value="Van">Van</option>
                            <option value="Pickup">Pickup</option>
                        </select>
                    </div>
                </div>

                <!-- Row 4: Date and Time -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="date" class="form-label">Date of Booking:</label>
                        <input type="date" name="date" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label for="time" class="form-label">Time of Booking:</label>
                        <input type="time" name="time" class="form-control" required>
                    </div>
                </div>

                <!-- Row 5: Fare Details -->
                <div class="row mb-3">
                    <div class="col-md-4">
                        <label for="fare" class="form-label">Base Fare:</label>
                        <input type="text" id="fare" name="fare" class="form-control" readonly>
                    </div>
                    <div class="col-md-4">
                        <label for="tax" class="form-label">Tax:</label>
                        <input type="text" id="tax" name="tax" class="form-control" readonly>
                    </div>
                    <div class="col-md-4">
                        <label for="totalFare" class="form-label">Total Fare:</label>
                        <input type="text" id="totalFare" name="totalFare" class="form-control" readonly>
                    </div>
                </div>

                <!-- Payment Method -->
                <div class="mb-3">
                    <h3>Select Payment Method:</h3>
                    <div class="form-check">
                        <input type="radio" name="paymentMethod" value="cash_on_ride" class="form-check-input" onclick="togglePaymentFields()" required>
                        <label class="form-check-label">Cash</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" name="paymentMethod" value="debit_card" class="form-check-input" onclick="togglePaymentFields()">
                        <label class="form-check-label">Card</label>
                    </div>
                </div>

                <!-- Debit Card Details -->
                <div id="cardDetails" class="card p-3 mb-3" style="display: none;">
                    <h3>Debit Card Details</h3>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="cardNumber" class="form-label">Card Number:</label>
                            <input type="text" name="cardNumber" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label for="cardHolder" class="form-label">Card Holder Name:</label>
                            <input type="text" name="cardHolder" class="form-control">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="expiryDate" class="form-label">Expiry Date:</label>
                            <input type="month" name="expiryDate" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label for="cvv" class="form-label">CVV:</label>
                            <input type="password" name="cvv" class="form-control">
                        </div>
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="text-center">
                    <button type="submit" class="btn btn-primary w-50">Book</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

<script>
    // Function to calculate fare based on destination and vehicle type
    function calculateFare() {
        var destination = document.getElementById("destination").value;
        var vehicleType = document.getElementById("vehicleType").value;
        var fare = 0;

        // Set fare based on Jaffna locations
        var fareMap = {
            "Nallur": 500,
            "Jaffna Town": 450,
            "Chundikuli": 480,
            "Kokuvil": 520,
            "Kondavil": 550,
            "Kaithady": 420,
            "Manipay": 500,
            "Chavakachcheri": 490,
            "Point Pedro": 570,
            "Kopay": 460,
            "Uduvil": 520,
            "Tellippalai": 510,
            "Chunnakam": 500,
            "Sandilipay": 530,
            "Karainagar": 560,
            "Velanai": 480,
            "Delft Island": 600
        };

        if (fareMap[destination]) {
            fare = fareMap[destination];
        } else {
            fare = 0; // Default if no destination selected
        }

        // Adjust fare based on vehicle type
        switch (vehicleType) {
            case "SUV":
                fare += 1500; // Additional fare for SUV
                break;
            case "Convertible":
                fare += 2000; // Additional fare for Convertible
                break;
            case "Van":
                fare += 1200; // Additional fare for Van
                break;
            case "Pickup":
                fare += 2500; // Additional fare for Pickup
                break;
            // Sedan, Hatchback, and Coupe have no additional fare
        }

        // Add 10% tax to the fare
        var tax = fare * 0.10;
        var totalFare = fare + tax;

        // Display the fare, tax, and total fare
        document.getElementById("fare").value = fare + " LKR";
        document.getElementById("tax").value = tax.toFixed(2) + " LKR";
        document.getElementById("totalFare").value = totalFare.toFixed(2) + " LKR";
    }

    // Function to toggle debit card payment fields
    function togglePaymentFields() {
        var paymentMethod = document.querySelector('input[name="paymentMethod"]:checked').value;
        var cardDetails = document.getElementById("cardDetails");

        if (paymentMethod === "debit_card") {
            cardDetails.style.display = "block";
        } else {
            cardDetails.style.display = "none";
        }
    }
</script>
</body>
</html>