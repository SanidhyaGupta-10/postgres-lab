-- Active: 1770455450205@@localhost@9000@first_postgres_db
CREATE TABLE students (
    student_id INT,
    name CHAR(50),
    age INT,
    grade CHAR(1)
)

INSERT INTO students (name, age, grade)
VALUES ('Alice', 20, 'A'),
       ('Bob', 22, 'B'),
       ('Charlie', 19, 'A'),
       ('David', 21, 'C');

SELECT * FROM students;