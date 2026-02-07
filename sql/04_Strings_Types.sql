-- Active: 1770455450205@@localhost@9000@first_postgres_db

CREATE TABLE strings (
    code CHAR(5),
    email VARCHAR(100),
    description TEXT
);
INSERT INTO strings (code, email, description) 
VALUES ('A1234', 'user@example.com', 'Sample description text');

SELECT * FROM strings;