DELETE FROM Dosen_Wali
WHERE id IN (
    SELECT DISTINCT dosen_wali_id FROM Mahasiswa WHERE id IN (1, 2, 3, 4, 5)
);

DELETE FROM jurusan
WHERE id IN (
    SELECT DISTINCT jurusan_id FROM Mahasiswa WHERE id IN (1, 2, 3, 4, 5)
);

DELETE FROM Mahasiswa
WHERE id IN (1, 2, 3, 4, 5);

SELECT *
FROM Mahasiswa;

SELECT *
FROM Dosen_Wali;

SELECT *
FROM jurusan;