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
       ('Charlie');

INSERT INTO people_marks (student_id, subject, marks)
VALUES 
         (1, 'Math', 85),
         (1, 'Science', 90),
         (2, 'Math', 78),
         (2, 'Science', 82),
         (3, 'Math', 92),
         (3, 'Science', 88);

SELECT * FROM people
JOIN people_marks ON people.id = people_marks.student_id; -- Joining people and people_marks to get combined information about students and their marks



