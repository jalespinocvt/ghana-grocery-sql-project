<?php
// Database connection settings for the Ghana Grocery Items project.
// XAMPP's local MariaDB/MySQL default user is commonly "root" with an empty password.
// If you configured a password, replace the empty string below.

$db_host = "localhost";
$db_name = "ghana_grocery_db";
$db_user = "root";
$db_password = "";

$conn = new mysqli($db_host, $db_user, $db_password, $db_name);

// Stop if the connection cannot be established.
if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}

// Use UTF-8 encoding for text data.
$conn->set_charset("utf8mb4");
?>
