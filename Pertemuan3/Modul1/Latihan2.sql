SELECT
	Customers.custid,
	COUNT(OrderDetails.orderid) AS numorders,
	SUM(OrderDetails.qty) AS totalqty
FROM
	Sales.Customers
JOIN
	Sales.Orders ON Customers.custid = Orders.custid
JOIN
	Sales.OrderDetails ON Orders.orderid = OrderDetails.orderid
WHERE
	country = 'USA'
GROUP BY
	Customers.custid;