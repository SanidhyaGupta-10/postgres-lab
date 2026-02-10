SELECT upper(product_name) from Flipkart_Db; -- This query converts the product_name column to uppercase letters.

SELECT lower(product_name) from Flipkart_Db; -- This query converts the product_name column to lowercase letters.

SELECT length(sku_code) from Flipkart_Db; -- This query returns the length of the sku_code column for each record in the Flipkart_Db table.

SELECT substring('Brother in arms', 1, 7); -- This query extracts a substring from the string 'Brother in arms' starting from position 1 and with a length of 7 characters, resulting in 'Brother'.

-- uses of substring function

SELECT product_name, lower(substring(sku_code, 1, 2)) as sku_code_lower FROM Flipkart_Db; -- This query extracts the first two characters from the sku_code column, converts them to lowercase, and returns the name along with the modified sku_code as sku_code_lower.

SELECT left('Caraxes and Daemon', 7); -- This query returns the leftmost 7 characters of the string 'Caraxes and Daemon', resulting in 'Caraxes'.

SELECT right('Caraxes and Daemon', 6); -- This query returns the rightmost 6 characters of the string 'Caraxes and Daemon', resulting in 'Daemon'.

SELECT product_name, left(sku_code, 3) AS sku_code_left FROM Flipkart_Db; -- This query extracts the leftmost 3 characters from the sku_code column and returns it as sku_code_left along with the product_name.

SELECT CONCAT(product_name, ' - ', category, ' ', sku_code) as products_with_category FROM Flipkart_Db; -- This query concatenates the product_name, a separator '---', and the category column for each record in the Flipkart_Db table.

SELECT CONCAT_WS('  ', product_name, category, sku_code) as products_with_category FROM Flipkart_Db;

SELECT TRIM('   Hello World!   '); -- This query removes leading and trailing spaces from the string '   Hello World!   ', resulting in 'Hello World!'.

SELECT product_name, REPLACE(sku_code, left(sku_code, 2), 'XX') AS modified_sku_code FROM Flipkart_Db; -- This query replaces the first two characters of the sku_code column with 'XX' and returns it as modified_sku_code along with the product_name.