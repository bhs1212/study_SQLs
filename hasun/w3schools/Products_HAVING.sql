-- 카테고리에 10 이상인 제품이 있는 카테고리
SELECT COUNT(ProductName), CategoryID
FROM Products
GROUP BY CategoryID
HAVING COUNT(ProductName) >= 10;
-- 5개