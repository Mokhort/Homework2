use AdventureWorks
Select * from Sales.SalesPerson
SELECT * from Person.Person

SELECT TOP (1)  Sales.SalesPerson.BusinessEntityID, Sales.SalesPerson.SalesYTD+Sales.SalesPerson.SalesLastYear as value from Sales.SalesPerson
inner join Person.Person
on  Person.Person.BusinessEntityID=Sales.SalesPerson.BusinessEntityID ORDER BY value DESC

SELECT TOP(1) CustomerID, FirstName, MiddleName, LastName, SUM(OrderQty) as value from Sales.SalesOrderDetail
Inner Join Sales.SalesOrderHeader
on Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID
Left Join Person.Person
on Sales.SalesOrderHeader.CustomerID = Person.Person.BusinessEntityID
GROUP BY CustomerID, FirstName, MiddleName, LastName ORDER BY value DESC

SELECT TOP(1) SalesPersonID, FirstName, MiddleName, LastName, SUM(OrderQty) as value from Sales.SalesOrderDetail
Inner Join Sales.SalesOrderHeader
on Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID
Left Join Person.Person
on Sales.SalesOrderHeader. SalesPersonID = Person.Person.BusinessEntityID
GROUP BY SalesPersonID,  FirstName, MiddleName, LastName ORDER BY value DESC

SELECT TOP(1) CustomerID,FirstName, MiddleName, LastName, SUM(SubTotal+TaxAmt+Freight) as money from Sales.SalesOrderHeader
Left Join Person.Person
on Sales.SalesOrderHeader.CustomerID = Person.Person.BusinessEntityID
GROUP BY CustomerID,FirstName, MiddleName, LastName ORDER BY money DESC

SELECT Sales.SalesPerson.BusinessEntityID, Sales.SalesPerson.SalesYTD+Sales.SalesPerson.SalesLastYear as value from Sales.SalesPerson
inner join Person.Person
on  Person.Person.BusinessEntityID=Sales.SalesPerson.BusinessEntityID ORDER BY value DESC

SELECT CustomerID, FirstName, MiddleName, LastName, SUM(OrderQty) as value from Sales.SalesOrderDetail
Inner Join Sales.SalesOrderHeader
on Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID
Left Join Person.Person
on Sales.SalesOrderHeader.CustomerID = Person.Person.BusinessEntityID
GROUP BY CustomerID, FirstName, MiddleName, LastName ORDER BY value DESC

SELECT SalesPersonID, FirstName, MiddleName, LastName, SUM(OrderQty) as value from Sales.SalesOrderDetail
Inner Join Sales.SalesOrderHeader
on Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID
Left Join Person.Person
on Sales.SalesOrderHeader. SalesPersonID = Person.Person.BusinessEntityID
GROUP BY SalesPersonID,  FirstName, MiddleName, LastName ORDER BY value DESC

SELECT CustomerID,FirstName, MiddleName, LastName, SUM(SubTotal+TaxAmt+Freight) as money from Sales.SalesOrderHeader
Left Join Person.Person
on Sales.SalesOrderHeader.CustomerID = Person.Person.BusinessEntityID
GROUP BY CustomerID,FirstName, MiddleName, LastName ORDER BY money DESC
