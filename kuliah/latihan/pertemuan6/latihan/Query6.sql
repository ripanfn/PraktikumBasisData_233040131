SELECT e.Name AS EmployeeName, m.Name AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID;
