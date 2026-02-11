-- Active: 1770455450205@@localhost@9000@first_postgres_db

SELECT * FROM Flipkart_DB;

SELECT 
    product_name,
    price,
    CASE
        WHEN (price > 1000) THEN 'Expensive'
        WHEN (price > 500 AND price <= 1000) THEN 'Moderate'
        ELSE 'Cheap'
    END AS price_tag
FROM Flipkart_DB;
-- The above query selects the product name, price, and assigns a price tag based on the price of the product. If the price is greater than 1000, it is tagged as 'Expensive'. If the price is between 500 and 1000 (inclusive), it is tagged as 'Moderate'. Otherwise, it is tagged as 'Cheap'.

-- CASE work like IF-ELSE statement in SQL. It evaluates a list of conditions and returns one of the multiple possible result expressions. The first condition that is true will be returned, and if no conditions are true, the ELSE part will be returned.