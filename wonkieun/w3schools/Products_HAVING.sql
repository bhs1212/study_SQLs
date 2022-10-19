SELECT COUNT(CategoryID), CategoryID
FROM Products
GROUP BY CategoryID
HAVING COUNT(CategoryID) >10;