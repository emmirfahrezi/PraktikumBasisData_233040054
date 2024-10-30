use pertemuan6

SELECT N.[projectName] AS nama, S.[DepartementName]
FROM [dbo].[Projects] N
FULL JOIN [dbo].[Departments] S ON N.[ProductID] = S.[DepartmenstID]; 