use pertemuan6

SELECT N.Name AS nama, S.projectName
FROM Employee N
CROSS JOIN [dbo].[Projects] S ON N.EmployeeID = S.[ProductID]; 