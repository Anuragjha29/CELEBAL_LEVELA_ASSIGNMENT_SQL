SELECT
 SalesOrderID,
 OrderDate,
 CustomerID,
 TotalDue
FROM
   Sales.SalesOrderHeader
Where
   OrderDate >= '1996-12-31';