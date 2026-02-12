-- Active: 1770455450205@@localhost@9000@school_db

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);
INSERT INTO students (id, name, age) 

VALUES (1, 'Alice', 20),
       (2, 'Bob', 22),
       (3, 'Charlie', 21);


CREATE TABLE students_profile (
    student_id INT PRIMARY KEY,
    address TEXT,
    phone VARCHAR(15),
    age INT
);

INSERT INTO students_profile (student_id, address, phone, age)
VALUES (1, '123 Main St', '555-1234', 20),
         (2, '456 Elm St', '555-5678', 22),
         (3, '789 Oak St', '555-9012', 21);


SELECT * FROM students_profile;
SELECT * FROM students;

