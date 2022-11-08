-- insert database fakultas
CREATE DATABASE fakultas;

-- insert table jurusan
CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

-- insert table mahasiswa
CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- insert jurusan
insert into jurusan (kode, nama) values ("PE", "Pendidikan Ekonomi");

-- insert mahasiswa
 insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)value (1, "20020502", "Siti Zahra Mauria", "Perempuan", "Jakarta", "2002-05-02", "Jl. Bintaro Permai III");
 insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)value (2, "20021005", "Fahrudin Ali", "Laki-laki", "Jakarta", "2002-05-19", "Jl. Bumi Bintaro Permai");

 -- update mahasiswa
 update mahasiswa set tempat_lahir = "Tangerang" where id = 2;

 -- delete mahasiswa
 delete from mahasiswa where id = 2;