USE Latihan;
/*
1. Menggunakan Tabel HR.Employees, tulis pernyataan SELECT yang mengembalikan gender untuk setiap 
karyawan berdasarkan titel kesopanan. Berupa 'Ms.' dan 'Mrs.’ untuk ‘female’, ‘Mr.’ unruk ‘Male’
dan dalam semua kasus lain (misalnya, 'Dr.') mengembalikan 'Unknown’:
*/
SELECT empid, firstname, lastname, titleofcourtesy,
	CASE
		WHEN titleofcourtesy IN ('Ms.', 'Mrs.') THEN 'Female'
		WHEN titleofcourtesy = 'Mr.' THEN 'Male'
        ELSE 'Unknown'
    END AS gender
FROM HR.Employees;