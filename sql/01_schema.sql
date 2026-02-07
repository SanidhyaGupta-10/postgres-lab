-- Active: 1770455450205@@localhost@9000@first_postgres_db
CREATE TABLE students (
    student_id INT,
    name CHAR(50),
    age INT,
    grade CHAR(1)
)

-- INSERT INTO students (name, age, grade)
-- VALUES ('Alice', 20, 'A'),
--        ('Bob', 22, 'B'),
--        ('Charlie', 19, 'A'),
--        ('David', 21, 'C');

INSERT INTO students (student_id, name, age, grade)
VALUES (1, 'Hello', 22, 'A'),
       (2, 'World', 26, 'B'),
       (3, 'Joe', 22, 'A'),
       (4, 'Daemon', 30, 'C');

-- SELECT * FROM students;

SELECT student_id
FROM students