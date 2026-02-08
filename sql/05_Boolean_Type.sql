CREATE TABLE boolean (
    id SERIAL,
    value BOOLEAN,
    description TEXT 
)

INSERT INTO boolean (value, description)
VALUES (TRUE, 'This is true'), (FALSE, 'This is false');

SELECT * FROM boolean;