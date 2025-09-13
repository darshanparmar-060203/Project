<?php
include 'db_connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $dob = $_POST['dob'];
    $gender = $_POST['gender'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    if ($password !== $confirm_password) {
        die("Passwords do not match.");
    }

    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Check for sentinel
    $is_admin = strpos($username, '.sentinel') !== false;
    $table = $is_admin ? 'reg_admin' : 'register';

    $sql = "INSERT INTO $table (name, dob, gender, email, phone, address, username, password) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssssssss", $name, $dob, $gender, $email, $phone, $address, $username, $hashed_password);

    if ($stmt->execute()) {
        // Stop here — no second insert can happen
        header("Location: login.html");
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }
}
?>
