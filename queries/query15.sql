
SELECT 
    mgr.BusinessEntityID AS ManagerID,
    pmgr.FirstName + ' ' + pmgr.LastName AS ManagerName,
    emp.BusinessEntityID AS EmployeeID,
    pemp.FirstName + ' ' + pemp.LastName AS EmployeeName
FROM 
    HumanResources.Employee AS emp
JOIN 
    HumanResources.Employee AS mgr 
    ON emp.OrganizationNode.GetAncestor(1) = mgr.OrganizationNode
JOIN 
    Person.Person AS pemp 
    ON emp.BusinessEntityID = pemp.BusinessEntityID
JOIN 
    Person.Person AS pmgr 
    ON mgr.BusinessEntityID = pmgr.BusinessEntityID
ORDER BY 
    ManagerID;
