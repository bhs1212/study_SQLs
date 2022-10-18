--CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 합계 ?
SELECT SUM(Price)
FROM Products
WHERE CategoryID in (SELECT CategoryID
					FROM Categories
                    WHERE CategoryName in ('Dairy Products', 'Seafood'))
AND Price BETWEEN 10 AND 50;
--390.34

--CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 평균은 ?
SELECT AVG(Price)
FROM Products
WHERE CategoryID in (SELECT CategoryID
					FROM Categories
                    WHERE CategoryName in ('Dairy Products', 'Seafood'))
AND Price BETWEEN 10 AND 50;
-- 24.396250