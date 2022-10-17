SELECT * 
FROM Orders
WHERE EmployeeID in (SELECT EmployeeID
					FROM Employees
                    WHERE EmployeeID = 7
                    OR EmployeeID = 9); 