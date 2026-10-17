-- Ghana Grocery Items Database
-- Educational sample data. Prices and stock quantities are illustrative, not live market prices.
-- Verify exact product names, package sizes, and country-of-origin claims before real-world use.

CREATE DATABASE IF NOT EXISTS ghana_grocery_db
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ghana_grocery_db;

DROP TABLE IF EXISTS grocery_items;

CREATE TABLE grocery_items (
    item_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    brand_name VARCHAR(100) NOT NULL,
    category VARCHAR(80) NOT NULL,
    country_of_origin VARCHAR(60) NOT NULL DEFAULT 'Ghana',
    package_size VARCHAR(50) NOT NULL,
    price_ghs DECIMAL(10,2) NOT NULL CHECK (price_ghs >= 0),
    stock_quantity INT UNSIGNED NOT NULL DEFAULT 0,
    expiration_date DATE NULL,
    is_available BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO grocery_items
(product_name, brand_name, category, country_of_origin, package_size, price_ghs, stock_quantity, expiration_date, is_available)
VALUES
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '2 L', 75.00, 12, '2027-01-03', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '2.5 L', 89.00, 19, '2027-02-06', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '5 L', 165.00, 26, '2027-03-09', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '2.5 L', 105.00, 33, '2027-04-12', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '5 L', 198.00, 40, '2027-05-15', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '1 L', 42.00, 47, '2027-06-18', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '2.5 L', 91.00, 54, '2027-07-21', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '5 L', 172.00, 61, '2027-08-24', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '1 kg', 28.00, 68, '2027-09-27', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '5 kg', 128.00, 10, '2027-10-03', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '10 kg', 245.00, 17, '2027-11-06', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '1 L', 39.00, 24, '2027-12-09', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '2 L', 74.00, 31, '2027-01-12', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '5 L', 178.00, 38, '2027-02-15', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', '125 ml', 4.00, 45, '2027-03-18', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', '250 ml', 6.00, 52, '2027-04-21', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 6 x 125 ml', 22.00, 59, '2027-05-24', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 12 x 125 ml', 43.00, 66, '2027-06-27', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 24 x 125 ml', 84.00, 8, '2027-07-03', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Carton of 48 x 125 ml', 160.00, 15, '2027-08-06', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '500 ml', 22.00, 22, '2027-09-09', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '1 L', 40.00, 29, '2027-10-12', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '750 ml', 31.00, 36, '2027-11-15', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '500 ml', 27.00, 43, '2027-12-18', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '1 L', 49.00, 50, '2027-01-21', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '2 L', 93.00, 57, '2027-02-24', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '500 ml', 21.00, 64, '2027-03-27', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '750 ml', 30.00, 6, '2027-04-03', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '1.5 L', 62.00, 13, '2027-05-06', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '2 kg', 54.00, 20, '2027-06-09', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '25 kg', 590.00, 27, '2027-07-12', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '500 ml', 21.00, 34, '2027-08-15', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '750 ml', 29.00, 41, '2027-09-18', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '1.5 L', 57.00, 48, '2027-10-21', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Single bottle 125 ml', 4.00, 55, '2027-11-24', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 4 x 125 ml', 15.00, 62, '2027-12-27', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 8 x 125 ml', 30.00, 69, '2027-01-03', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 10 x 125 ml', 37.00, 11, '2027-02-06', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 18 x 125 ml', 64.00, 18, '2027-03-09', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 30 x 125 ml', 105.00, 25, '2027-04-12', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '250 ml', 12.00, 32, '2027-05-15', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '750 ml', 31.00, 39, '2027-06-18', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '1.5 L', 59.00, 46, '2027-07-21', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '3 L', 116.00, 53, '2027-08-24', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '250 ml', 15.00, 60, '2027-09-27', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '750 ml', 38.00, 67, '2027-10-03', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '1.5 L', 73.00, 9, '2027-11-06', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '3 L', 139.00, 16, '2027-12-09', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '250 ml', 12.00, 23, '2027-01-12', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '3 L', 118.00, 30, '2027-02-15', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '500 g', 15.00, 37, '2027-03-18', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '3 kg', 81.00, 44, '2027-04-21', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '20 kg', 475.00, 51, '2027-05-24', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '250 ml', 12.00, 58, '2027-06-27', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '3 L', 112.00, 65, '2027-07-03', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 2 x 125 ml', 8.00, 7, '2027-08-06', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 3 x 125 ml', 11.00, 14, '2027-09-09', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 5 x 125 ml', 19.00, 21, '2027-10-12', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 20 x 125 ml', 72.00, 28, '2027-11-15', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 36 x 125 ml', 126.00, 35, '2027-12-18', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '4 L', 145.00, 42, '2027-01-21', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '4 L', 164.00, 49, '2027-02-24', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '4 L', 151.00, 56, '2027-03-27', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '750 g', 22.00, 63, '2027-04-03', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '4 kg', 104.00, 5, '2027-05-06', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '4 L', 146.00, 12, '2027-06-09', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 15 x 125 ml', 54.00, 19, '2027-07-12', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 16 x 125 ml', 58.00, 26, '2027-08-15', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 40 x 125 ml', 140.00, 33, '2027-09-18', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '10 L', 320.00, 40, '2027-10-21', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '10 L', 380.00, 47, '2027-11-24', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '10 L', 330.00, 54, '2027-12-27', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '50 kg', 1120.00, 61, '2027-01-03', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '10 L', 350.00, 68, '2027-02-06', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 2 cartons x 24', 320.00, 10, '2027-03-09', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '1 gallon', 155.00, 17, '2027-04-12', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '1 gallon', 180.00, 24, '2027-05-15', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '1 gallon', 160.00, 31, '2027-06-18', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '1.5 kg', 41.00, 38, '2027-07-21', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '6 L', 215.00, 45, '2027-08-24', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 60 x 125 ml', 198.00, 52, '2027-09-27', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '750 ml bottle', 32.00, 59, '2027-10-03', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '750 ml bottle', 39.00, 66, '2027-11-06', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '750 ml bottle', 31.00, 8, '2027-12-09', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '2.5 kg', 68.00, 15, '2027-01-12', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '2.5 L', 93.00, 22, '2027-02-15', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 6 bottles', 23.00, 29, '2027-03-18', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '5 L jerrycan', 168.00, 36, '2027-04-21', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '5 L jerrycan', 202.00, 43, '2027-05-24', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '5 L jerrycan', 175.00, 50, '2027-06-27', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '5 kg bag', 130.00, 57, '2027-07-03', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '5 L bottle', 180.00, 64, '2027-08-06', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Single serve 125 ml', 4.00, 6, '2027-09-09', TRUE),
('Philfry Vegetable Cooking Oil', 'Philfry', 'Cooking Oil', 'Ghana', '2 L bottle', 76.00, 13, '2027-10-12', TRUE),
('Sunphil Premium Sunflower Oil', 'Sunphil', 'Cooking Oil', 'Ghana', '2 L bottle', 95.00, 20, '2027-11-15', TRUE),
('Arielle Vegetable Oil', 'Arielle', 'Cooking Oil', 'Ghana', '2 L bottle', 78.00, 27, '2027-12-18', TRUE),
('Theresa Jasmine Rice', 'Theresa Foods', 'Rice and Grains', 'Ghana', '10 kg bag', 250.00, 34, '2027-01-21', TRUE),
('Theresa Cooking Oil', 'Theresa Foods', 'Cooking Oil', 'Ghana', '2 L bottle', 75.00, 41, '2027-02-24', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 12 bottles', 45.00, 48, '2027-03-27', TRUE),
('Kalyppo Fruit Drink', 'Kalyppo', 'Beverages', 'Ghana', 'Pack of 24 bottles', 86.00, 55, '2027-04-03', TRUE);

-- Verify record count (expected: 100).
SELECT COUNT(*) AS total_grocery_items FROM grocery_items;

-- Query 1: list products alphabetically.
SELECT item_id, product_name, brand_name, category, package_size, price_ghs
FROM grocery_items
ORDER BY product_name ASC;

-- Query 2: products priced above the table average (subquery).
SELECT product_name, brand_name, price_ghs
FROM grocery_items
WHERE price_ghs > (SELECT AVG(price_ghs) FROM grocery_items)
ORDER BY price_ghs DESC;

-- Query 3: count and average price by category (aggregation).
SELECT category, COUNT(*) AS item_count, ROUND(AVG(price_ghs), 2) AS average_price_ghs
FROM grocery_items
GROUP BY category
ORDER BY average_price_ghs DESC;

-- Query 4: low-stock items.
SELECT item_id, product_name, brand_name, stock_quantity
FROM grocery_items
WHERE stock_quantity < 15
ORDER BY stock_quantity ASC;

-- Query 5: rank products by price within each category (window function).
SELECT category, product_name, brand_name, price_ghs,
       DENSE_RANK() OVER (PARTITION BY category ORDER BY price_ghs DESC) AS price_rank_in_category
FROM grocery_items
ORDER BY category, price_rank_in_category;

-- Query 6: count listed variants per brand.
SELECT brand_name, COUNT(*) AS listed_variants
FROM grocery_items
GROUP BY brand_name
ORDER BY listed_variants DESC;
