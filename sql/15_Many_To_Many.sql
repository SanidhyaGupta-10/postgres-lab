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

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id), -- Composite primary key to ensure uniqueness
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO student_courses (student_id, course_id) VALUES 
(1, 101), -- Alice enrolls in Python Programming
(1, 102), -- Alice enrolls in Data Science
(2, 101), -- Bob enrolls in Python Programming
(2, 103), -- Bob enrolls in Database Systems
(3, 103); -- Charlie enrolls in Database Systems


SELECT 
s.student_name, 
c.course_name
FROM student_courses sc
JOIN students s ON sc.student_id = s.student_id
JOIN courses c ON sc.course_id = c.course_id
ORDER BY s.student_name, c.course_name;
-- This query retrieves the names of students along with the courses they are enrolled in, ordered by student name and course name.

SELECT 
    s.student_name,
    c.course_name
FROM student_courses sc
JOIN students s ON sc.student_id = s.student_id
JOIN courses c ON sc.course_id = c.course_id
WHERE s.student_name = 'Alice';
-- This query retrieves the courses that Alice is enrolled in.



SELECT * FROM students;
SELECT * FROM courses;