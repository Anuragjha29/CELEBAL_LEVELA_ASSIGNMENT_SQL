SELECT DISTINCT
    a.PostalCode
FROM
    Sales.SalesOrderHeader AS soh
JOIN
    Sales.SalesOrderDetail AS sod
      ON soh.SalesOrderID = sod.SalesOrderID
JOIN
    Production.Product AS pr
      ON sod.ProductID = pr.ProductID
JOIN
    Person.Address AS a
      ON soh.ShipToAddressID = a.AddressID
WHERE
    pr.Name = 'Tofu'
ORDER BY
    a.PostalCode;
