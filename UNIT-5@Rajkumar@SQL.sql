--UNIT-5 SQL @ RAJKUMAR KARKI

---------------------------------------------------------------------------------------------
-------------------------------------------1ST DAY:------------------------------------------
---------------------------------------------------------------------------------------------

DROP TABLE Employees;   --Sabai table nai delete garx 

---1.)Creating Employee table with Autoincrement primary key filed:
CREATE TABLE Employees (
EmployeeID int IDENTITY(200,10)PRIMARY KEY, --(200,10)=suru 200 bata ani 10 ko gaplay hunx
EmployeeName varchar(255),
ContactNo varchar(255),
Address varchar(255),
City varchar(255),
Country varchar(255),
Age int,
DateOfBirth varchar(255),
);


SELECT *FROM Employees;--Purai table lai display garx

--2.) INSERT INTO statements by two ways:

--2.a.)Specify both the column names and the values to be inserted:
--Syntax:
INSERT INTO table_name (column1, column2, column3,....)
VALUES (value1, value2, value3,....);

--Example:
INSERT INTO Employees (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('Ram', 987654321, 'Talchhikhel', 'Ktm', 'Nepal',19,'1996-07-01');

INSERT INTO Employees (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('Logan', 9873957373, 'Huston', 'WashingtonDC', 'USA',20,'1999-01-24');

INSERT INTO Employees (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('sandeep', 8459553575, 'Haude', 'Delhi', 'India',33,'1950-10-30');

INSERT INTO Employees (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('Sita', 8575849444, 'Jaulakhel', 'Latipur', 'Nepal',32,'1896-05-12');

INSERT INTO Employees (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('Hank', 3558489378, 'Hewei', 'Hongkong', 'China',45,'1972-12-06');

INSERT INTO Employees (EmployeeName, ContactNo, Address, City, Country,Age,DateOfBirth)
VALUES ('Mahomat', 4749494948, 'Kasi', 'Baudi', 'Pakistan',25,'1866-03-07');

SELECT *FROM Employees;

--2.b.)If you are adding values for all the columns of the table, you don't need to specify
--Syntax:
INSERT INTO table_name
VALUES (value1, value2, value3,....);

--Example: 
INSERT INTO Employees (EmployeeName, City, Country)
VALUES ('Ram', 'NewDelhi', 'India');

SELECT *FROM Employees;

--3.) SELECT statement:
SELECT column1, column2, ....
FROM table_name;

SELECT EmployeeName, City FROM Employees;

SELECT *FROM Employees;


--4.)SELECT DISTINCT statment: 
--Syntax:
SELECT DISTINCT column1, column2, ....
FROM table_name;

--Example:
SELECT DISTINCT City, Country
FROM Employees;


--5.)SQL WHERE Clause:
--Syntax:
SELECT column1, column2, ....
FROM table_name
WHERE condition;

--Example:
SELECT *FROM Employees
WHERE Country='Nepal';

SELECT *FROM Employees
WHERE EmployeeID=220;


--6.)SQL SELECT: AND, OR & NOT operators:

--6.a.)AND syntax:yeslay xai duetai condition match garesi matra display garx.
SELECT column1, column2, .....
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

--Example:Country & City:
SELECT *FROM Employees
WHERE Country='USA' AND City='WashingtonDC';

--6.b)OR Syntax:yeslay xai anyone match vayesi display garx.
SELECT column1, column2, .....
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

--Example:City:
SELECT *FROM Employees
WHERE City='Hongkong' OR City='Chapagau';

--6.c)NOT Syntax:yeslay xai vaye condition vayek aru sabai display garx.
SELECT column1, column2, .....
FROM table_name
WHERE NOT condition;

--Example:Country & City:
SELECT *FROM Employees
WHERE NOT Country='China';

--7.)Combining: (AND, OR & NOT):

--7.a.)Example:AND & OR combining:
SELECT *FROM Employees
WHERE Country='USA' AND (City='WashingtonDC' OR City='Hongkong');
 
--7.b.)Example:AND & NOT combining:
SELECT *FROM Employees
WHERE NOT Country='China' AND NOT Country='USA';

--8.)ORDER BY keyword: records lai sorts garx ascending dekhi descending ma change garera
--(DESC)keyword
SELECT column1, column2, ....
FROM table_name
ORDER BY column1,column2,....ASC|DESC;

--Example:
SELECT *FROM Employees
ORDER BY Country;

---------------------------------------------------------------------------------------------
-------------------------------------------2ND DAY:------------------------------------------
---------------------------------------------------------------------------------------------


--ORDER BY DESC Example:
SELECT *FROM Employees 
ORDER BY Country DESC;

--ORDER BY Several Columns Example:
SELECT *FROM Employees
ORDER BY Country,EmployeeName;

--9.)Aggregate Functions:
--1.)MIN() Function:
--Syntax:
SELECT MIN(Column_name)
FROM table_name
WHERE codition;

--Example:
SELECT MIN(Age) AS YoungerAge
FROM Employees;

--2.)MAX() Function:
--Syntax:
SELECT MAX(Column_name)
FROM table_name
WHERE codition;

--Example:
SELECT MAX(Age) AS OlderAge
FROM Employees;

--3.)COUNT() Function:
--Syntax:
SELECT COUNT(Column_name)
FROM table_name
WHERE condition;

--Example:
SELECT COUNT(EmployeeID)
FROM Employees;  

