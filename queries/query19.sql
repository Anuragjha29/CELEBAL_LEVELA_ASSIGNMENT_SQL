SELECT soh.SalesOrderID,
       soh.OrderDate,
       SUM(sod.OrderQty) AS TotalOrderQty
FROM Sales.SalesOrderDetail AS sod
JOIN Sales.SalesOrderHeader AS soh
  ON sod.SalesOrderID = soh.SalesOrderID
GROUP BY soh.SalesOrderID, soh.OrderDate
HAVING SUM(sod.OrderQty) > 200;