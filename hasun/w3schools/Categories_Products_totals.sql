--분류(Categories)가 Produce, Beverages인 제품(Products) 총 갯수는
SELECT * 
FROM Products
WHERE CategoryID in (SELECT CategoryID
					FROM Categories
                    WHERE CategoryName IN ('Produce', 'Beverages'));
--17개
