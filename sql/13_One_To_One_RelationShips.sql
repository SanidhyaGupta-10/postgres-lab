-- Active: 1770455450205@@localhost@9000@school_db

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO students (id, name) 

VALUES (1, 'Alice'),
       (2, 'Bob'),
       (3, 'Charlie');

CREATE TABLE students_profile (
    student_id INT PRIMARY KEY,
    address TEXT,
    phone VARCHAR(15),
    age INT
);

INSERT INTO students_profile (student_id, address, phone, age)
VALUES  (1, '123 Main St', '555-1234', 20),
        (2, '456 Elm St', '555-5678', 22),
        (3, '789 Oak St', '555-9012', 21);

ALTER TABLE students_profile
ADD CONSTRAINT fk_student_id
FOREIGN KEY (student_id) 
REFERENCES students(id); -- Establishing a foreign key relationship between students_profile and students

SELECT * FROM students_profile;
SELECT * FROM students;

SELECT
    s.id,
    s.name,
    sp.address,
    sp.age,
    sp.phone
FROM students s
JOIN students_profile sp 
ON s.id = sp.student_id; -- Joining students and students_profile to get combined information about students