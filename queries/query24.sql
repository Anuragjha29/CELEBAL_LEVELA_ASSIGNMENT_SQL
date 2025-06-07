SELECT 
    emp.BusinessEntityID AS EmployeeID,
    pe.FirstName AS EmployeeFirstName,
    pe.LastName AS EmployeeLastName,
    mgr.BusinessEntityID AS ManagerID,
    pm.FirstName AS ManagerFirstName,
    pm.LastName AS ManagerLastName
FROM 
    HumanResources.Employee AS emp
JOIN 
    HumanResources.Employee AS mgr
    ON emp.OrganizationNode.GetAncestor(1) = mgr.OrganizationNode
JOIN 
    Person.Person AS pe
    ON emp.BusinessEntityID = pe.BusinessEntityID
JOIN 
    Person.Person AS pm
    ON mgr.BusinessEntityID = pm.BusinessEntityID
ORDER BY 
    ManagerID, EmployeeLastName;
