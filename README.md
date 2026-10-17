# Ghana Grocery Items Database

## Files
- `ghana_grocery.sql`: creates the database/table, inserts 100 sample rows, and includes example queries.
- `dbconfig.php`: PHP MySQLi connection settings for local XAMPP.

## Import
1. Start Apache and MySQL in XAMPP.
2. Open http://localhost/phpmyadmin
3. Choose **Import**, select `ghana_grocery.sql`, and run the import.
4. Check that `SELECT COUNT(*)` returns 100.

## PHP
Place `dbconfig.php` in a project folder under `C:\xampp\htdocs\`. Update the credentials if your local MySQL setup uses a password.

## Data note
Prices and stock values are illustrative, not current market prices. The file includes sample package variants for an academic exercise; verify exact retail SKUs and product origin with manufacturers before presenting every variant as a currently marketed product.
