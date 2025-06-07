SELECT 
  SalesOrderID,
  
  AVG(OrderQty) as [Avg Quantity]

FROM Sales.SalesOrderDetail
GROUP BY
  SalesOrderID

