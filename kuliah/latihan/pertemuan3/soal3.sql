USE Latihan;
/*
3. Jelaskan apa yang salah dalam kueri berikut, dan berikan alternatif yang benar:
SELECT Customers.custid, Customers.companyname, Orders.orderid, Orders.orderdate 
FROM Sales.Customers AS C   
INNER JOIN Sales.Orders AS O     
ON Customers.custid = Orders.custid;
*/

/*
Setelah memberikan alias C untuk tabel Customers dan O untuk tabel Orders, alias tersebut harus digunakan di semua bagian kueri, bukan nama tabel aslinya.
Berikut adalah perbaikan dari kueri tersebut:
*/

SELECT C.custid, C.companyname, O.orderid, O.orderdate 
FROM Sales.Customers AS C 
INNER JOIN Sales.Orders AS O 
ON C.custid = O.custid;