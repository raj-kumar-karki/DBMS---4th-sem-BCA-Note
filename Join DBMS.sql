---------------------------------------------------------------------------------------------
-------------------------------------------3rd DAY:------------------------------------------
---------------------------------------------------------------------------------------------
DROP TABLE Students;

DROP TABLE Course;

---14.) JOIN SQL:

--- Students Table:
CREATE TABLE Students(
StudentID int IDENTITY(1,1) PRIMARY KEY,
StudentName varchar(255) NOT NULL,
Address varchar(255),
Phone int,
Gmail varchar(225)
);

---Iserting values:
INSERT INTO Students (StudentName, Address, Phone, Gmail)
VALUES ('Rupa', 'ktm', '984762224', 'haua@gmail.com');

INSERT INTO Students (StudentName, Address, Phone, Gmail)
VALUES ('Raju', 'lalitpur', '347984774',' jkakljfa@gmail.com');

INSERT INTO Students (StudentName, Address, Phone, Gmail)
VALUES ('Rajkumar', 'hattiban', '654656264' , 'hbwbiba@gmail.com');

INSERT INTO Students (StudentName, Address, Phone, Gmail)
VALUES ('Ramesh', 'patan', '89987879', 'jgigrvvjngfa@gmail.com');

INSERT INTO Students (StudentName, Address, Phone, Gmail)
VALUES ('Ramu', 'Chapagau', '798984343', 'yjhsakfahjf@gmail.com');

INSERT INTO Students (StudentName, Address, Phone, Gmail)
VALUES ('Hritik', 'lele', '892844424', 'hkjhfhuwre@gmail.com');

---Displaying:
SELECT * FROM Students;
DROP TABLE Students;
---Course Table:
CREATE TABLE Course(
CourseID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
CourseName varchar(255) NOT NULL,
StudentID int NOT NULL,
);

---Iserting values:
INSERT INTO Course (CourseName, StudentID)
VALUES ('Science', 10);

INSERT INTO Course (CourseName, StudentID)
VALUES ('Social', 15);

INSERT INTO Course (CourseName, StudentID)
VALUES ('english' , 20);

INSERT INTO Course (CourseName, StudentID)
VALUES ( 'computer', 25);

INSERT INTO Course (CourseName, StudentID)
VALUES ('math' , 30);

INSERT INTO Course (CourseName, StudentID)
VALUES ( 'nepali', 35);

---Displaying:
SELECT * FROM Course;
DROP TABLE Course;
---4 Types of JOIN:

---1.) LEFT JOIN:
	SELECT  Students.StudentName, Course.CourseID
	FROM Students
	LEFT JOIN Course On Students.StudentID = Course.StudentID
	ORDER BY Students.StudentName;

---2.) RIGHT JOIN:
	SELECT Course.CourseID, Students.StudentName, Students.Gmail
	From Course
	RIGHT JOIN Students ON Course.StudentID=Students.Gmail
	ORDER BY Course.CourseID;

---3.) INNER JOIN:
	SELECT Course.CourseID, Students.StudentName
	FROM Course
	INNER JOIN Students ON Students.StudentID = Students.StudentID

---3.) FULL OUTER JOIN:
	SELECT Students.StudentName, Course.CourseID
	FROM Students
	FULL OUTER JOIN Course ON Students.StudentID = Course.StudentID
	ORDER BY  Students.StudentName;



DROP TABLE Employ;

---14.)VIEW SQL:
CREATE TABLE Employ(
EmployeeID int NOT NULL IDENTITY(200,10)PRIMARY KEY, --(200,10)=suru 200 bata ani 10 ko gaplay hunx
EmployeeName varchar(255) NOT NULL,
ContactNo varchar(255),
Address varchar(255),
City varchar(255),
Country varchar(255),
Age int,
DateOfBirth varchar(255),
);

---Inserting values:
INSERT INTO Employ (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('Ram', 987654321, 'Talchhikhel', 'Ktm', 'Nepal',19,'1996-07-01');

INSERT INTO Employ (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('Logan', 9873957373, 'Huston', 'WashingtonDC', 'USA',20,'1999-01-24');

INSERT INTO Employ (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('sandeep', 8459553575, 'Haude', 'Delhi', 'India',33,'1950-10-30');

INSERT INTO Employ (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('Sita', 8575849444, 'Jaulakhel', 'Latipur', 'Nepal',32,'1896-05-12');

INSERT INTO Employ (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('Hank', 3558489378, 'Hewei', 'Hongkong', 'China',45,'1972-12-06');

INSERT INTO Employ (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('Mahomat', 4749494948, 'Kasi', 'Baudi', 'Pakistan',25,'1866-03-07');


---Displaying:
SELECT *FROM Employ;






---1.) VIEW :
CREATE VIEW [Nepal Employ] AS
SELECT EmployeeName, City, ContactNo,Country
FROM Employ
WHERE Country = 'Nepal';

---Displaying:
SELECT * FROM [Nepal Employ];

---VIEW with Average:
CREATE VIEW [Employ Above Average Age] AS
SELECT EmployeeName, Age
From Employ
WHERE Age>(SELECT AVG(Age) FROM Employee);

---Displaying:
SELECT * FROM [Employ Above Average Age];


---2.) UPDATING VIEW:
CREATE OR ALTER VIEW [Nepal Employ] AS
SELECT EmployeeName, City, Address
FROM Employ
WHERE Country = 'Nepal';

---Displaying:
SELECT * FROM [Nepal Employ];


---3.) DROP VIEW:
DROP VIEW [Nepal Employ];

---Displaying:
SELECT * FROM [Nepal Employ];

