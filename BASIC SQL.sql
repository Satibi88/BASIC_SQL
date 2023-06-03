-- 0. Import CSV file --
CREATE DATABASE umkm; 

-- 1. Cek table yang telah di import -- 
SELECT * FROM umkm.umkm_jabar;

-- 2. Tunjukan data umkm di kota bandung --
SELECT * FROM umkm.umkm_jabar WHERE nama_kabupaten_kota = "KOTA BANDUNG";

-- 3. Tunjukan data umkm dari tahun 2019 dan disusun berdasarkan kategori_usaha --
SELECT * FROM umkm.umkm_jabar WHERE tahun >= 2019 ORDER BY kategori_usaha, tahun;

-- 4. Soal nomor 3 namun di batasi row nya s.d 10 --  
SELECT * FROM umkm.umkm_jabar WHERE tahun >= 2019 ORDER BY kategori_usaha, tahun LIMIT 10;

-- 5. kategori_usaha apasaja yang tersedia dalam dataset? --
SELECT DISTINCT kategori_usaha FROM umkm.umkm_jabar;

-- 6. Tunjukan seluruh data hanya kategori_usaha FASHION & MAKANAN -- 
SELECT * FROM umkm.umkm_jabar WHERE kategori_usaha IN ("FASHION", "MAKANAN");
SELECT * FROM umkm.umkm_jabar WHERE kategori_usaha = "FASHION" OR kategori_usaha = "MAKANAN";

-- 7. Tunjukan seluruh data dengan kategori_usaha FASHION di kabupaten karawang -- 
SELECT * FROM umkm.umkm_jabar WHERE kategori_usaha = "FASHION" AND nama_kabupaten_kota = "KABUPATEN KARAWANG";

-- 8. Tunjukan seluruh data selain kategori_usaha kuliner, makanan & minuman -- 
SELECT * FROM umkm.umkm_jabar WHERE kategori_usaha NOT IN ("KULINER", "MAKANAN", "MINUMAN");

-- 9. Dari tahun 2018 s.d 2020 bagaimana trend jumlah umkm di Kabupaten Tasikmalaya untuk kategori usaha Batik --  
SELECT 
	nama_kabupaten_kota, kategori_usaha, jumlah_umkm, satuan, tahun 
FROM 
	umkm.umkm_jabar 
WHERE 
	tahun >= 2018 AND tahun <=2020 AND nama_kabupaten_kota = "KABUPATEN TASIKMALAYA" AND kategori_usaha = "BATIK";

-- 10. Di antara Kota Bandung, Kabupaten Bandung & Kabupaten Bandung Barat, dimanakah umkm Kuliner terpusat pada tahun  2021 -- 
SELECT * FROM umkm.umkm_jabar WHERE nama_kabupaten_kota LIKE "%BANDUNG%" AND kategori_usaha = "KULINER" AND tahun = "2021";

-- 11. kabupaten/Kota mana saja yang memiliki angka 7 pada digit ke 3 kode tersebut --
SELECT * FROM umkm.umkm_jabar WHERE kode_kabupaten_kota LIKE "__7%";
SELECT DISTINCT kode_kabupaten_kota, nama_kabupaten_kota FROM umkm.umkm_jabar WHERE kode_kabupaten_kota LIKE "__7%";