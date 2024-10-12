use Latihan

SELECT HR.Employees.empid,FirstName,LastName ,TitleOfCourtesy,
    CASE
        WHEN TitleOfCourtesy IN ('Ms.', 'Mrs.') THEN 'Female'
        WHEN TitleOfCourtesy = 'Mr.' THEN 'Male'
        ELSE 'Unknown'
    END AS gender
FROM
    HR.Employees;