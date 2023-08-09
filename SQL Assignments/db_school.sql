--1. Using SSMS, create a “School” database.
CREATE DATABASE db_school
USE db_school

--CREATING TABLES
--2. Create a “Classes” table, with the following columns:
CREATE TABLE classes (
	class_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	class_name VARCHAR(50) NOT NULL
	);
--3. Create a “Students” table, with the following columns:
CREATE TABLE students (
	student_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	student_name VARCHAR(50) NOT NULL,
	class_id INT,
	instructor_id INT
	);
--4. Create an “Instructors” table, with the following columns:
CREATE TABLE instructor (
	instructor_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	instructor_name VARCHAR(50) NOT NULL
	);

--ADDING FKs
--5. Within the Students table, add the following foreign keys:
ALTER TABLE students
ADD FOREIGN KEY (class_id) REFERENCES classes(class_id);

ALTER TABLE students
ADD FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id);

--ADDING DATA
--6. Populate the Classes table with two classes:
INSERT INTO classes 
	VALUES
	('Software Developer Boot Camp'),
	('C# Boot Camp')
	;
SELECT * FROM classes;
--7. Populate the Students table with six student names of your choosing.
INSERT INTO students(student_name)
	VALUES
	('Scooby Doo'),
	('Shaggy Rogers'),
	('Fred Jones'),
	('Velma Dinkley'),
	('Daphne Blake'),
	('Mystery Machine')
	;
SELECT * FROM students;
--8. Populate the Instructors table with two Instructor names of your choosing.
INSERT INTO instructor(instructor_name)
	VALUES
	('Professor Farnsworth'),
	('Ms. Frizzle')
	;
SELECT * FROM instructor;

--ASSIGNING CLASS ID 
--9. Within the Student table, assign values to the Class_ID foreign key 
UPDATE students
SET class_id = 1
WHERE student_name ='Shaggy Rogers';
UPDATE students
SET class_id = 1
WHERE student_name ='Scooby Doo';
UPDATE students
SET class_id = 1
WHERE student_name ='Mystery Machine';

UPDATE students
SET class_id = 2
WHERE student_name ='Velma Dinkley';
UPDATE students
SET class_id = 2
WHERE student_name ='Daphne Blake';
UPDATE students
SET class_id = 2
WHERE student_name ='Fred Jones';

SELECT * FROM students;

--ADD INSTRUCTOR ID
--10. Within the Students table, assign values to the Instructor_ID foreign key
UPDATE students
SET instructor_id = 1
WHERE student_name ='Shaggy Rogers';
UPDATE students
SET instructor_id = 1
WHERE student_name ='Scooby Doo';
UPDATE students
SET instructor_id = 1
WHERE student_name ='Mystery Machine';

UPDATE students
SET instructor_id = 2
WHERE student_name ='Velma Dinkley';
UPDATE students
SET instructor_id = 2
WHERE student_name ='Daphne Blake';
UPDATE students
SET instructor_id = 2
WHERE student_name ='Fred Jones';

SELECT * FROM students;

--11. Run a query to display all Instructor names.
SELECT instructor_name FROM instructor;

--12. Run a query to display all student names in alphabetical order.
SELECT * FROM students ORDER BY student_name ASC;

--13. Run a query that displays all classes, with the students and Instructors assigned to each
SELECT * FROM classes;
SELECT * FROM students;
SELECT * FROM instructor;

SELECT * FROM classes
	INNER JOIN students ON classes.class_id = students.student_id
	INNER JOIN instructor ON students.student_id = instructor.instructor_id;
