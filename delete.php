<?php
// Q8: Delete only the record with the specified item_id.
// Change the ID to a record you intend to remove.
require_once "dbconfig.php";

$itemId = 121; // Example ID for a record inserted for testing.
$stmt = $pdo->prepare("DELETE FROM grocery_items WHERE item_id = :item_id");
$stmt->execute([":item_id" => $itemId]);

if ($stmt->rowCount() > 0) {
    echo "Record deleted successfully.";
} else {
    echo "No record was deleted. Check that the item ID exists.";
}
?>
