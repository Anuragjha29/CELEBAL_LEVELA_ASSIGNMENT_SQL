SELECT
    soh.SalesOrderID,
    soh.OrderDate,
    c.CustomerID,
    p.FirstName + ' ' + p.LastName AS CustomerName
FROM
    Sales.Customer AS c
JOIN
    Person.Person AS p
      ON c.PersonID = p.BusinessEntityID
JOIN
    Sales.SalesOrderHeader AS soh
      ON c.CustomerID = soh.CustomerID
WHERE
    NOT EXISTS (
        SELECT 1
        FROM Person.PersonPhone AS pp
        JOIN Person.PhoneNumberType AS pnt
          ON pp.PhoneNumberTypeID = pnt.PhoneNumberTypeID
        WHERE
          pp.BusinessEntityID = p.BusinessEntityID
          AND pnt.Name = 'Fax'
    )
ORDER BY
    soh.OrderDate;