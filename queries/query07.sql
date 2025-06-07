SELECT DISTINCT c.CustomerID, p.FirstName, p.LastName
FROM Sales.Customer c
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
WHERE c.CustomerID IN (
    SELECT DISTINCT CustomerID FROM Sales.SalesOrderHeader
);