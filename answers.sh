SELECT Name FROM students;
SELECT * FROM students
    WHERE age > 30;
SELECT Name FROM students
    WHERE age =30 AND gender='F';
SELECT points FROM students 
    WHERE name='Alex';
INSERT INTO students VALUES(7, 'Grace', 21, 'F', 500);
UPDATE students SET points=400 
    WHERE name='Basma';
UPDATE students SET points=100 
    WHERE name='Alex';