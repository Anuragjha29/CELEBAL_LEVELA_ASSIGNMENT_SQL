SELECT 
    pr.ProductID,
    pr.Name AS ProductName,
    pr.DiscontinuedDate,
    soh.OrderDate
FROM 
    Production.Product AS pr
JOIN 
    Sales.SalesOrderDetail AS sod
    ON pr.ProductID = sod.ProductID
JOIN 
    Sales.SalesOrderHeader AS soh
    ON sod.SalesOrderID = soh.SalesOrderID
WHERE 
    pr.DiscontinuedDate IS NOT NULL
    AND soh.OrderDate BETWEEN '1997-01-01' AND '1998-01-01'
ORDER BY 
    soh.OrderDate;
