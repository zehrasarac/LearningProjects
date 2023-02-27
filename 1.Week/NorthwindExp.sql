-- 1 Create a report that shows the CategoryName and Description from the categories table sorted by CategoryName.
SELECT CategoryName,Description FROM Categories ORDER BY CategoryName;

-- 2. Create a report that shows the ContactName, CompanyName, ContactTitle and Phone number from the customers table sorted by Phone.
SELECT ContactName,ContactTitle,CompanyName,Phone FROM Customers ORDER BY Phone;

-- 3 Create a report that shows the capitalized FirstName and capitalized LastName renamed as FirstName and Lastname respectively and HireDate from the employees table sorted from the newest to the oldest employee.
SELECT FirstName AS Firstname, LastName AS Lastname,HireDate FROM Employees ORDER BY HireDate DESC;

-- 4 Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight from the orders table sorted by Freight in descending order.
SELECT TOP 10 OrderID, OrderDate,ShippedDate,CustomerID,Freight From Orders ORDER BY Freight DESC;

-- 5 Create a report that shows all the CustomerID in lowercase letter and renamed as ID from the customers table.
SELECT LOWER(CustomerID) AS 'ID' From Customers;

-- 6 Create a report that shows the CompanyName, Fax, Phone, Country, HomePage from the suppliers table sorted by the Country in descending order then by CompanyName in ascending order.
SELECT CompanyName,Fax,Phone,Country,HomePage From Suppliers ORDER BY Country DESC, CompanyName ASC;

-- 7 Create a report that shows CompanyName, ContactName of all customers from ‘Buenos Aires' only.
SELECT CompanyName,ContactName From Customers WHERE CompanyName IN('Buenos Aires');

-- 8 Create a report showing ProductName, UnitPrice, QuantityPerUnit of products that are out of stock.
SELECT ProductName,UnitPrice,QuantityPerUnit From Products Where UnitsInStock=0

-- 9 Create a report showing all the ContactName, Address, City of all customers not from Germany, Mexico, Spain.
SELECT ContactName,Address,City From Customers Where Country Not In('Germany','Mexico','Spain')

-- 10 Create a report showing OrderDate, ShippedDate, CustomerID, Freight of all orders placed on 21 May 1996.
SELECT OrderDate,ShippedDate,CustomerID,Freight From Orders Where OrderDate='1996-05-21'

-- 11 Create a report showing FirstName, LastName, Country from the employees not from United States.
SELECT FirstName,LastName,Country From Employees Where Country Not In('USA')

-- 12 Create a report that shows the EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate from all orders shipped later than the required date.
SELECT EmployeeID,OrderID,CustomerID,RequiredDate,ShippedDate From Orders Where ShippedDate>RequiredDate

-- 13 Create a report that shows the City, CompanyName, ContactName of customers from cities starting with A or B.
SELECT City,CompanyName,ContactName,City From Customers Where City LIKE '[AB]%'

-- 14. Create a report showing all the even numbers of OrderID from the orders table.
SELECT OrderID From Orders Where (OrderID % 2) = 0

-- 15. Create a report that shows all the orders where the freight cost more than $500.
SELECT Freight From Orders Where Freight>500

-- 16. Create a report that shows the ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel of all products that are up for reorder.
SELECT ProductName,UnitsInStock,ReorderLevel From Products Where ReorderLevel>0

-- 17 Create a report that shows the CompanyName, ContactName number of all customer that have no fax number.
SELECT CompanyName,ContactName From Customers Where Fax Is Null

-- 18. Create a report that shows the FirstName, LastName of all employees that do not report to anybody.
SELECT FirstName,LastName From Employees Where ReportsTo Is Null

-- 19. Create a report showing all the odd numbers of OrderID from the orders table.
SELECT OrderID From Orders Where (OrderID%2)=1

-- 20. Create a report that shows the CompanyName, ContactName, Fax of all customers that do not have Fax number and sorted by ContactName.
SELECT CompanyName, ContactName, Fax From Customers Where Fax Is Null Order By ContactName

-- 21. Create a report that shows the City, CompanyName, ContactName of customers from cities that has letter L in the name sorted by ContactName.
SELECT City, CompanyName, ContactName From Customers Where City LIKE '%L%'

-- 22. Create a report that shows the FirstName, LastName, BirthDate of employees born in the 1950s.
SELECT FirstName, LastName, BirthDate From Employees Where BirthDate LIKE '%1950%'

-- 23 Create a report that shows the FirstName, LastName, the year of Birthdate as birth year from the employees table.
SELECT FirstName,LastName,YEAR(BirthDate) As [birth year] From Employees

-- 24. Create a report showing OrderID, total number of Order ID as NumberofOrders from the orderdetails table grouped by OrderID and sorted by NumberofOrders in descending order. HINT: you will need to use a Groupby statement.
SELECT OrderID,COUNT(OrderID) As NumberofOrders From [Order Details] GROUP BY OrderID ORDER BY NumberofOrders DESC

-- 25. Create a report that shows the SupplierID, ProductName, CompanyName from all product Supplied by Exotic Liquids, Specialty Biscuits, Ltd., Escargots Nouveaux sorted by the supplier ID
SELECT Products.SupplierID, Products.ProductName, Suppliers.CompanyName From Products INNER JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID WHERE Suppliers.CompanyName IN('Exotic Liquids','Specialty Biscuits','Ltd.','Escargots Nouveaux') ORDER BY SupplierID

-- 26. Create a report that shows the ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate, ShipAddress of all orders with ShipPostalCode beginning with "98124".
SELECT ShipPostalCode,OrderID,OrderDate,RequiredDate,ShippedDate,ShipAddress From Orders WHERE ShipPostalCode LIKE '98124%'

-- 27. Create a report that shows the ContactName, ContactTitle, CompanyName of customers that the has no "Sales" in their ContactTitle.
SELECT ContactName,ContactTitle,CompanyName From Customers WHERE ContactTitle NOT LIKE '%Sales%'

-- 28. Create a report that shows the LastName, FirstName, City of employees in cities other "Seattle";
SELECT LastName, FirstName, City From Employees WHERE City='Seattle'

-- 29. Create a report that shows the CompanyName, ContactTitle, City, Country of all customers in any city in Mexico or other cities in Spain other than Madrid.
SELECT CompanyName, ContactTitle, City, Country From Customers WHERE Country IN('Mexico','Spain') AND City!='Madrid'

-- 30
SELECT FirstName+' ' +LastName+'can be reached at x'+Extension AS Contactinfo From Employees ORDER BY EmployeeID 