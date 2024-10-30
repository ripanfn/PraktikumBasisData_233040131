SELECT e.Name, p.ProjectName
FROM Employees e
LEFT JOIN Projects p ON e.DepartmentID = p.DepartmentID;
