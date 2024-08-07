/*Q.1.Make 3 tables in the database using sql query where tables must be your 
 info.table with many data types, employee tble and staff table unit 4. */

 /* A.1. Staff table yo xai */
CREATE TABLE tbl_staff(
StaffID int Primary key,
FirstName varchar(255) ,
Addresspl varchar(255),
Contact int,
Department varchar(255)
);

/* tabling garda kei mistake vayo vane feri drop garera delete garera feri table create garnu parx */
DROP TABLE tbl_staff;

/* yeslay xai staff table show garx*/
SELECT * FROM tbl_staff;


 /*A.2. Employee table yo xai */
CREATE TABLE tbl_employee(
EmpID int,
Name varchar(255),
Address varchar(255),
CodeBranch int,
Branch varchar(225)
);

/* yeslay xai employee table show garx*/
SELECT * FROM tbl_employee;

/* tabling garda kei mistake vayo vane feri drop garera delete garera feri table create garnu parx */
DROP TABLE tbl_employee

/* yeslay xai employee table show garx after deleting*/
SELECT * FROM tbl_employee;

/*A.3. Mero Table*/
CREATE TABLE Prince(
Name varchar(255),
Address varchar(255),
Phone int,
Gmail varchar(225)
);

/*Display garx prince table lai*/
SELECT * FROM prince;

/* tabling garda kei mistake vayo vane feri drop garera delete garera feri table create garnu parx */
DROP TABLE prince;

/* yeslay xai prince table show garx after deleting*/
SELECT * FROM prince;




