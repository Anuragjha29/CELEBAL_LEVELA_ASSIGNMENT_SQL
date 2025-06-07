SELECT TOP 1
soh.SalesOrderId,
soh.OrderDate,
soh.CustomerID,
p.FirstName,
p.LastName

FROM Sales.SalesOrderHeader as soh
JOIN
  Sales.Customer as c
  ON soh.CustomerID = c.CustomerID
JOIN 
   Person.Person as p
   ON c.PersonID = p.BusinessEntityID
ORDER BY
 soh.OrderDate ASC;
