SELECT soh.SalesOrderID,
soh.OrderDate,
cr.Name as Country,
a.City,
 a.AddressLine1

FROM Sales.SalesOrderHeader as soh
JOIN
Person.Address as a 
ON soh.ShipToAddressID = a.AddressID
JOIN
Person.StateProvince as sp
ON a.StateProvinceID = sp.StateProvinceID
JOIN
Person.CountryRegion as cr
ON sp.CountryRegionCode = cr.CountryRegionCode
WHERE 
cr.Name = 'Canada'