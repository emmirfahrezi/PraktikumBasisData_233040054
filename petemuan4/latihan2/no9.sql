use Latihan2

SELECT p.nama_mata_kuliah
FROM [dbo].[jadwal_mata_kuliah] P
WHERE p.dosen_pengajar LIKE 'ang%'
ORDER BY p.dosen_pengajar ASC