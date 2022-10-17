--직원의 ID가 7,9인 종업원이 받는 주문의 총 수
SELECT * 
FROM Orders
WHERE EmployeeID in (SELECT EmployeeID
					FROM Employees
                    WHERE EmployeeID = 7
                    OR EmployeeID = 9);
--115개