SELECT 
	orderid, 
	custid, 
	orderdate,
	empid
FROM 
	Sales.Orders
WHERE 
	orderdate = (
	SELECT MAX(orderdate) 
	FROM Sales.Orders);