SELECT ProductID, ProductName, Price,
    (SELECT AVG(Price) FROM Product WHERE ProductName LIKE '%Pizza%') AS AveragePizzaPrice,
    -- AveragePizzaPrice is not recognized below
    (Price - (SELECT AVG(Price) FROM Product WHERE ProductName LIKE '%Pizza%')) AS PriceDifference
FROM Product
WHERE ProductName LIKE '%Pizza%'
ORDER BY ProductName
