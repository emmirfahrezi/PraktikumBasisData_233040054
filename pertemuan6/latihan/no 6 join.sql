use pertemuan6

SELECT N.Name AS nama, M.ManagerID
FROM Employee N
INNER JOIN [dbo].[Employee] M ON N.EmployeeID = M.ManagerID; 

