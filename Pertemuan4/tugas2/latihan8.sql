SELECT *
FROM dbo.mahasiswa
WHERE jurusan = 'Teknik Informatika' and alamat like '%Jl. Merdeka%' and tahun_masuk between'2018'and'2019';