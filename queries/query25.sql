SELECT 
    soh.SalesPersonID AS EmployeeID,
    SUM(soh.TotalDue) AS TotalSales
FROM 
    Sales.SalesOrderHeader AS soh
WHERE 
    soh.SalesPersonID IS NOT NULL
GROUP BY 
    soh.SalesPersonID
ORDER BY 
    TotalSales DESC;
