# Tugas Project Backend: Database & Version Control (Part 1)

## Deskripsi
Proyek ini bertujuan untuk membuat database sekolah beserta tabel, relasi, pengisian data, query, serta pengelolaan version control menggunakan Git dan GitHub.

## Langkah Pengerjaan

### 1. Membuat Database Sekolah
- Buat database baru dengan nama `sekolah`.
- Contoh:
  ```sql
  CREATE DATABASE sekolah;
  USE sekolah;
  ```

### 2. Membuat Tabel & Relasi
- Tabel `siswa`:
  - `id` (Primary Key, Auto Increment)
  - `nama` (VARCHAR, NOT NULL)
  - `umur` (INT)
  - `jurusan` (VARCHAR)
- Tabel `nilai`:
  - `id` (Primary Key, Auto Increment)
  - `siswa_id` (Foreign Key → siswa.id)
  - `mata_pelajaran` (VARCHAR)
  - `nilai` (INT)

### 3. Isi Data (INSERT)
- Tambahkan minimal 5 siswa dan nilai untuk masing-masing siswa.
- Contoh:
  ```sql
  INSERT INTO siswa (nama, umur, jurusan)
  VALUES ("Andi", 16, "IPA"), ("Budi", 17, "IPS");
  
  INSERT INTO nilai (siswa_id, mata_pelajaran, nilai)
  VALUES (1, "Matematika", 85), (2, "Bahasa Inggris", 90);
  ```

### 4. Query Data (SELECT)
- Tampilkan semua siswa.
- Tampilkan nama siswa dengan jurusan IPA.
- Tampilkan nilai rata-rata tiap siswa (gunakan JOIN dan GROUP BY).
- Contoh:
  ```sql
  SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
  FROM siswa
  JOIN nilai ON siswa.id = nilai.siswa_id
  GROUP BY siswa.nama;
  ```

### 5. Update & Delete
- Update jurusan salah satu siswa.
- Hapus satu data nilai siswa.

### 6. Version Control dengan Git
- Inisialisasi repository Git di folder project.
- Simpan file SQL (misal: `sekolah.sql`).
- Buat minimal 3 commit dengan pesan yang jelas.
- Contoh:
  ```sh
  git init
  git add sekolah.sql
  git commit -m "Membuat database sekolah dan tabel siswa"
  ```

### 7. Upload ke GitHub
- Buat repository baru di GitHub dengan nama `sekolah-database`.
- Hubungkan repository lokal ke GitHub.
- Push project ke GitHub.
- Contoh:
  ```sh
  git remote add origin https://github.com/username/sekolah-database.git
  git branch -M main
  git push -u origin main
  ```

### 8. Kriteria Penilaian
- Database berhasil dibuat dengan tabel siswa dan nilai.
- Relasi Primary Key dan Foreign Key diterapkan dengan benar.
- Data siswa dan nilai diisi minimal 5 record.
- Query SELECT, JOIN, GROUP BY berjalan sesuai instruksi.
- Operasi UPDATE dan DELETE berhasil dilakukan.
- Repository Git berisi minimal 3 commit dengan pesan jelas.
- Project berhasil dipush ke GitHub dengan struktur rapi.

---

**Deadline:** Senin, 6 Oktober 2025 pukul 23:59 WIB