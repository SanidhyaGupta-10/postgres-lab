-- Active: 1770455450205@@localhost@9000@school_db
CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE people_marks (
    mark_id SERIAL PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES people(id)
);

INSERT INTO people (name) 
VALUES ('Alice'),
       ('Bob'),
       ('Charlie'),
    
INSERT INTO people (name) VALUES ('Joe');

INSERT INTO people_marks (student_id, subject, marks)
VALUES 
         (1, 'Math', 85),
         (1, 'Science', 90),
         (2, 'Math', 78),
         (2, 'Science', 82),
         (3, 'Math', 92),
         (3, 'Science', 88);

SELECT people.name, people_marks.subject, people_marks.marks 
FROM people
LEFT JOIN people_marks ON people.id = people_marks.student_id; -- This query retrieves all people and their corresponding marks, showing NULL for subjects and marks where there is no entry in people_marks (e.g., for David and Eve).

-- How Left Join works:
-- The LEFT JOIN returns all records from the left table (people), and the matched records from

SELECT people.name, people_marks.subject, people_marks.marks 
FROM people
RIGHT JOIN people_marks ON people.id = people_marks.student_id; -- This query retrieves all marks and their corresponding people, showing NULL for names where there is no entry in people (e.g., if there were marks without a corresponding person).

SELECT people.name, people_marks.subject, people_marks.marks 
FROM people
FULL JOIN people_marks ON people.id = people_marks.student_id;  -- This query retrieves all records from both tables, showing NULL for names where there is no corresponding mark and NULL for subjects and marks where there is no corresponding person.

-- CROSS JOIN example:
SELECT people.name, people_marks.subject, people_marks.marks
FROM people
CROSS JOIN people_marks; -- This query returns the Cartesian product of the two tables, resulting in every combination of people and marks, regardless of any relationship between them.


SELECT * FROM people;