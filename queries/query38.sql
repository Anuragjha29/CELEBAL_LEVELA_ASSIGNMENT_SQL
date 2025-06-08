SELECT TOP 1
    SalesOrderID,
    OrderDate,
    TotalDue
FROM 
    Sales.SalesOrderHeader
ORDER BY 
    TotalDue DESC;
