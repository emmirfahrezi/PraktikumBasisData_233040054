use pertemuan6

SELECT N.Name AS nama, S.[projectName]
FROM Employee N
FULL JOIN Projects S ON N.EmployeeID = S.ProductID; 