SELECT 
    mgr.BusinessEntityID AS ManagerID,
    p.FirstName AS ManagerFirstName,
    p.LastName AS ManagerLastName,
    COUNT(emp.BusinessEntityID) AS ReportCount
FROM 
    HumanResources.Employee AS emp
JOIN 
    HumanResources.Employee AS mgr
    ON emp.OrganizationNode.GetAncestor(1) = mgr.OrganizationNode
JOIN 
    Person.Person AS p
    ON mgr.BusinessEntityID = p.BusinessEntityID
GROUP BY 
    mgr.BusinessEntityID, p.FirstName, p.LastName
HAVING 
    COUNT(emp.BusinessEntityID)  > 4
ORDER BY 
    ManagerLastName;
