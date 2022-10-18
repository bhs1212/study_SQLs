SELECT SUM(Price BETWEEN 10.00 AND 50.00), AVG(Price BETWEEN 10.00 AND 50.00)
FROM Products
WHERE CategoryID in (SELECT CategoryID
					FROM Categories
					WHERE CategoryName in ('Dairy Products' ,'Seafood'))