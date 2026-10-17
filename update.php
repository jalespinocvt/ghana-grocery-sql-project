<?php
// Q9: Update the price and stock of one record using a prepared statement.
require_once "dbconfig.php";

$itemId = 1; // Example: update the record whose item_id is 1.
$newPrice = 12.50;
$newStock = 35;

$stmt = $pdo->prepare(
    "UPDATE grocery_items
     SET price_ghs = :price, stock_quantity = :stock
     WHERE item_id = :item_id"
);
$stmt->execute([
    ":price" => $newPrice,
    ":stock" => $newStock,
    ":item_id" => $itemId
]);

echo $stmt->rowCount() > 0
    ? "Record updated successfully."
    : "No changes were made. Check the item ID and current values.";
?>
