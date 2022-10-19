SELECT CategoryID, COUNT(ProductName), AVG(Price), MAX(Price), MIN(Price)
FROM Products
WHERE CategoryID in (SELECT CategoryID
					FROM Products)
GROUP BY CategoryID