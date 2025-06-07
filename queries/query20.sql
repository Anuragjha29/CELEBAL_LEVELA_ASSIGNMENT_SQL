SELECT cr.Name AS Country,
       SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader AS soh
JOIN Person.Address AS a 
  ON soh.ShipToAddressID = a.AddressID
JOIN Person.StateProvince AS sp
  ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion AS cr
  ON sp.CountryRegionCode = cr.CountryRegionCode
GROUP BY cr.Name;