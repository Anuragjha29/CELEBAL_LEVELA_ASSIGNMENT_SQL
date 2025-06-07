SELECT 
    c.CustomerID,
    p.FirstName,
    p.LastName,
    a.City,
    pr.Name AS ProductName,
    soh.OrderDate
FROM 
    Sales.Customer AS c

JOIN 
    Person.Person AS p
    ON c.PersonID = p.BusinessEntityID
JOIN 
    Person.BusinessEntityAddress AS bea
    ON p.BusinessEntityID = bea.BusinessEntityID
JOIN 
    Person.Address AS a
    ON bea.AddressID = a.AddressID
JOIN 
    Sales.SalesOrderHeader AS soh
    ON c.CustomerID = soh.CustomerID
JOIN 
    Sales.SalesOrderDetail AS sod
    ON soh.SalesOrderID = sod.SalesOrderID
JOIN 
    Production.Product AS pr
    ON sod.ProductID = pr.ProductID

WHERE 
    a.City = 'London'
    AND pr.Name = 'Chai';  
