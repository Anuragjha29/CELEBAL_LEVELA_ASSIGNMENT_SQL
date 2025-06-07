SELECT 
    e.BusinessEntityID AS EmployeeID,
    p.FirstName,
    p.LastName
FROM 
    HumanResources.Employee AS e
JOIN 
    Person.Person AS p
    ON e.BusinessEntityID = p.BusinessEntityID
WHERE 
    p.FirstName LIKE 'A%'
ORDER BY 
    p.FirstName, p.LastName;
