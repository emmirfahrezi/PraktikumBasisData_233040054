

use Latihan

SELECT * FROM HR.Employees


SELECT c.lastname, c.firstname
FROM HR.Employees c


SELECT DISTINCT s.country 
FROM Sales.Customers s

SELECT DISTINCT c.firstname, c.lastname
FROM HR.Employees c

SELECT COUNT(*)
FROM Sales.Customers s
WHERE country= 'Argentina'

SELECT s.contactname, s.address
FROM Sales.Customers s
WHERE s.custid <= 12;

SELECT c.firstname, c.lastname
FROM HR.Employees c
ORDER BY c.firstname ASC

SELECT c.firstname, COUNT(*) as jumlah
FROM HR.Employees c
GROUP BY c.firstname

SELECT c.firstname
FROM HR.Employees c

SELECT TOP(10) *
FROM HR.Employees


SELECT c.firstname
FROM HR.Employees c
WHERE c.hiredate 
BETWEEN '2002-05-01'  AND '2003-10-17';

SELECT c.firstname, c.lastname
FROM HR.Employees c
WHERE c.firstname IN ('Sara', 'Don')

SELECT c.lastname
FROM HR.Employees c
WHERE c.address LIKE '7%'


SELECT c.firstname
FROM HR.Employees C
WHERE c.title LIKE 's%'
AND c.lastname IN ('Peled', 'Buck')
