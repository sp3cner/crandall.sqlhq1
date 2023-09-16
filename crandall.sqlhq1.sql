-- 0). First, How Many Rows are in the Products Table?
SELECT COUNT(*) FROM Products;

-- 1). Product Name and Unit/Quantity
SELECT ProductName, UnitQuantity FROM Products;

-- 2). Product ID and Name of Current Products
-- Assuming there's a 'Discontinued' column where 0 means not discontinued
SELECT ProductID, ProductName FROM Products WHERE Discontinued = 0;

-- 3). Product ID and Name of Discontinued Products
SELECT ProductID, ProductName FROM Products WHERE Discontinued = 1;

-- 4). Name & List Price of Most & Least Expensive Products
SELECT ProductName, MAX(ListPrice) as MostExpensivePrice FROM Products
UNION
SELECT ProductName, MIN(ListPrice) as LeastExpensivePrice FROM Products;

-- 5). Product ID, Name & List Price Costing Less Than $20
SELECT ProductID, ProductName, ListPrice FROM Products WHERE ListPrice < 20;

-- 6). Product ID, Name & List Price Costing Between $15 and $20
SELECT ProductID, ProductName, ListPrice FROM Products WHERE ListPrice BETWEEN 15 AND 20;

-- 7). Product Name & List Price Costing Above Average List Price
SELECT ProductName, ListPrice FROM Products WHERE ListPrice > (SELECT AVG(ListPrice) FROM Products);

-- 8). Product Name & List Price of 10 Most Expensive Products
SELECT ProductName, ListPrice FROM Products ORDER BY ListPrice DESC LIMIT 10;

-- 9). Count of Current and Discontinued Products
SELECT Discontinued, COUNT(*) FROM Products GROUP BY Discontinued;

-- 10). Product Name, Units on Order and Units in Stock Where Quantity In-Stock is Less Than the Quantity On-Order.
SELECT ProductName, UnitsOnOrder, UnitsInStock FROM Products WHERE UnitsInStock < UnitsOnOrder;