-- Active: 1770455450205@@localhost@9000@first_postgres_db

CREATE TABLE numbers (
    id SERIAL,
    age SMALLINT,
    salary NUMERIC(10, 2),
    rating REAL
);

INSERT INTO numbers (age, salary, rating) 
VALUES (25, 50000.00, 4.5);

SELECT * FROM numbers;