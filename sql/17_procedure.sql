-- Active: 1770455450205@@localhost@9000@product_db

SELECT * FROM products;

-- Writing an SQL Procedure

CREATE PROCEDURE add_product (
    p_name VARCHAR,
    p_sku CHAR(8),
    p_price NUMERIC,
    p_qty INT,
    p_category TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO products (product_name, sku, price, stock_quantity, category)
    VALUES (p_name, p_sku, p_price, p_qty, p_category);

    RAISE NOTICE 'Product % added successfully!', p_name;
END;
$$;

