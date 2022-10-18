SELECT SUM(Price), AVG(Price)
FROM Products
WHERE CategoryID in (SELECT CategoryID
					FROM Categories
					WHERE CategoryName in ('Dairy Products' ,'Seafood')
                    AND Price BETWEEN 10.00 AND 50.00)