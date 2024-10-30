use pertemuan6

SELECT N.Name AS nama, S.DepartementName
FROM Employee N
INNER JOIN Departments S ON N.EmployeeID = S.DepartmenstID; 