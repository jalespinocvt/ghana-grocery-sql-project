<?php
// Q10: Render database query results in an HTML table.
require_once "dbconfig.php";

$stmt = $pdo->query(
    "SELECT item_id, product_name, brand_name, category, price_ghs,
            stock_quantity, is_available
     FROM grocery_items
     ORDER BY brand_name, product_name
     LIMIT 50"
);
$items = $stmt->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ghana Grocery Items</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 24px; }
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #999; padding: 8px; text-align: left; }
        th { background: #eee; }
    </style>
</head>
<body>
<h2>Ghana Grocery Items</h2>
<table>
    <thead>
        <tr>
            <th>ID</th><th>Product</th><th>Brand</th><th>Category</th>
            <th>Price (GHS)</th><th>Stock</th><th>Available</th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($items as $item): ?>
        <tr>
            <td><?= htmlspecialchars((string)$item["item_id"]) ?></td>
            <td><?= htmlspecialchars($item["product_name"]) ?></td>
            <td><?= htmlspecialchars($item["brand_name"]) ?></td>
            <td><?= htmlspecialchars($item["category"]) ?></td>
            <td><?= htmlspecialchars((string)$item["price_ghs"]) ?></td>
            <td><?= htmlspecialchars((string)$item["stock_quantity"]) ?></td>
            <td><?= $item["is_available"] ? "Yes" : "No" ?></td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</body>
</html>
