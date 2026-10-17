<?php
// Q7: Insert one sample grocery record using a prepared statement.
require_once "dbconfig.php";

$sql = "INSERT INTO grocery_items
(product_name, brand_name, category, country_of_origin, package_size,
 price_ghs, stock_quantity, expiration_date, is_available)
VALUES
(:product_name, :brand_name, :category, :country_of_origin, :package_size,
 :price_ghs, :stock_quantity, :expiration_date, :is_available)";

$stmt = $pdo->prepare($sql);
$stmt->execute([
    ":product_name" => "Sample Cocoa Powder 100g",
    ":brand_name" => "Cocoa Processing Company",
    ":category" => "Cocoa",
    ":country_of_origin" => "Ghana",
    ":package_size" => "100g",
    ":price_ghs" => 8.50,
    ":stock_quantity" => 20,
    ":expiration_date" => "2027-12-31",
    ":is_available" => 1
]);

echo "Record inserted successfully. New item ID: " . $pdo->lastInsertId();
?>
