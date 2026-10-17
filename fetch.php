<?php
// Q6: Fetch one row and display it with print_r() inside <pre>.
require_once "dbconfig.php";

$stmt = $pdo->query("SELECT * FROM grocery_items ORDER BY item_id LIMIT 1");
$item = $stmt->fetch();

echo "<pre>";
print_r($item);
echo "</pre>";
?>
