-- Active: 1770455450205@@localhost@9000@first_postgres_db

CREATE TABLE Flipkart_DB (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    sku_code CHAR(8) CHECK (CHAR_LENGTH(sku_code) = 8) UNIQUE NOT NULL,
    price NUMERIC(10, 2) CHECK (price >= 0) NOT NULL,
    stock INT CHECK (stock >= 0) DEFAULT 0 NOT NULL, -- it will ensure that stock cannot be negative,
    is_available BOOLEAN DEFAULT TRUE,
    category TEXT NOT NULL,
    added_at TIMESTAMP DEFAULT now(),
    last_updated_at TIMESTAMP DEFAULT now()
)
-- Insert sample data into the Flipkart_DB table

INSERT INTO Flipkart_DB (product_name, sku_code, price, stock, is_available, category, added_at, last_updated_at)

VALUES
    ('Smartphone XYZ', 'SKU12345', 299.99, 50, TRUE, 'Electronics', '2024-01-01 10:00:00', '2024-01-01 10:00:00'),
    ('Laptop ABC', 'SKU67890', 899.99, 30, TRUE, 'Computers', '2024-01-02 11:00:00', '2024-01-02 11:00:00'),
    ('Headphones DEF', 'SKU54321', 49.99, 100, TRUE, 'Audio', '2024-01-03 12:00:00', '2024-01-03 12:00:00'),
    ('Smartwatch GHI', 'SKU98765', 199.99, 20, TRUE, 'Wearables', '2024-01-04 13:00:00', '2024-01-04 13:00:00'),
    ('Tablet JKL', 'SKU24680', 399.99, 15, TRUE, 'Tablets', '2024-01-05 14:00:00', '2024-01-05 14:00:00'),


INSERT INTO Flipkart_DB (product_name, sku_code, price, stock, is_available, category, added_at, last_updated_at)

VALUES 
 ('Phone Case MNO', 'SKU11111', 19.99, 200, TRUE, 'Electronics', '2024-01-06 15:00:00', '2024-01-06 15:00:00'),
    ('USB Cable PQR', 'SKU22222', 9.99, 300, TRUE, 'Electronics', '2024-01-07 16:00:00', '2024-01-07 16:00:00'),
    ('Keyboard STU', 'SKU33333', 79.99, 45, TRUE, 'Computers', '2024-01-08 17:00:00', '2024-01-08 17:00:00'),
    ('Mouse VWX', 'SKU44444', 29.99, 80, TRUE, 'Computers', '2024-01-09 18:00:00', '2024-01-09 18:00:00'),
    ('Speaker YZA', 'SKU55555', 59.99, 60, TRUE, 'Audio', '2024-01-10 19:00:00', '2024-01-10 19:00:00'),
    ('Earbuds BCD', 'SKU66666', 89.99, 75, TRUE, 'Audio', '2024-01-11 20:00:00', '2024-01-11 20:00:00'),
    ('Fitness Band EFG', 'SKU77777', 149.99, 40, TRUE, 'Wearables', '2024-01-12 21:00:00', '2024-01-12 21:00:00'),
    ('Smart Ring HIJ', 'SKU88888', 249.99, 25, TRUE, 'Wearables', '2024-01-13 22:00:00', '2024-01-13 22:00:00'),
    ('Stylus Pen KLM', 'SKU99999', 99.99, 55, TRUE, 'Tablets', '2024-01-14 23:00:00', '2024-01-14 23:00:00'),
    ('Tablet Charger NOP', 'SKU10101', 39.99, 90, TRUE, 'Tablets', '2024-01-15 09:30:00', '2024-01-15 09:30:00');

    SELECT setval('flipkart_db_product_id_seq', (SELECT MAX(product_id) FROM Flipkart_DB));


SELECT * FROM Flipkart_DB;

SELECT product_name, price FROM Flipkart_DB;

SELECT category from Flipkart_DB;

SELECT category from Flipkart_DB GROUP BY category;

SELECT category, count(*) from Flipkart_DB 
GROUP BY category
HAVING count(*) > 1;

SELECT product_name, category FROM Flipkart_DB WHERE category = 'Electronics';

SELECT * FROM Flipkart_DB ORDER BY price; -- it is default ascending order
SELECT * FROM Flipkart_DB ORDER BY price DESC; -- it is descending order

SELECT * FROM Flipkart_DB ORDER BY product_name, price; -- it will sort by product_name 

SELECT * FROM Flipkart_DB LIMIT 5; -- it will return only first 5 records

SELECT product_name as name, price as product_price FROM Flipkart_DB; -- it will return product_name as name and price as product_price

SELECT DISTINCT category from Flipkart_DB;