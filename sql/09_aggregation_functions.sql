-- Active: 1770455450205@@localhost@9000@first_postgres_db

SELECT COUNT(product_id) from Flipkart_db;

SELECT SUM(price) from Flipkart_db;

SELECT SUM(price) from Flipkart_db WHERE CATEGORY = 'Electronics' OR CATEGORY = 'Audio';

SELECT ROUND(AVG(price), 2) from Flipkart_db;

SELECT MAX(price) from Flipkart_db;

SELECT MIN(price) from Flipkart_db;
