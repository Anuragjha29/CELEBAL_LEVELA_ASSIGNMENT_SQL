SELECT
   SalesOrderID,
   SUM(OrderQty) AS TotalQuantity
From Sales.SalesOrderDetail
Group BY
  SalesOrderID
HAVING
 SUM(OrderQty) > 300

