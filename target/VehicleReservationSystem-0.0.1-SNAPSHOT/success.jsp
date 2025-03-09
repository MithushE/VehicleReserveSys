<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Successful</title>
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
            background-color: #1a1a1a;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .card {
            background: rgba(0, 0, 0, 0.8);
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            padding: 2rem;
            text-align: center;
            max-width: 500px;
            width: 100%;
        }
        .card h2 {
            font-size: 2rem;
            font-weight: 700;
            color: #ffc107;
            margin-bottom: 1rem;
        }
        .card p {
            font-size: 1.1rem;
            color: #ddd;
            margin-bottom: 1.5rem;
        }
        .btn-warning {
            background-color: #ffc107;
            border-color: #ffc107;
            color: #1a1a1a;
            font-weight: 500;
            padding: 0.75rem 1.5rem;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }
        .btn-warning:hover {
            background-color: #e0a800;
            border-color: #e0a800;
        }
    </style>
</head>

<body>

<!-- Success Message Card -->
<div class="card">
    <div class="card-body">
        <i class="bi bi-check-circle-fill text-warning" style="font-size: 4rem;"></i>
        <h2 class="mt-3">Registration Successful!</h2>
        <p>Thank you for signing up. You can now proceed to the home page.</p>
        <a href="index.jsp" class="btn btn-warning">
            <i class="bi bi-house-door"></i> Go Back to Home
        </a>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>

</html>