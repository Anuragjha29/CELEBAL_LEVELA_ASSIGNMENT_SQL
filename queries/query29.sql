SELECT TOP 1 
    CustomerID,
    SUM(TotalDue) AS TotalSpent
FROM 
    Sales.SalesOrderHeader
GROUP BY 
    CustomerID
ORDER BY 
    TotalSpent DESC;
