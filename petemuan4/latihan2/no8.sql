use Latihan2


SELECT *
FROM mahasiswa
WHERE jurusan = 'teknik informatika'
AND alamat LIKE 'JL.SUDIRMAN%'
AND tahun_masuk BETWEEN '2019' AND '2020'