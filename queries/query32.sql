SELECT DISTINCT
    pr.ProductID,
    pr.Name AS ProductName
FROM
    Sales.SalesOrderHeader AS soh
JOIN
    Person.Address AS a
      ON soh.ShipToAddressID = a.AddressID
JOIN
    Person.StateProvince AS sp
      ON a.StateProvinceID = sp.StateProvinceID
JOIN
    Person.CountryRegion AS cr
      ON sp.CountryRegionCode = cr.CountryRegionCode
JOIN
    Sales.SalesOrderDetail AS sod
      ON soh.SalesOrderID = sod.SalesOrderID
JOIN
    Production.Product AS pr
      ON sod.ProductID = pr.ProductID
WHERE
    cr.Name = 'France'
ORDER BY
    pr.Name;
