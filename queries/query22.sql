SELECT p.FirstName,
c.CustomerID,
COUNT(soh.salesOrderID) AS NumberOfOrders
FROM Sales.Customer as c
JOIN 
Person.Person as p
ON c.PersonID = p.BusinessEntityID
JOIN
Sales.SalesOrderHeader as soh
ON c.CustomerID = soh.CustomerID
GROUP BY
p.FirstName, c.CustomerID
HAVING
COUNT(soh.SalesOrderID) > 3
ORDER BY NumberOfOrders DESC