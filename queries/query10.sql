SELECT 
c.CustomerId,
p.FirstName,
p.LastName,

pr.Name as ProductName,
soh.OrderDate

FROM Sales.Customer as c
JOIN
  Sales.SalesOrderHeader as soh
  ON c.CustomerId =  soh.CustomerID
JOIN
   Sales.SalesOrderDetail as sod
   ON soh.SalesOrderID = sod.SalesOrderID
JOIN
   Production.Product as pr
   ON sod.ProductID = pr.ProductID
JOIN
   Person.Person as p
   ON c.PersonID = p.BusinessEntityID
WHERE 
   pr.Name = 'Tofu'