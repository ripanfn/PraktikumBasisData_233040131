USE Latihan;
/*
2. munculkan pelanggan AS, dan untuk setiap pelanggan kembalikan jumlah total pesanan dan jumlah total:
table yang digunakan: Sales.Customers, Sales.Orders, and Sales.OrderDetails
*/

SELECT C.custid, COUNT(DISTINCT O.orderid) AS numorders, SUM(OD.qty) AS totalqty
FROM Sales.Customers C
JOIN Sales.Orders O 
	ON C.custid = O.custid
JOIN Sales.OrderDetails OD 
	ON O.orderid = OD.orderid
WHERE C.country = 'USA'
GROUP BY C.custid;