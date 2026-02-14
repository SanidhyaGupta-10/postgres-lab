-- Active: 1770455450205@@localhost@9000@new_db

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(255) NOT NULL
);
INSERT INTO students (student_name) VALUES 
('Alice'),
('Bob'),
('Charlie');

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL
);

INSERT INTO courses (course_id, course_name) VALUES 
(101, 'Python Programming'),
(102, 'Data Science'),
(103, 'Database Systems');


SELECT * FROM students;
SELECT * FROM courses;