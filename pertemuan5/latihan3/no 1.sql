use pertemuan3



create table jurusan (
	id bigint primary key identity(1,1),
	nama_jurusan bigint
)

create table mahasiswa (
	id bigint primary key iidentity(1,1),
	NPM int,
	nama varchar(255),
	tanggal_lahir date,
	alamat varchar(255),
	no_hp int,
	jurusan_id bigint,
	dosen_wali_id bigint,
	FOREIGN KEY (jurusan_id) REFERENCES jurusan(id), 
    FOREIGN KEY (dosen_wali_id) REFERENCES dosen_wali(id)
)

create table dosen_wali (
	id bigint,
	NIP bigint,
	nama varchar,
	tanggal_lahir date,
	alamat varchar (255),
	no_hp int
)



