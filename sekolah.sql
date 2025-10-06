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

-- Insert Data
INSERT INTO siswa (nama, umur, jurusan)
VALUES
('Andi', 16, 'IPA'),
('Budi', 17, 'IPS'),
('Citra', 16, 'IPA'),
('Dewi', 17, 'Bahasa'),
('Eko', 16, 'IPS');

INSERT INTO nilai (siswa_id, mata_pelajaran, nilai)
VALUES
(1, 'Matematika', 85),
(1, 'Bahasa Inggris', 90),
(2, 'Ekonomi', 80),
(3, 'Fisika', 88),
(3, 'Kimia', 92),
(4, 'Bahasa Indonesia', 89),
(5, 'Sosiologi', 84),
(5, 'Ekonomi', 76);