SELECT p.FirstName,
p.LastName,
c.CountryRegionCode

FROM Person.person as p

JOIN 
    Person.BusinessEntityAddress AS bea
    ON p.BusinessEntityID = bea.BusinessEntityID
JOIN 
    Person.Address AS a
    ON bea.AddressID = a.AddressID
	JOIN
	Person.StateProvince as sp
	ON a.StateProvinceID = sp.StateProvinceID
JoIN
 Person.CountryRegion as c
 ON sp.CountryRegionCode = c.CountryRegionCode
 WHERE
       c.CountryRegionCode IN ('US' , 'UK')