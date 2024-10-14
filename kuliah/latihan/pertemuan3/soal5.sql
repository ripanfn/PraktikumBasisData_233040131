USE Latihan;
/*
5. Tulis kueri yang mengembalikan semua pesanan yang dilakukan pada hari terakhir aktivitas yang dapat ditemukan di tabel Orders:
table yang digunakan: Sales.Orders
*/

SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate = (SELECT MAX(orderdate) FROM Sales.Orders)
ORDER BY orderid DESC;
