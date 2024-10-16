use Latihan2

SELECT p.nama_mata_kuliah
FROM [dbo].[jadwal_mata_kuliah] P
WHERE kode_mata_kuliah IN ('TI101', 'SI201', 'TS301')