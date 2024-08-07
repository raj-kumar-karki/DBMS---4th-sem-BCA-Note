---------------------------------------------------------------------------------------------
-------------------------------------------4th DAY:------------------------------------------
---------------------------------------------------------------------------------------------

---Product Table:
CREATE TABLE Product(
	ProductId int IDENTITY(100, 5) PRIMARY KEY,
	ProductName varchar(255),
	CompanyName varchar(255),
	Manufacture_address varchar(255),
	City varchar(255),
	Price int
	);

---Inserting the values in the table:
	INSERT INTO Product(ProductName, CompanyName, Manufacture_address, City, Price)
	Values ('gloves', 'panja', 'fsagsdg', 'Bhaktapur', 1500);

	INSERT INTO Product(ProductName, CompanyName, Manufacture_address, City, Price)
	Values ('Harddisk', 'seagate', 'sitapaila', 'ktm', 1000);

	INSERT INTO Product(ProductName, CompanyName, Manufacture_address, City, Price)
	Values ('Copy', 'go green', 'Gathaghar', 'Bhaktapur', 150);
	
	INSERT INTO Product(ProductName, CompanyName, Manufacture_address, City, Price)
	Values ('Book', 'kev', 'bagbazar', 'ktm', 450);

	INSERT INTO Product(ProductName, CompanyName, Manufacture_address, City, Price)
	Values ('Laptop', 'dell', 'waunk', 'China', 80000);
	
	INSERT INTO Product(ProductName, CompanyName, Manufacture_address, City, Price)
	Values ('keyboard', 'microsmart', 'tokkfajk', 'tokiyo', 500);

	INSERT INTO Product(ProductName, CompanyName, Manufacture_address, City, Price)
	Values ('Milkbars', 'chocolate', 'sgsga', 'Mumbai', 200);

	INSERT INTO Product(ProductName, CompanyName, Manufacture_address, City, Price)
	Values ('coffee', 'brew', 'pashupatinagar', 'Illam', 700);


---Displaying Tabel:
	SELECT * FROM Product;

---Deleting the Table:	
	DROP TABLE Product;

---Displaying the table:
	SELECT * FROM Product;


	
---15.) GO  STORED PROCEDURE SQL:
---Stored Procedure:	
	GO
	CREATE PROCEDURE SelectAllProduct
	AS
	SELECT*FROM Product
	GO


---Execute the stored procedure:
	EXEC SelectAllProducts;

---Deleting the all product only:
	DROP  PROCEDURE SelectAllProduct;

---Stored Procedure:	
	GO
	CREATE PROCEDURE SelectAllProduct
	AS
	SELECT*FROM Product
	GO


---Execute the stored procedure:
	EXEC SelectAllProducts;


---Stored Procedure with One Parameter:	
	GO
	CREATE PROCEDURE SelectAllProducts2 @City nvarchar(30)
	AS
	SELECT * FROM Product WHERE City= @city
	GO 


---Execute the stored procedure with one parameter:
	EXEC SelectAllProducts2 @City = 'ktm';


---Stored Procedure with multiple parameter:	
	GO
	CREATE PROCEDURE SelectAllProducts3 @City nvarchar(30), @price nvarchar(10)
	AS
	SELECT * FROM Product WHERE City = @City AND Price = @Price
	GO


---Execute the stored procedure with multiple parameter:
	EXEC SelectAllProducts3 @City='china', @price = '80000';

	---Delelting stored procedure with multi parameter:
	DROP PROCEDURE SelectAllProducts3;

---Stored Procedure:	
	GO
	CREATE PROCEDURE SelectAllProducts3 @City nvarchar(30), @price nvarchar(10)
	AS
	SELECT * FROM Product WHERE City = @City AND Price = @Price
	GO


---Execute the stored procedure:
	EXEC SelectAllProducts3 @City='china', @price = '80000';

---Deleting stored procedure:
	DROP PROCEDURE SelectAllProducts3;
	
---Stored Procedure:	
    GO
	CREATE PROCEDURE SelectAllProducts3 @City nvarchar(30), @price nvarchar(10)
	AS
	SELECT * FROM Product WHERE City = @City AND Price = @Price
	GO


---Execute the stored procedure:
	EXEC SelectAllProducts3 @City='japan', @price = '500';


---ALTER Stored Procedure:	
	GO
	ALTER PROCEDURE SelectAllProducts3
	AS
	SELECT * FROM Product
	SELECT COUNT(1)AS[Total Count] FROM Product
	GO


---Execute the stored procedure:
	EXEC SelectAllProducts3;

---Stored Procedure parameter:
---1.) INPUT parameter:
	GO
	CREATE PROCEDURE SelectAllProcedures4
	(
	@ProductID int,
	@Price money  
	)
	AS
	UPDATE Product
	SET Price  = @Price 
	WHERE ProductID = @productID
	GO


---Execute the stored procedure:
	EXEC SelectAllProcedures4 @ProductID = 4, @Price = 3000


---2.) OUTPUT parameter(OUT):	
	GO
	CREATE PROCEDURE SelectAllProducts5
	@productid int,
	@price int OUTPUT
	AS
	SELECT @productid = ProductID
	FROM Product 
	WHERE price = @Price
	GO

---Deleting the stored procedure:
	DROP PROCEDURE SelectAllProducts5;


---Passing OUTPUT parameter copy:
	DECLARE @price int
	EXECUTE SelectAllProducts5 @ProductID=2, @price = 5000
	PRINT @price


---3.) Optional Parameter(INOUT):	
    GO
	CREATE PROCEDURE SelectAllProducts6
	(
	@productid int,
	@price int = 1500
	)
	AS
	UPDATE Product
	SET Price = @price
	WHERE ProductID = @productid

	
---Deleting stored procedure:
DROP PROCEDURE SelectAllProducts6;


---Execute the stored procedure:
EXEC SelectAllProducts6;
