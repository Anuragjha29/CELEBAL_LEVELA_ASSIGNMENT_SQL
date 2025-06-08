SELECT
    soh.SalesPersonID   AS EmployeeID,
    p.FirstName + ' ' + p.LastName AS EmployeeName,
    COUNT(*)            AS OrderCount
FROM 
    Sales.SalesOrderHeader AS soh
JOIN 
    Person.Person AS p
      ON soh.SalesPersonID = p.BusinessEntityID
WHERE
    soh.CustomerID BETWEEN 100 AND 200
GROUP BY
    soh.SalesPersonID,
    p.FirstName,
    p.LastName
ORDER BY
    OrderCount DESC;