SELECT 
    c.CustomerID,
    c.AccountNumber,
    s.Name AS CompanyName
FROM 
    Sales.Customer AS c
INNER JOIN 
    Sales.Store AS s
    ON c.StoreID = s.BusinessEntityID
WHERE 
    s.Name LIKE '%n';