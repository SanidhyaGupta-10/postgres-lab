SELECT * FROM Flipkart_db;

-- WHERE Clause is important for using any operator in SQL. It is used to filter records based on specified conditions.
SELECT * FROM Flipkart_db WHERE CATEGORY != 'Electronics';
SELECT * FROM Flipkart_db WHERE price > 200;
SELECT * FROM Flipkart_db WHERE price >= 400;

-- "AND" operator is used to combine multiple conditions in a WHERE clause. All conditions must be true for the record to be included in the result set.

SELECT * FROM Flipkart_db WHERE price <= 500 AND CATEGORY='Audio';

SELECT * FROM Flipkart_db WHERE price > 300 AND price < 600;