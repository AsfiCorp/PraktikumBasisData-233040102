SELECT 
	empid,
	firstname,
	lastname,
	titleofcourtesy,
CASE
	WHEN titleofcourtesy IN ('Ms.','Mrs.') THEN 'female'
	WHEN titleofcourtesy = 'Mr.' THEN 'male'
	ELSE 'Unknown'
	END AS gender
FROM HR.Employees