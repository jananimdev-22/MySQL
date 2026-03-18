CREATE DATABASE College;
USE College;
CREATE TABLE Student (StudentID INT,Name VARCHAR(50),Age INT,Department VARCHAR(50));

CREATE TABLE Course (StudentID INT,CourseName VARCHAR(50),Duration VARCHAR(20),Fee INT);

INSERT INTO Student VALUES (1, 'Arun', 20, 'CSE');
INSERT INTO Student VALUES (2, 'Priya', 19, 'IT');
INSERT INTO Student VALUES (3, 'Kiran', 21, 'ECE');
INSERT INTO Student VALUES (4, 'Divya', 20, 'EEE');
INSERT INTO Student VALUES (5, 'Rahul', 22, 'MECH');
INSERT INTO Student VALUES (6, 'Sneha', 19, 'CSE');
INSERT INTO Student VALUES (7, 'Vikram', 21, 'IT');

INSERT INTO Course VALUES (1, 'Maths', '3 Months', 5000);
INSERT INTO Course VALUES (2, 'Physics', '4 Months', 6000);
INSERT INTO Course VALUES (3, 'Chemistry', '3 Months', 5500);
INSERT INTO Course VALUES (4, 'Biology', '2 Months', 4000);
INSERT INTO Course VALUES (8, 'English', '3 Months', 3000);
INSERT INTO Course VALUES (9, 'History', '2 Months', 3500);

SELECT * FROM Student;
SELECT * FROM Course;

SELECT Student.StudentID, Name, Age, Department, CourseName, Duration, Fee FROM Student INNER JOIN Course ON Student.StudentID = Course.StudentID;

SELECT Student.StudentID, Name, CourseName, Duration, Fee FROM Student LEFT JOIN Course ON Student.StudentID = Course.StudentID;

SELECT Student.StudentID, Name, CourseName, Duration, Fee FROM Student RIGHT JOIN Course ON Student.StudentID = Course.StudentID;
