SELECT 
p.FirstName ,
c.CustomerID,
COUNT(soh.SalesOrderID) AS NumberOfOrders
FROM Sales.Customer as c
JOIN
Person.person as p
ON c.PersonID = p.BusinessEntityID
LEFT JOIN
Sales.SalesOrderHeader as soh
ON c.CustomerID = soh.CustomerID
GROUP BY p.FirstName,c.CustomerID
ORDER BY NumberOfOrders DESC