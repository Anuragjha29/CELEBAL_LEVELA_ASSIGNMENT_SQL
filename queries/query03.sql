SELECT 
  p.FirstName,
  p.LastName,
  a.AddressLine1,
  a.City
  FROM 
    Person.Person AS p
JOIN 
   Person.BusinessEntityAddress AS bea
    ON p.BusinessEntityID = bea.BusinessEntityID
JOIN 
    Person.Address AS a
  ON bea.AddressID = a.AddressID
  WHERE 
    a.city IN ('Berlin','London')
