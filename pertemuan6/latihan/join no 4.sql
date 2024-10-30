use pertemuan6

SELECT N.Name AS nama, S.[Salaries]
FROM Employee N
FULL JOIN [dbo].[Salaries] S ON N.EmployeeID = S.[EmployeeID]; 