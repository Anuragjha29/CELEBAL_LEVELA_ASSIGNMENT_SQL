SELECT
    pv.BusinessEntityID   AS SupplierID,
    v.Name                AS SupplierName,
    COUNT(DISTINCT pv.ProductID) AS ProductCount
FROM
    Purchasing.ProductVendor AS pv
JOIN
    Purchasing.Vendor        AS v
      ON pv.BusinessEntityID = v.BusinessEntityID
GROUP BY
    pv.BusinessEntityID,
    v.Name
ORDER BY
    ProductCount DESC;