SELECT * FROM Flipkart_db;

-- WHERE Clause is important for using any operator in SQL. It is used to filter records based on specified conditions.
SELECT * FROM Flipkart_db WHERE CATEGORY != 'Electronics';
SELECT * FROM Flipkart_db WHERE price > 200;
SELECT * FROM Flipkart_db WHERE price >= 400;

-- "AND" operator is used to combine multiple conditions in a WHERE clause. All conditions must be true for the record to be included in the result set.

SELECT * FROM Flipkart_db WHERE price <= 500 AND CATEGORY='Audio';

SELECT * FROM Flipkart_db WHERE price > 300 AND price < 600;

SELECT * FROM Flipkart_db WHERE price BETWEEN 200 AND 400;

SELECT * FROM Flipkart_db WHERE CATEGORY = 'Audio' OR CATEGORY = 'Electronics';

SELECT * FROM Flipkart_db WHERE CATEGORY IN ('Audio', 'Electronics', 'Tablets');

SELECT * FROM Flipkart_db WHERE sku_code LIKE '%12%';

-- __ is used to match any single character in a string. For example, 'A__' would match 'ABC', 'A12', etc., but not 'ABCD' or 'A1'.