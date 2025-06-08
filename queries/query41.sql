SELECT TOP 10
    c.CustomerID,
    COALESCE(p.FirstName + ' ' + p.LastName, s.Name) AS CustomerName,
    SUM(soh.TotalDue) AS TotalSpent
FROM
    Sales.Customer AS c
JOIN
    Sales.SalesOrderHeader AS soh
      ON c.CustomerID = soh.CustomerID
LEFT JOIN
    Person.Person AS p
      ON c.PersonID = p.BusinessEntityID
LEFT JOIN
    Sales.Store AS s
      ON c.StoreID = s.BusinessEntityID
GROUP BY
    c.CustomerID,
    COALESCE(p.FirstName + ' ' + p.LastName, s.Name)
ORDER BY
    TotalSpent DESC;