--4.)AVG() Function:
--Syntax:
SELECT AVG(Column_name)
FROM table_name
WHERE condition;

--Example:
SELECT AVG(Age)
FROM Employees;  

--5.)SUM() Function:
--Syntax:
SELECT SUM(Column_name)
FROM table_name
WHERE condition;

--Example:
SELECT SUM(Age)
FROM Employees; 

--10.)SQL Operators:

--1.)LIKE Operator:
--Syntax:
SELECT column1, column2,...
FROM table_name
WHERE columnN LIKE pattern;

--a.)'a%' LIKE Operator: suru xai a word bata vako
--Example:
SELECT *FROM Employees
WHERE Address LIKE 'a%';

--b.)'%a' LIKE Operator: end xai a word ma vako 
--Example:
SELECT *FROM Employees
WHERE Address LIKE '%a';

--c.)'%or%' LIKE Operator: or vako word aako 
--Example:
SELECT *FROM Employees
WHERE Address LIKE '%or%';

--d.)'_r%' LIKE Operator: second mai xai r word suru vako
--Example:
SELECT *FROM Employees
WHERE Address LIKE '_r%';

--e.)'_or%' LIKE Operator: second mai xai or word suru vako
--Example:
SELECT *FROM Employees
WHERE Address LIKE '_or%';

--f.)'a_%' LIKE Operator: second last ma xai a word suru vako
--Example:
SELECT *FROM Employees
WHERE Address LIKE 'a_%';

--g.)'a%o' LIKE Operator: suru a word vako ra end xai o word ma vako
--Example:
SELECT *FROM Employees
WHERE Address LIKE 'a%o';

--h.)NOT 'a%' LIKE Operator: suru vako a word bahek aru dekhau x
--Example:
SELECT *FROM Employees
WHERE Address LIKE 'a%';


--2.)IN Operator: 
--Syntax:
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2,....);

--Or:

SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);

--Example:IN Operator:particular  select garne 
SELECT *FROM Employees
WHERE Country IN ('India', 'Pakistan', 'Nepal');

--Example:NOT IN Operator: select gareko bahek aru dekhaux
SELECT *FROM Employees
WHERE Country NOT IN ('India', 'Pakistan', 'Nepal');

--Example:IN & SELECT Operator: sabai dekhaux
SELECT *FROM Employees
WHERE Country IN (SELECT Country FROM Employees); 

--3.)BETWEEN Operator:
--Syntax:
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

--Example:tokeko range dekhau x 
SELECT *FROM Employees
WHERE Age BETWEEN 20 AND 30;

--NOT BETWEEN Example:tokeko range bahek aru dekhaux
SELECT *FROM Employees
WHERE Age NOT BETWEEN 20 AND 30;

--BETWEEN with  NOT IN Example:tokeko range dekhaux tara tokeko epmloyeeID bahek dekhaux
SELECT *FROM Employees
WHERE Age BETWEEN 20 AND 30
AND EmployeeID NOT IN (200,210,220); 

--BETWEEN with IN Example:
SELECT *FROM Employees
WHERE Age BETWEEN 20 AND 30
AND EmployeeID IN (200,210,220);

--BETWEEN Dates Example:
SELECT *FROM Employees
WHERE DateOfBirth BETWEEN #07/01/1996# AND #07/06/1996#; 

--OR,
SELECT *FROM Employees
WHERE DateOfBirth BETWEEN '1996-07-01' AND '1996-07-06'; 


--11.)SQL GROUP BY Statement:
--Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition 
GROUP BY column_name(s)
ORDER BY column_name(s);

--Example:
SELECT COUNT(EmployeeID),Country
FROM Employees
GROUP BY Country;

--Example:descriding sort:
SELECT COUNT(EmployeeID),Country
FROM Employees
GROUP BY Country
ORDER BY COUNT(EmployeeID) DESC;


--12.)SQL UPDATE Statement:
--Syntax:
UPDATE table_name
SET column1 = value1, column2 = value2,....
WHERE condition;

--UPDATE Table:
--Example: cahnge garnu paro vane set use garne 
UPDATE Employees
SET EmployeeName='Shyam'
WHERE EmployeeID=200;

SELECT *FROM Employees;

--UPDATE Multiple Records: sabai set garx jas country ko naam usa x
--Example:
UPDATE Employees
SET EmployeeName='Hami'
WHERE Country='USA';

SELECT *FROM Employees;

--13.)SQL DELETE Statement: table bitra ma delete garna sakx

--a.)Deleted from column:column matra delete garx 
--Syntax:
DELETE FROM table_name WHERE condition;

--Example:
DELETE FROM Employees WHERE EmployeeName='Sita';

SELECT *FROM Employees;

--b.)Deleted whole table:
--Syntax:
DELETE FROM table_name;

--Example:
DELETE FROM Employees;

SELECT *FROM Employees;

--14.)SQL JOIN:

--1.)INNER JOIN: /////bujhena 
--Syntax:
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

--Example:
SELECT Orders.OrderID,Employees.EmployeeName
FROM Orders 
INNER JOIN Employees ON Orders.Employees.EmployeeId;

--2.)LEFT JOIN:
--Syntax:
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

--Example:
SELECT Orders.OrderID,Employees.EmployeeName
FROM Orders 
INNER JOIN Employees ON Orders.Employees.EmployeeId;

--3.)RIGHT JOIN:
--Syntax:

--Example:

--4.)FULL OUTER JOIN:
--Syntax:

--Example:
