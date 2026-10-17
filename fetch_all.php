<?php
// Q5: Fetch every row and display the result with print_r() inside <pre>.
require_once "dbconfig.php";

$stmt = $pdo->query("SELECT * FROM grocery_items ORDER BY item_id LIMIT 10");
$items = $stmt->fetchAll();

echo "<pre>";
print_r($items);
echo "</pre>";
?>
