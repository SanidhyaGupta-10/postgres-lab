-- Active: 1770455450205@@localhost@9000@new_db

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NULL,
    age BIGINT NULL
);

INSERT INTO students (name, age) VALUES ('Alice', 20);
INSERT INTO students (name, age) VALUES ('Bob', 22);

ALTER TABLE students
    ADD COLUMN email VARCHAR(255) DEFAULT 'Not Provided';

ALTER TABLE students
    DROP COLUMN email;

ALTER TABLE students
    RENAME COLUMN name TO full_name;

ALTER TABLE students
ALTER COLUMN age TYPE INT;

ALTER TABLE students -- Set default age to 18
ALTER COLUMN age SET DEFAULT 18;

ALTER TABLE students -- Remove default age
ALTER COLUMN age DROP DEFAULT;

ALTER TABLE students -- Add a check constraint to ensure age is non-negative
ADD CONSTRAINT age_check CHECK (age >= 0);

ALTER TABLE students -- Drop the check constraint
DROP CONSTRAINT age_check;

ALTER TABLE students -- Rename table to pupils
RENAME TO pupils;

SELECT * FROM pupils;