USE Latihan;
/*
6. Tulis kueri yang mengembalikan karyawan yang tidak melakukan pemesanan pada atau setelah 1 Mei 2016:
table yang digunakan: HR.Employees and Sales.Orders
*/

SELECT E.empid, E.firstname, E.lastname
FROM HR.Employees AS E
LEFT JOIN Sales.Orders AS O
    ON E.empid = O.empid AND O.orderdate >= '2016-05-01'
WHERE O.orderid IS NULL
ORDER BY empid;