/*Q.2.Make 3 tables in the database using sql query where tables must be your 
 info.table with many data types, employee tble and staff table unit 4.
--Alter teacher, datatype as integers.*/

	/*A.1.Creating Teacher Table */
	CREATE TABLE Teacher(
	ID int NOT NULL,
	LastName varchar(255) NOT NULL,
	FirstName varchar(255) NOT NULL,
	Contact int,
	Address varchar(255),
	Age int
	);

	/*A.1.1.Displaying */
	SELECT *FROM Teacher;

	/*A.1.2.Altering in the Teacher table by adding the Gmail column */
	ALTER TABLE Teacher
    ADD Gmail varchar(255);

	/* A.1.3.Displaying */
	SELECT *FROM Teacher;

	/*A.1.4.Altering in the Teacher table by deleting the Gamil column only */
	ALTER TABLE Teacher
	DROP COLUMN Gmail;

	/*A.1.5.Displaying  */
	-- 
	SELECT *FROM Teacher;

	/*A.1.6.Altering in theTeacher table by adding gmail column again which is delete above  */
	ALTER TABLE Teacher
    ADD Gmail varchar(255);

	/*A.1.7.Display  */
	SELECT *FROM Teacher;

	/*A.1.8.Altering in the Teacher table by altering in the gmail column (varchar to integer)  */
	ALTER TABLE Teacher
    ALTER COLUMN Gmail int;

	/*A.1.9.Displaying  */
	SELECT *FROM Teacher;

	 /*A.2. Employee table */
	 CREATE TABLE tbl_employee(
	 EmpID int,
	 Name varchar(255),
	 Address varchar(255),
	 CodeBranch int,
	 Branch varchar(225)
	 );
	
	/*A.2.1.Displaying */
	SELECT *FROM tbl_employee;

	/*A.1.2.Altering in the Teacher table by adding the Phone column */
	ALTER TABLE tbl_employee
    ADD Phone int;

	/* A.2.3.Displaying */
	SELECT *FROM tbl_employee;

	/*A.2.4.Altering in the Teacher table by deleting the Phone column only */
	ALTER TABLE tbl_employee
	DROP COLUMN Phone;

	/*A.2.5.Displaying  */
	SELECT *FROM tbl_employee;

	/*A.2.6.Altering in theTeacher table by adding gmail column again which is delete above  */
	ALTER TABLE tbl_employee
    ADD Phone int;

	/*A.2.7.Display  */
	SELECT *FROM tbl_employee;

	/*A.2.8.Altering in the Teacher table by altering in the Phone column (varchar to integer)  */
	ALTER TABLE tbl_employee
    ALTER COLUMN Gmail varchar(225);

	/*A.2.9.Displaying  */
	SELECT *FROM tbl_employee;


	/*A.3. Mero Table*/
	CREATE TABLE Prince(
	ID int,
	Name varchar(255),
	Address varchar(255),
	Phone int,
	Gmail varchar(225)
	);

    /*A.3.1.Displaying */
	SELECT *FROM Prince;

	/*A.3.2.Altering in the Teacher table by adding the Course column */
	ALTER TABLE Prince
    ADD Course varchar(255);

	/* A.3.3.Displaying */
	SELECT *FROM Prince;

	/*A.3.4.Altering in the Teacher table by deleting the Course column only */
	ALTER TABLE Prince
	DROP COLUMN Course;

	/*A.3.5.Displaying  */
	SELECT *FROM Prince;

	/*A.1.6.Altering in theTeacher table by adding Course column again which is delete above  */
	ALTER TABLE Prince
    ADD Course varchar(255);

	/*A.3.7.Display  */
	SELECT *FROM Prince;

	/*A.3.8.Altering in the Teacher table by altering in the Course column (varchar to integer)  */
	ALTER TABLE Prince
    ALTER COLUMN Course int;

	/*A.3.9.Displaying  */
	SELECT *FROM Prince;



	/*Q.3.Make 3 tables in the database using sql query where tables must be your 
 info.table with many data types, employee tble and staff table unit 4. 
	--Add constraints to the columns.
	--NOT NULL, UNIQUE, PK, FK*/

	/*A.1.UNQUIE*/
	CREATE TABLE Rajkumar(
	ID int NOT NULL UNIQUE,
	LastName varchar(255)NOT NULL,
	FirstName varchar(255),
	Age int
	CONSTRAINT UC_RAJKUMAR UNIQUE(ID,LastName)
	);
	
	 /*Displaying*/
	SELECT * FROM Rajkumar;

	ALTER TABLE Rajkumar
    DROP CONSTRAINT UC_RAJKUMAR;

	/*deleting*/
	 DROP TABLE Rajkumar;


	/*A.2.PRIMARY KEY */

    CREATE TABLE Rajkumars(
	ID int NOT NULL PRIMARY KEY,
	LastName varchar(255)NOT NULL,
	FirstName varchar(255),
	Age int
	);

	 /*Displaying*/
	SELECT * FROM Rajkumars;

	/* During Altering table*/
		ALTER TABLE Rajkumars
        ADD PRIMARY KEY(ID);

		/*Displaying*/
	SELECT * FROM Rajkumars;

	/* To allow naming of a PRIMARY KEY constraint, and for defining a PRIMARY KEY constraint on multiple columns*/
    CREATE TABLE Rajkumars(
	ID int NOT NULL,
	LastName varchar(255)NOT NULL,
	FirstName varchar(255,
	Age int,
	CONSTRIANT PK_RAJKUMARS PRIMARY KEY(ID,LastName)
	);

	/*Displaying*/
	SELECT * FROM Rajkumars;

	ALTER TABLE Rajkumars
	ADD CONSTRAINT PK_RAJKUMARS PRIMARY KEY(ID,LastName);

	/*Displaying*/
	SELECT * FROM Rajkumars;

	ALTER TABLE Rajkumars
	DROP CONSTRAINT PK_RAJKUMARS;

	/*Displaying*/
	SELECT * FROM Rajkumars;

	/*A.3.FOREIGN KEY*/
	CREATE TABLE Purchase(
	ItemID int NOT NULL PRIMARY KEY,
	ItemNumber int NOT NULL,
    PersonID int
	);


	/*Displaying*/
	SELECT * FROM Purchase;

	DROP TABLE Purchase;

	ALTER TABLE Rajkumars
	ADD FOREIGN KEY (PersonsID) REFERENCES Rajkumars(ID);


	/*FOREIGN KEY constraint*/

	CREATE TABLE Purchase(
	ItemID int NOT NULL,
	ItemNumber int NOT NULL,
    PersonID int,
	PRIMARY KEY(ItemID),
	CONSTRAINT FK_PersonPurchase FOREIGN KEY(PersonID)
	REFERENCES Rajkumars(ID)
	);

	/*Displaying*/
	SELECT * FROM Purchase;

	ALTER TABLE Purchase
	ADD CONSTRAINT FK_PersonPurchase
	FOREIGN KEY(PersonID) REFERENCES Rajkumars(ID);

	/*Displaying*/
	SELECT * FROM Purchase;

	ALTER TABLE Purchase
	DROP CONSTRAINT FK_PersonPurchase;

	/*Displaying*/
	SELECT * FROM Purchase;

   /*Q.4.Make 3 tables in the database using sql query where tables must be your info.table 
	with many data types, employee tble and staff table unit 4. 
	--CHECK,DEFAULT
	Use both create and alter for all 3 tables*/

	DROP TABLE Prince;

	CREATE TABLE Prince(
	ID int,
	Name varchar(255),
	Address varchar(255),
	Phone int,
	Gmail varchar(225)
	Age int CHECK (Age>=18)
	);

	ALTER TABLE Prince
	ADD CHECK (Age>=18);

	/*--To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns*/

	ALTER TABLE Prince 
	ADD CONSTRAINT CHK_PrinceAge CHECK (Age>=18); ---changing

	ALTER TABLE Prince
	DROP CONSTRAINT CHECK CHK_PrinceAge; ---deleting

	/* --Default- set a default value for a column if no value is specified */

	DROP TABLE Prince; ---delelting 

	CREATE TABLE Prince(
	ID int NOT NULL,
	Name varchar(255)NOT NULL,
	Address varchar(255) DEFAULT 'Nepal',
	Phone int,
	Gmail varchar(225)
	Age int 
	);

	ALTER TABLE Prince
	ADD CONSTRAINT df_City
	DEFAULT 'Kathmandu' FOR Address; --changing 

	ALTER TABLE Prince
	DROP CONSTRAINT df_Address; ---deleleting 






	--shkdlfs