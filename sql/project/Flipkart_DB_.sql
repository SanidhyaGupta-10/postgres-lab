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
    ( 'Smartwatch GHI', 'SKU98765', 199.99, 20, TRUE, 'Wearables', '2024-01-04 13:00:00', '2024-01-04 13:00:00'),
    ('Tablet JKL', 'SKU24680', 399.99, 15, TRUE, 'Tablets', '2024-01-05 14:00:00', '2024-01-05 14:00:00');


    SELECT setval('flipkart_db_product_id_seq', (SELECT MAX(product_id) FROM Flipkart_DB));


SELECT * FROM Flipkart_DB;