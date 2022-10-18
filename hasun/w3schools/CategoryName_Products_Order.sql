--CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 주문  OrderID 내역과 총 갯수는?
SELECT OrderID, COUNT(OrderID)
FROM OrderDetails
WHERE ProductID in(SELECT ProductID
					FROM Products
					WHERE CategoryID in (SELECT CategoryID
										FROM Categories
                    					WHERE CategoryName in ('Dairy Products', 'Seafood'))
					AND Price BETWEEN 10 AND 50);

-- OrderID : 10248 총 개수: 482