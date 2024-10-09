SELECT Customers.custid, Customers.companyname, Orders.orderid, Orders.orderdate 
FROM Sales.Customers AS C   
INNER JOIN Sales.Orders AS O     
ON Customers.custid = Orders.custid;

 --Query ini mengambil data pelanggan dan pesanan dari dua tabel, Customers dan Orders,
 --yang dihubungkan melalui kolom custid. Dengan menggunakan INNER JOIN, hanya data pelanggan yang memiliki pesanan akan ditampilkan,
 --menyajikan custid, companyname dari pelanggan, serta orderid dan orderdate dari pesanan.

SELECT C.custid, C.companyname, O.orderid, O.orderdate 
FROM Sales.Customers AS C   
INNER JOIN Sales.Orders AS O     
ON C.custid = O.custid;
