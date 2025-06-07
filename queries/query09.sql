SELECT p.FirstName,
 p.LastName,
 c.CustomerId

FROM Sales.Customer as c
JOIN
    Person.Person as p 
	ON c.PersonID = p.BusinessEntityID
LEFT JOIN
Sales.SalesOrderHeader as soh
ON c.PersonID= soh.CustomerID
WHERE 
   soh.SalesOrderID IS NULL;

