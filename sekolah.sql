-- Create Table Siswa & Nilai
CREATE TABLE siswa (
    id INT PRIMARY KEY SERIAL,
    nama VARCHAR(100) NOT NULL,
    tanggal_lahir DATE,
    alamat TEXT
);

CREATE TABLE nilai (
    id INT PRIMARY KEY SERIAL,
    siswa_id INT,
    mata_pelajaran VARCHAR(100),
    nilai INT,
    FOREIGN KEY (siswa_id) REFERENCES Siswa(id)
);