SELECT AVG(price) FROM Flipkart_DB WHERE category = 'Electronics' OR category = 'Audio'; -- it will return the average price of products in the Electronics and Audio categories

SELECT ROUND(AVG(price)) FROM Flipkart_DB WHERE category IN ('Electronics', 'Audio'); -- it will return the average price of products in the Electronics and Audio categories using the IN operator


-- Query in Query
SELECT product_name, price FROM Flipkart_DB 
WHERE price = ( SELECT MIN(price) from Flipkart_DB); -- it will return the product name and price of the product with the lowest price in the Flipkart_DB table


SELECT product_name, stock from Flipkart_DB 
WHERE is_available = TRUE AND stock > 50 and price != 200.99; -- it will return the product name and stock of products that are available, have stock greater than 50, and price not equal to 200 in the Flipkart_DB table

SELECT category, MAX(price) AS MAX_PRICE FROM Flipkart_DB GROUP BY category; -- it will return the category and maximum price of products in each category in the Flipkart_DB table




SELECT DISTINCT Upper(category) as category_upper FROM Flipkart_DB
order by category_upper DESC; -- it will return the distinct categories in uppercase and order them in descending order in the Flipkart_DB table



