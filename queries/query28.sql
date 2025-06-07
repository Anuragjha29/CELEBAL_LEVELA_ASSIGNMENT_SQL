SELECT 
    soh.SalesOrderID,
    p.Name AS ProductName
FROM 
    Sales.SalesOrderHeader AS soh
JOIN 
    Sales.SalesOrderDetail AS sod
    ON soh.SalesOrderID = sod.SalesOrderID
JOIN 
    Production.Product AS p
    ON sod.ProductID = p.ProductID
ORDER BY 
    soh.SalesOrderID;
