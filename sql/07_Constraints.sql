-- Active: 1770455450205@@localhost@9000@first_postgres_db

CREATE TABLE constraints_example (
    id SERIAL PRIMARY KEY, -- it will be unique and not null
    name CHAR(50) NOT NULL, -- it will not allow null values
    age INT CHECK (age >= 18),
    -- it will ensure that the age is 18 or older
    email VARCHAR(255) UNIQUE NOT NULL -- it will ensure that the email is unique across the table
    created_at DATE DEFAULT now() -- it will set the default value to the current date if not provided
);

-- Inserting valid data
INSERT INTO constraints_example (id, name, age, email) 
VALUES (1, 'Alice', 30, 'alice@example.com');

-- Inserting invalid data (age less than 18)
INSERT INTO constraints_example (id, name, age, email)
VALUES (2, 'Bob', 17, 'bob@example.com');

-- Inserting invalid data (duplicate email)
INSERT INTO constraints_example (id, name, age, email)
VALUES (3, 'Charlie', 25, 'alice@example.com');

-- Querying the table to see the valid entries
SELECT * FROM constraints_example;