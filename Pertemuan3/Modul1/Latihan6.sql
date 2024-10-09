SELECT
	e.empid,
	e.firstname,
	e.lastname
FROM
	HR.Employees e
WHERE
	E.empid NOT IN (
	SELECT o.empid
	FROM Sales.Orders o
	WHERE o.orderdate >= '2016-05-01'
	);