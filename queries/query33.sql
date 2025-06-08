SELECT
    p.ProductID,
    p.Name        AS ProductName,
    pc.Name       AS CategoryName
FROM
    Production.Product              AS p
JOIN
    Production.ProductSubcategory   AS psc
      ON p.ProductSubcategoryID = psc.ProductSubcategoryID
JOIN
    Production.ProductCategory      AS pc
      ON psc.ProductCategoryID = pc.ProductCategoryID
JOIN
    Purchasing.ProductVendor        AS pv
      ON p.ProductID = pv.ProductID
JOIN
    Purchasing.Vendor               AS v
      ON pv.BusinessEntityID = v.BusinessEntityID
WHERE
    v.Name = 'Specialty Biscuits, Ltd.'
ORDER BY
    p.Name;
