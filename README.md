# Ghana Grocery PDO Methods Activity

## Files
- `ghana_grocery.sql`: creates the database/table and inserts 120 sample rows.
- `dbconfig.php`: PDO connection configuration.
- `fetch_all.php`: demonstrates `fetchAll()` with `print_r()` and `<pre>`.
- `fetch.php`: demonstrates `fetch()` with `print_r()` and `<pre>`.
- `insert.php`: inserts a sample record.
- `delete.php`: deletes the record with item ID 121; adjust the ID to the record you want to delete.
- `update.php`: updates the price and stock for item ID 1.
- `table.php`: renders a query result in an HTML table.

## Setup
1. Copy the project folder into `C:\xampp\htdocs\ghana_grocery_pdo_activity`.
2. Start Apache and MySQL in XAMPP.
3. Open `http://localhost/phpmyadmin`.
4. Use **Import** to import `ghana_grocery.sql`.
5. Open each PHP file through `http://localhost/ghana_grocery_pdo_activity/`.

## Important notes
- Default XAMPP MySQL settings are used (`root` with a blank password). Change these if your local setup differs.
- Run `insert.php` only when you want to add the sample record. It can create a duplicate if run more than once.
- Run `delete.php` only after confirming the target ID. The example targets ID 121, which is not part of the initial 120 rows, so change it to a test record you intend to delete.
- The record names, variant labels, dates, prices and stock counts are sample data for practicing SQL/PDO. Verify product-specific details and current market availability before presenting the records as verified real-world products.
- Do not publish real database passwords to GitHub.
