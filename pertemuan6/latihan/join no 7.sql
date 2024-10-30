use pertemuan6

SELECT N.Name AS nama, D.[DepartementName]
FROM Employee N
FULL JOIN [dbo].[Departments] D ON N.EmployeeID = D.DepartmenstID; 