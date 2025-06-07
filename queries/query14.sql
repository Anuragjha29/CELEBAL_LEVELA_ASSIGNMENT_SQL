SELECT 
    SalesOrderID,
    MIN(OrderQty) AS [MIN_Quantity],
	MAX(OrderQty) AS [MAX_Quantity]
FROM 
    Sales.SalesOrderDetail
GROUP BY 
    SalesOrderID;
