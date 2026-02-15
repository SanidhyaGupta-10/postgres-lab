-- Active: 1770455450205@@localhost@9000@product_db

SELECT * FROM products; -- This query retrieves all records from the products table, showing all available products and their details.

CREATE view fitness_item AS
SELECT product_id, product_name, price, stock_quantity 
FROM products
WHERE category = 'Fitness'; -- This view filters products to show only those in the 'Fitness' category.

SELECT * FROM fitness_item; -- This query retrieves all records from the fitness_item view, showing only fitness-related products.

CREATE VIEW low_stock_items AS
SELECT product_id, product_name, price, stock_quantity
FROM products
WHERE stock_quantity > 30; -- This view identifies products that have low stock (less than 10 units).

SELECT * FROM low_stock_items; -- This query retrieves all records from the low_stock_items view, showing products that need restocking.

-- How to Edit a View
CREATE OR REPLACE VIEW fitness_item AS
SELECT product_id, product_name, price, stock_quantity
FROM products
WHERE category = 'Fitness' AND price < 50; -- This updated view now filters fitness products to show only those priced under $50.