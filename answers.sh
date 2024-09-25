##Basic Queries
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

##Create Table
CREATE TABLE graduates(
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL UNIQUE,
	Age INTEGER,
	Gender TEXT,
	Points INT,
	Graduation TEXT);

INSERT INTO graduates(Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points FROM students
WHERE Name='Layal';
UPDATE graduates SET graduation='08/09/2018' 
WHERE Name='Layal';
SELECT * FROM graduates;
DELETE FROM students WHERE Name='Layal';
SELECT * FROM students;

##Joins
SELECT employees.Name, employees.company, companies.Date
FROM employees
INNER JOIN companies ON employees.company=companies.name;
SELECT employees.Name
FROM employees
INNER JOIN Companies ON employees.company=companies.name
WHERE companies.date<2000;
SELECT companies.name
FROM companies 
INNER JOIN employees on companies.name=employees.company
WHERE employees.role='Graphic Designer';

##Count & Filter
SELECT name FROM students
WHERE points=(SELECT max(points) FROM students);
SELECT avg(points) FROM students;
SELECT count(name) FROM students
WHERE name LIKE '%s%';
SELECT name FROM students
WHERE points=500;
SELECT name FROM students
ORDER BY points DESC;