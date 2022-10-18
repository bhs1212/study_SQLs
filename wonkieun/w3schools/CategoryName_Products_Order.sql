-- ID 내역
SELECT OrderID
FROM OrderDetails
WHERE ProductID in (SELECT ProductID
					FROM Products
					WHERE CategoryID in (SELECT CategoryID
										FROM Categories
										WHERE CategoryName in ('Dairy Products' ,'Seafood')
                 					   AND Price BETWEEN 10.00 AND 50.00))


-- ID 갯수
SELECT COUNT(OrderID)
FROM OrderDetails
WHERE ProductID in (SELECT ProductID
					FROM Products
					WHERE CategoryID in (SELECT CategoryID
										FROM Categories
										WHERE CategoryName in ('Dairy Products' ,'Seafood')
                 					   AND Price BETWEEN 10.00 AND 50.00))