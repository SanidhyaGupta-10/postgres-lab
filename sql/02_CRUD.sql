-- Active: 1770455450205@@localhost@9000@first_postgres_db

-- Update the age of the student named 'Daemon' to 100

-- For Updating One Record
UPDATE students
SET age = 100
where name = 'Daemon';

-- For Updating Multiple Records

UPDATE students
SET student_id = student_id + 100
WHERE name IN ('Alice', 'Bob', 'Charlie', 'David');

SELECT * FROM students

DELETE FROM students
WHERE name = 'Hello';
DELETE FROM students
WHERE name = 'World';

SELECT * FROM students

INSERT INTO students
VALUES (3, 'Joe-Goldberg', 22, 'A');

SELECT * FROM students

