SELECT
    p.ProductID,
    p.Name  AS ProductName,
    pi.Quantity    AS UnitsInStock
FROM
    Production.Product             AS p
JOIN
    Production.ProductInventory    AS pi
      ON p.ProductID = pi.ProductID
LEFT JOIN
    Purchasing.PurchaseOrderDetail AS pod
      ON p.ProductID = pod.ProductID
LEFT JOIN
    Purchasing.PurchaseOrderHeader AS poh
      ON pod.PurchaseOrderID = poh.PurchaseOrderID
      AND poh.Status IN (1, 2)     
GROUP BY
    p.ProductID,
    p.Name,
    pi.Quantity
HAVING
    pi.Quantity < 10
    AND COALESCE(SUM(pod.OrderQty), 0) = 0
ORDER BY
    p.Name;