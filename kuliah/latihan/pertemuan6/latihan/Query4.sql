SELECT e.Name AS EmployeeName, s.Salaries
FROM Employees e
LEFT JOIN Salaries s ON e.EmployeeID = s.EmployeeID
UNION
SELECT NULL AS EmployeeName, s.Salaries
FROM Salaries s
LEFT JOIN Employees e ON s.EmployeeID = e.EmployeeID
WHERE e.EmployeeID IS NULL;
