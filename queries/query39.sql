SELECT
    pr.ProductID,
    pr.Name        AS ProductName,
    SUM(sod.LineTotal) AS TotalRevenue
FROM
    Sales.SalesOrderDetail AS sod
JOIN
    Production.Product AS pr
      ON sod.ProductID = pr.ProductID
GROUP BY
    pr.ProductID,
    pr.Name
ORDER BY
    TotalRevenue DESC;
