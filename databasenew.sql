-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Jan 2022 pada 23.43
-- Versi server: 10.3.32-MariaDB-cll-lve
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u5449168_tpakd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `gbr_album`, `aktif`) VALUES
(21, 'Galeri 1', 'galeri-1', '66gallogo.jpg', 'Y'),
(20, 'Pelatihan Batik Cap IKM', 'pelatihan-batik-cap-ikm', '87pemkabpaluta_262703918_113427551028550_2323851215023070644_n.jpg', 'Y'),
(25, 'Galeri 3', 'galeri-3', '50gallogo.jpg', 'Y'),
(26, 'Galeri 4', 'galeri-4', '71gallogo.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `link`, `gambar`, `tgl_posting`) VALUES
(4, 'Contoh Banner', 'http://padanglawasutarakab.go.id', '79poster 6.jpg', '2009-02-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(155, 2, 'admin', 'Pemkab Paluta Mulai Fokus Penyusunan Skenario Pemulihan Ekonomi Masyarakat', 'pemkab-paluta-mulai-fokus-penyusunan-skenario-pemulihan-ekonomi-masyarakat', '<div dir=\"auto\">Pemerintah Kabupaten Padang Lawas Utara (Paluta) terus berupaya untuk memulihkan ekonomi masyarakat dalam menghadapi Adaptasi Kehidupan Baru (AKB).&nbsp;Hal ini disampaikan oleh Kepala Bagian Perekonomian dan Sumber Daya Alam pada Sekretariat Bupati Paluta Azwar SSTP MSi melalui Kasubbag SDA Netti Juana SE, Selasa (11/8).</div>\r\n\r\n<div dir=\"auto\">&nbsp;</div>\r\n\r\n<div dir=\"auto\">Dikatakannya, pandemi Covid-19 atau virus Corona ini sudah sangat membawa dampak yang sangat berat dan penurunan signifikan bagi perekonomian masyarakat sehingga Pemkab Paluta mulai fokus dan berkoordinasi dalam menyusun skenario untuk pemulihan ekonomi karena dampak pandemi Covid-19 ini diprediksi hingga tahun 2021 mendatang.</div>\r\n\r\n<div dir=\"auto\">&nbsp;</div>\r\n\r\n<div dir=\"auto\">&ldquo;Kita terus berkoordinasi dengan semua pihak dalam menyusun skenario upaya pemulihan ekonomi masyarakat yang dimulai dari sektor riil antara lain pertanian, perkebunan dan UMKM,&rdquo; ujar Netti, Selasa (11/8).</div>\r\n\r\n<div dir=\"auto\">&nbsp;</div>\r\n\r\n<div dir=\"auto\">Salah satu upaya tersebut antara lain melakukan restrukturisasi UMKM dengan pengelolaan penempatan &nbsp;dana dan penjaminan agar sektor riil dapat bergerak.</div>\r\n\r\n<div dir=\"auto\">&nbsp;</div>\r\n\r\n<div dir=\"auto\">Tambahnya, upaya penempatan dan penjaminan dana tersebut antara lain adanya upaya dalam kemudahan bagi masyarakat untuk program Kredit Usaha Rakyat (KUR) serta adanya usulan bantuan dana stimulan kepada Pemerintah Pusat yang diajukan oleh Disnakerkop dan UMKM bagi 800 pelaku UMKM di wilayah kabupaten Paluta.</div>\r\n\r\n<div dir=\"auto\">&nbsp;</div>\r\n\r\n<div dir=\"auto\">&ldquo;Kita akui bahwa daerah kita sangat membutuhkan dukungan dan kontribusi pemerintah pusat berupa anggaran proporsional agar dapat terserap untuk melakukan aksi dalam memulihkan ekonomi kerakyatan diantaranya bidang UMKM, Pertanian, perkebunan maupun sektor riil lainnya,&rdquo; jelasnya.</div>\r\n\r\n<div dir=\"auto\">&nbsp;</div>\r\n\r\n<div dir=\"auto\">Masih menurut Netti, menjaga mata pencaharian kehidupan terus dilakukan dengan mendukung masyarakat dan bisnis yang terdampak, menyiapkan kembali masyarakat agar dapat bekerja produktif dan aman serta menyiapkan kebijakan untuk pemulihan ekonomi nasional.</div>\r\n\r\n<div dir=\"auto\">&nbsp;</div>\r\n\r\n<div dir=\"auto\">Untuk itu, Pemkab Paluta masih terus melakukan koordinasi dan evaluasi serta menyusun langkah diberbagai bidang dalam hal upaya pemulihan ekonomi khususnya ekonomi kemasyarakatan.</div>\r\n\r\n<div dir=\"auto\">&nbsp;</div>\r\n\r\n<div dir=\"auto\">&ldquo;Kita masih terus melakukan maping dan evaluasi terkait mana yang terdampak dan mampu bertahan diterpa oleh pandemi ini agar kita dapat menyusun skenario dalam hal pemulihan ekonomi masyarakat di daerah kabupaten Paluta,&rdquo; pungkasnya</div>\r\n', 'Minggu', '2021-08-15', '11:35:02', '86IMG_3575.jpeg', 1, ''),
(156, 2, 'admin', 'Pemkab Paluta Kukuhkan Anggota Paskibraka Tahun 2021', 'pemkab-paluta-kukuhkan-anggota-paskibraka-tahun-2021', '<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><b style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Daltonews.com, Paluta</b>&nbsp;- Bupati Padang Lawas Utara (Paluta) Andar Amin Harahap diwakili Sekretaris Daerah Kabupaten (Sekdakab) Paluta Burhan Harahap mengukuhkan anggota Pasukan Pengibar Bendera Pusaka (Paskibraka) Tahun 2021 Kabupaten Paluta yang dilaksanakan di depan Kantor Bupati Paluta, Jumat (13/08/2021).</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Sama halnya dengan tahun lalu, upacara HUT ke-76 Republik Indonesia kali ini digelar secara terbatas dengan mengutamakan protokol kesehatan Covid-19. Oleh karena itu jumlah anggota Paskibraka Kabupaten Paluta yang akan bertugas pada tahun ini juga tidak sebanyak dari tahun-tahun sebelumnya.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_1_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_1_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!2\" data-google-query-id=\"CMWT57CasvICFc2WvAodCCsNYw\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_1\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_1\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=637841245&amp;pi=t.aa~a.3515774781~i.9~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F08%2Fpemkab-paluta-kukuhkan-anggota.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002277057&amp;bpp=1&amp;bdt=441&amp;idt=-M&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0&amp;nras=2&amp;correlator=5918227012812&amp;frm=20&amp;pv=1&amp;ga_vid=92239311.1629002277&amp;ga_sid=1629002277&amp;ga_hid=1115687945&amp;ga_fc=0&amp;u_tz=420&amp;u_his=3&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=1208&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=0&amp;eid=42530671%2C20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=3072471016676314&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2F&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;btvi=1&amp;fsb=1&amp;xpc=MI6jK0VEk5&amp;p=https%3A//www.daltonews.com&amp;dtd=10\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Sekdakab Paluta yang bertindak sebagai pembina upacara mewakili Bupati Paluta mengucapkan selamat dan bangga kepada anggota Paskibraka yang terpilih mewakili kecamatan se-Kabupaten Paluta.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&quot;Saya atas nama pribadi dan Pemerintah Kabupaten Paluta mengucapkan selamat dan bangga kepada anak-anak kami yang mewakili kecamatan se-Kabupaten Paluta sebagai petugas pengibar dan penurun bendera sang saka merah putih, karena masih banyak teman-teman kalian yang belum memiliki kesempatan seperti kalian&quot; kata Sekdakab Paluta membacakan amanat Bupati Paluta.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ia juga menambahkan, untuk rangkaian Upacara Kemerdekaan dalam rangka HUT RI di masa pandemi ini tetap dilakukan di halaman kantor Bupati Paluta dan bersifat terbatas.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&quot;Jadi saya mohon maaf kepada masyarakat yang tidak mendapat undangan untuk mengikuti Upacara Bendera harap memaklumi karena untuk melindungi diri kita serta menjaga dari semuanya,&quot; pungkasnya.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Pasukan Paskibraka yang dikukuhkan pada hari ini berjumlah 28 orang, terdiri dari 14 putra dan 14 putri, mereka semua merupakan pemuda dan pemudi yang terpilih untuk mengibarkan Bendera Pusaka pada saat HUT Ke-76 RI 17 Agustus tahun 2021 mendatang di halaman kantor Bupati Paluta.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_2_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_2_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!3\" data-google-query-id=\"CN7V57CasvICFZTPvAod6s8G-Q\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_2\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_2\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=3006231114&amp;pi=t.aa~a.3515774781~i.19~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F08%2Fpemkab-paluta-kukuhkan-anggota.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002277057&amp;bpp=1&amp;bdt=441&amp;idt=-M&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0%2C763x280&amp;nras=3&amp;correlator=5918227012812&amp;frm=20&amp;pv=1&amp;ga_vid=92239311.1629002277&amp;ga_sid=1629002277&amp;ga_hid=1115687945&amp;ga_fc=0&amp;u_tz=420&amp;u_his=3&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=1842&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=0&amp;eid=42530671%2C20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=3072471016676314&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2F&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;btvi=2&amp;fsb=1&amp;xpc=mfc1zk2YZ5&amp;p=https%3A//www.daltonews.com&amp;dtd=14\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Kegiatan pengukuhan ini turut dihadiri oleh, Danramil 05/PB, Dankipan C 123/RW dan para Kepala OPD Kabupaten Paluta.</p>\r\n', 'Minggu', '2021-08-15', '11:38:57', '85DSC02336.JPG', 1, ''),
(146, 1, 'admin', 'Amnesti Pajak, Upaya Menggerakkan Ekonomi Secara Berdikari', 'amnesti-pajak-upaya-menggerakkan-ekonomi-secara-berdikari', '<p>Pemerintah Indonesia tengah berjuang untuk melepaskan ketergantungan terhadap bangsa lain. Untuk itu, upaya untuk mengonsolidasikan seluruh potensi, baik sumber daya alam maupun sumber daya manusia semakin intensif dilakukan.</p>\r\n\r\n<p>Para pendiri bangsa, salah satunya Bung Karno, menegaskan bahwa kekuatan utama bangsa ini adalah gotong royong. Perasan atau saripati dari nilai-nilai yang ada dalam Pancasila adalah gotong royong. Untuk itu, Pemerintah ingin membangkitkan kembali semangat gotong royong ini dalam bentuk yang paling nyata dan dapat dirasakan oleh sebagian besar rakyat Indonesia.</p>\r\n\r\n<p>Amnesti Pajak adalah salah satu instrumen yang digunakan untuk meningkatkan kesadaran masyarakat dalam proses pembangunan yang berdikari. Pembangunan yang tidak mengandalkan kekuatan asing. Pergerakan ekonomi yang mengandalkan dan ditopang oleh kaki-kaki milik bangsa sendiri.</p>\r\n\r\n<p>Amnesti Pajak merupakan instrumen yang dirancang oleh Pemerintah dengan tujuan untuk merepatriasi harta para Warga Negara Indonesia (WNI) yang selama ini tersimpan atau tersebar di luar negeri. Milik siapa? Ya milik warga bangsa ini! Sebagaimana istilahnya, repatriasi, program ini bertujuan untuk memanggil kembali dana-dana milik warga bangsa Indonesia yang tersebar di negeri-negeri manca.</p>\r\n\r\n<p>&ldquo;Panggilan&rdquo; atas dana-dana yang disimpan di luar negeri untuk disimpan ke wilayah Republik, ditujukan untuk menciptakan pertumbuhan ekonomi baru di tanah air, melalui beragam bentuk investasi yang ada di dalam negeri. Sebagaimana diketahui, Pemerintah telah menciptakan instrumen-instrumen investasi yang menarik melalui berbagai macam kegiatan ekonomi, mulai dari pembangunan infrastruktur, kemaritiman, pertanian dan perkebunan, energi, dan sektor-sektor strategis lainnya.</p>\r\n\r\n<p>Jadi, Amnesiti Pajak, pertama-tama harus ditempatkan sebagai upaya yang dibuat Pemerintah untuk membuka kesempatan bagi warga negaranya dalam membuka peluang usaha baru di dalam negeri. Peluang usaha tersebut dengan demikian akan menciptakan lapangan kerja yang baru. Aktivitas ekonomi yang dihasilkan dari repatriasi dana-dana milik WNI yang selama ini tersimpan di luar negeri, akan menaikkan daya beli masyarakat. Naiknya daya beli akan melahirkan munculnya subjek pajak dan objek pajak baru. Dalam jangka panjang, hal tersebut akan meningkatkan penerimaan pajak bagi negara.</p>\r\n\r\n<p>Oleh karena itu, Amnesti Pajak membuka kesempatan kepada setiap Wajib Pajak untuk melaporkan harta yang selama ini belum tercantum dalam Surat Pemberitahuan Tahunan (SPT) Pajak Penghasilan, dengan membayar uang tebusan.</p>\r\n\r\n<p>Jadi warga negara yang sebelumnya sudah patuh atau sudah tertib dalam urusan, tidak perlu khawatir. Negara/Pemerintah berterima kasih dan sangat menghargai untuk kepatuhan dan ketertiban para Wajib Pajak. Pemerintah akan mengejar warga negara yg sebelumnya tidak patuh dan tidak bersedia untuk ikut amnesti.</p>\r\n\r\n<p>Proses pelaporan melalui Amnesti Pajak ini dilindungi oleh Undang-undang, dan data-data yang diungkap tidak akan diperiksa kembali untuk kepentingan penyidikan pajak. Pelaporan ini juga memberikan kepastian hukum dengan diterbitkannya Surat Keterangan Pengampunan Pajak.</p>\r\n\r\n<p>Amnesti Pajak bersifat PILIHAN. Boleh ikut, boleh juga tidak! Artinya merupakan HAK. Bukan merupakan KEWAJIBAN setiap Wajib Pajak. Wajib Pajak dapat berbentuk Orang Pribadi atau Badan yang sudah memiliki kewajiban melaporkan SPT Tahunan PPh.</p>\r\n\r\n<p>Masyarakat yang berpenghasilan di bawah Penghasilan Tidak Kena Pajak (PTKP) yang besarnya 4,5 juta per bulan atau 54 juta per tahun DIBEBASKAN dari program Amnesti Pajak. Wajib Pajak yang selama ini seluruh penghasilannya sudah disetorkan pajaknya (Pegawai swasta maupun negeri) TIDAK PERLU mengikuti program Amnesti Pajak. Wajib Pajak yang sudah melaporkan seluruh harta perolehannya melalui SPT, juga TIDAK PERLU mengikuti program ini.</p>\r\n\r\n<p>Jadi, Amnesti Pajak justru merupakan kesempatan yang tepat untuk merevisi SPT setiap Wajib Pajak yang belum sempurna atau ada harta perolehan yang harus dilaporkan tetapi belum dicatatkan dalam laporan SPT sebelumnya. Jangka waktunya Amnesti Pajak berlaku sampai dengan 31 Maret 2017. Untuk itu, penting untuk segera memanfaatkan kesempatan program ini, sehingga setelah seluruh harta yang dimiliki diUNGKAPkan di depan Kantor Pajak, lalu diTEBUS dendanya yang sebesar 2%, Wajib Pajak yang mengikuti program ini dapat merasa LEGA.</p>\r\n\r\n<p>Setelah program ini berakhir, maka akan dilakukan proses tindakan perpajakan sesuai ketentuan yang berlaku dan pengenaan sanksi kenaikan berupa denda 200% dari pajak penghasilan yang tidak/kurang dibayar atas harta yang tidak dilaporkan atau sengaja disembunyikan.</p>\r\n\r\n<p>Dengan demikian, semangat program Amnesti Pajak adalah menyempurnakan dan memperbaiki kewajiban perpajakan setiap Wajib Pajak dengan benar. Jika Anda memerlukan informasi lebih lanjut, silakan kunjungi www.pajak.go.id/amnestipajak atau telepon hotline Amnesti Pajak di 1500-745.</p>\r\n', 'Minggu', '2021-11-19', '21:58:36', '92amnestipajak.jpg', 1, ''),
(147, 1, 'admin', 'Wujud Kerja Nyata Untuk Negeri melalui Inovasi', 'wujud-kerja-nyata-untuk-negeri-melalui-inovasi', '<p>Jakarta, 10 Agustus 2016 &ndash; Peristiwa ini menjadi istimewa karena untuk pertama kalinya puncak perayaan Hakteknas di pusatkan di daerah (Solo, Jawa Tengah) sejak Kementerian Riset dan Teknologi bergabung dengan Dirjen Pendidikan Tinggi menjadi Kementerian Riset, Teknologi dan Pendidikan Tinggi. Dalam peringatan Hari Kebangkitan Teknologi Nasional 10 Agustus 2016 dihadiri oleh Pemerintah daerah, civitas akademika, lembaga litbang, dunia usaha, pemerhati IPTEK, mahasiswa dan seluruh masyarakat Indonesia.</p>\r\n\r\n<p>HAKTEKNAS merupakan puncak pencapaian ajang unjuk inovasi anak bangsa. Menilik kembali sejarah kebangkitan teknologi di Indonesia, yang diawali dengan penerbangan perdana pesawat terbang N-250 Gatotkaca pada tanggal 10 Agustus 1995 di Bandung, ini menjadi bukti IPTEK telah membawa negara Indonesia sejajar dengan negara lain. Hal ini menunjukkan betapa pentingnya menanamkan perhatian, minat, dan kesadaran dari seluruh komponen bangsa terhadap pentingnya IPTEK dan inovasi dalam pembangunan nasional yang berkesinambungan dan berdaya saing.</p>\r\n\r\n<p>Momentum 21 tahun lalu, terus menjadi spirit bekerja, dan kembali membangun kepercayaan diri bahwa menguasai ilmu pengetahuan dan teknologi adalah suatu keniscayaan untuk bisa bersaing dan sejajar dengan bangsa lain. Keyakinan itu harus diikuti dengan langkah nyata berupa kebijakan program dan kegiatan untuk mendukung dan mengembangkan inovasi Nasional maupun Sistem Inovasi Daerah.</p>\r\n\r\n<p>Memasuki era MEA, kawasan ASEAN akan menjadi pasar terbuka yang berbasis produksi, dimana aliran barang, jasa dan investasi bergerak bebas sesuai dengan konvensi ASEAN. Keunggulan komparatif dan kompetitif menentukan mampu tidaknya kita memenangkan persaingan antar Negara Anggota ASEAN, didukung Sumber Daya Alam (SDA) dan Sumber Daya Manusia (SDM) yang handal disertai dengan peningkatan daya saing guna menghadapi integrasi perekonomian maka kita berkeyakingan akan mampu memenangkan persaingan liberalisasi pasar regional dalam komunitas &nbsp;ASEAN Economy Community, (AEC).</p>\r\n\r\n<p>Pemerintah terus menerus bekerja keras meningkatkan peran dan fungsinya sebagai, regulator, motivator, stimulator dan fasilitator dalam rangka menciptakan iklim kondusif bagi terwujudnya penguatan inovasi. Peran dan fungsi lembaga litbang dan perguruan tinggi juga akan terus kita dorong untuk bersinergi memperkuat daya dukung inovasi. Eksistensi industri juga secara berkelanjutan diberikan stimulan agar mampu menggairahkan dunia investasi yang pada akhirnya akan tercipta industri yang kuat dengan basis inovasi anak bangsa. Maka Pemerintah fokus untuk melahirkan kebijakan yang mengitegrasikan semua sektor dan aktor inovasi sebagai platform untuk membangun dan memperkuat Sistem Inovasi Nasional.</p>\r\n', 'Minggu', '2021-11-19', '22:01:20', '19inovasi.jpg', 1, ''),
(149, 1, 'admin', 'Jaga Kebersihan Mulai Dari Lingkungan Sekitar Kita', 'jaga-kebersihan-mulai-dari-lingkungan-sekitar-kita', '<p>Kebersihan lingkungan mempunyai peranan yang sangat penting dan tak terpisahkan dalam kehidupan manusia. Menjaga kebersihan lingkungan sama artinya menciptakan lingkungan yang sehat, bebas dari kotoran, seperti debu, &nbsp;sampahdan bau yang tidak sedap. Dengan lingkungan yang sehat, kita tidak akan mudah terserang berbagai penyakit seperti demam berdarah, malaria, muntaber dan lainnya. Tidak hanya di bidang kesehatan, kebersihan lingkungan juga sangat berpengaruh terhadap kenyamanan, keindahan dan keasrian lingkungan yang nantinya bermuara pada kedamaian. Semua ini dapat kita raih dengan melakukan perbuatan kecil dan sederhana, mulai dari menjaga kebersihan lingkungan di sekitar kita.</p>\r\n\r\n<p>Kebersihan lingkungan dimulai dari lingkungan rumah dan tempat kita bekerja. Untuk kebersihan lingkungan di sekitar rumah, kita lakukan dengan membersihkan halaman dan telajakan rumah. Mari biasakan diridengan pola hidup bersih.Sampah yang dihasilkan rumah tangga selanjutnya kita pilah menjadi tiga, sampah organik, sampah non organik dan sampah botol atau pecah belah. Dengan pemilahan jenis sampah ini akan sangat bermanfaat, sampah organik bisa kita jadikan kompos sehingga bermanfaat untuk menyuburkan tanah dan tanaman.Sampah non organik kita kumpulkan dan kita jual ke pengepul untuk didaur ulang sehingga memberikan nilai lebih. Sementara itu untuk tempat kerja, ciptakan suasana ruang kerja yang bersih, rapi dan indah sehingga kita nyaman dalam melakukan aktivitas pekerjaan sehari-hari. Perlu juga diatur jadwal untuk kegiatan kerja bakti membersihkan lingkungan kantor.&nbsp;</p>\r\n\r\n<p>Hal yang tidak kalah penting &nbsp;adalah menanam tanaman. Tanaman mempunyai banyak fungsi yaitu sebagai penyaring debu, penyimpan air tanah, penyejuk dan pendingin alami. Selain itu tanaman juga dapat dijadikan sebagai taman yang akan memberikan suasana asri dan indah lingkungan sekitar kita.Dengan adanya pohon yang rindang, taman yang asri, otomatis kita akan menjadi nyaman dan betah di rumah maupun di kantor dalam melaksanakan tugas sehari-hari.</p>\r\n', 'Minggu', '2021-11-19', '22:13:10', '61kebersihan-lingkungan.jpg', 1, ''),
(152, 1, 'admin', 'Ini Keunggulan Sampah Plastik untuk Aspal, Salah Satunya Anti Air', 'ini-keunggulan-sampah-plastik-untuk-aspal-salah-satunya-anti-air', '<p>Pemerintah Indonesia terus melakukan upaya untuk memperbaiki citra buruk terhadap tuduhan dunia. Dimana hampir seluruh negara dunia menuding jika Indonesia merupakan salah satu negara dengan pencemaran sampah plastik terbesar di dunia.</p>\r\n\r\n<p>Salah satu yang tengah dikerjakan adalah pemanfaat sampah plastik untuk bahan aspal jalan. Pembangunan dengan bahan aspal sampah plastik dilakukan dengan porsi 10% untuk sampah plastik dan 90% aspal.</p>\r\n\r\n<p>Menteri Pekerjaan Umum dan Perumahan Rakyat (PUPR) Basuki Hadimuljono mengatakan meskipun bahan aspal dicampur dengan bahan sampah plastik, namun hal tersebut tidak akan sedikitpun mengurangi kualitas dari jalan yang dibangun. Justru pencampuran aspal dengan sampah plastik bisa memperkuat daya rekat jalan.</p>\r\n\r\n<p>&quot;Bebannya itu sesuai kelas jalan, jadi sama. Ini tidak mengurangi kualitas jalan malah menambah perekat jalan,&quot; ujarnya saat ditemui di Bekasi, Sabtu (16/9/2017).</p>\r\n', 'Minggu', '2021-11-22', '22:25:08', '35aspal.jpg', 1, ''),
(153, 1, 'admin', 'Izin Pembuangan Limbah B3 akan Dibagi ke Daerah', 'izin-pembuangan-limbah-b3-akan-dibagi-ke-daerah', '<p>Pemerintah pusat siap membagi izin pembuangan limbah Bahan Berbahaya dan Beracun (B3) ke pemerintah daerah. Namun rencana pembagian wewenang itu dinilai bertentangan dengan Undang-Undang dan dikhawatirkan semakin mempercepat laju perusakan lingkungan.<br />\r\n&nbsp;<br />\r\nRencana pembagian wewenang izin pembuangan limbah B3 ke daerah disebut dalam Rancangan Peraturan Pemerintah (RPP) tentang Pengelolaan Limbah Bahan Berbahaya dan Beracun. Kementerian Lingkungan Hidup (KLH)&nbsp;<a href=\"http://www.hukumonline.com/berita/baca/lt52f3603804630/klh-konsultasikan-rpp-limbah-b3-ke-publik\">mengkonsultasikan</a>&nbsp;Rancangan itu ke publik pada Kamis (06/2). Sejumlah pemangku kepentingan seperti pengusaha tambang, pengusaha limbah, dan aktivis lingkungan hadir dalam konsultasi publik itu.<br />\r\n&nbsp;<br />\r\nSalah satu yang masukan bernada&nbsp;<a href=\"http://www.hukumonline.com/berita/baca/lt501b9d854f011/pengusaha-baja-tolak-rpp-b3\">kritik</a>&nbsp;terhadap isi RPP ini adalah pemberian wewenang kepada daerah untuk memberi izin-izin untuk limbah B3. Pasal 180 RPP menyebutkan setiap orang yang ingin memperoleh izin dumping limbah B3 harus mengajukan permohonan tertulis kepada Menteri, gubernur, atau bupati/walikota sesuai kewenangannya.<br />\r\n&nbsp;<br />\r\nBahkan untuk pengalihan hak milik atas lokasi limbah pun demikian. Pasal 218 RPP menyebutkan setiap orang yang menghasilkan dan menyimpan, atau mengangkut, memanfaatkan, mengolah, dan mengolah limbah B3 akan melakukan peralihan hak milik terhadap lokasi usaha atau kegiatan wajib mendapat persetujuan dari bupati/walikota.<br />\r\n&nbsp;<br />\r\nPenyederhanaan izin yang digagas KLH diapresiasi, tetapi pemberian wewenang kepada daerah berkaitan dengan limbah B3 masih dipertanyakan. Selain kapasitas pemerintah daerah melakukan penilaian atas kelayakan izin, payung hukum pemberian wewenang izin itu juga belum jelas.<br />\r\n&nbsp;<br />\r\nPasal 63 ayat (1) huruf&nbsp;<em>k</em>&nbsp;UU No. 32 Tahun 2009 tentang Perlindungan dan Pengelolaan Lingkungan Hidup (PPLH) jelas menegaskan wewenang menetapkan dan melaksanakan kebijakan mengenai B3, limbah, dan limbah B3 ada di tangan pemerintah pusat. Itu sebabnya, gagasan memberi wewenang ke daerah itu dianggap bertentangan dengan UU PPLH.<br />\r\n&nbsp;<br />\r\nPeraturan Pemerintah (<a href=\"http://www.hukumonline.com/pusatdata/detail/26984/nprt/lt51274e13f0314/pp-no-38-tahun-2007-pembagian-urusan-pemerintahan-antara-pemerintah,-pemerintahan-daerah-provinsi,-dan-pemerintahan-daerah-kabupaten_kota\">PP) No. 38 Tahun 2007</a>, pijakan hukum pembagian urusan pemerintahan antara pusat dan daerah, menyebut lingkungan hidup sebagai urusan wajib daerah yang harus dijalankan. Tetapi kebijakan mengenai limbah B3 masih tetap menjadi kewenangan pusat. Wisnu Susetyo dalam konsultasi itu mengatakan seharusnya sudah dipertimbangkan banyak hal jika ingin memberikan wewenang ke daerah, termasuk standar-standar minimal yang harus dimiliki jika daerah ingin memberikan izin pengelolaan limbah B3.<br />\r\n&nbsp;<br />\r\nDeputi IV Kementerian Lingkungan Hidup, Rasio Ridho Sani, mengatakan masukan-masukan publik akan dicatat dan ditampung untuk kemudian dibahas lagi. Namun ia menekankan tidak mungkin materi RPP ini akan memuaskan semua pemangku kepentingan sekaligus.<br />\r\n&nbsp;<br />\r\nMengenai pemberian izin ke daerah, Kepala Biro Hukum dan Humas KLH, Resa Vivien Ratnawati, menjelaskan saat ini UU No. 32 Tahun 2004 tentang Pemerintah Daerah sedang direvisi, sehingga mungkin membawa imbas pula pada PP No. 38 Tahun 2007. Persoalannya, ada daerah yang sudah menetapkan izin&nbsp;<a href=\"http://www.hukumonline.com/berita/baca/lt5282d4876a72f/menjaga-lingkungan-dengan-konvensi-rotterdam\">dumping</a>&nbsp;lewat Perda.</p>\r\n', 'Minggu', '2021-11-19', '22:27:50', '1b3.jpg', 1, ''),
(154, 1, 'admin', 'Pertanian Organik dan Penerapannya', 'pertanian-organik-dan-penerapannya', '<p>eberapa hari yang lalu saya dimintai data oleh teman kantor tentang wilayah binaan yang terdapat pertanian organik. Saya mengatakan kalau di wilayah binaan tidak terdapat sistem tersebut karena memang belum menerapkannya. Teman saya ini agak merasa aneh karena di unit kantor tidak ada satupun yang melaksanakannya sementara unit lain di Bogor Barat sudah ada yang melaksanakan.&nbsp;<em>Well,</em>&nbsp;sepertinya saya harus menjelaskan lebih lanjut mengenai apa itu pertanian organik agar mengerti karena sistem ini bukan budidaya konvensional biasa.</p>\r\n\r\n<p>Setelah menjelaskan teknis dan prinsip dasar pertanian organik&nbsp;<del>berbekal dari sisa-sisa ilmu sewaktu zaman kuliah dulu</del>, teman saya ini baru percaya kalau untuk melaksanakan sistem ini harus memenuhi beberapa persyaratan yang belum tentu dapat dipenuhi oleh beberapa orang petani.</p>\r\n', 'Minggu', '2021-11-29', '22:37:03', '91organik.jpg', 1, '');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(157, 2, 'admin', 'Pemkab Paluta Sampaikan Nota Penjelasan Rancangan Perubahan KUA PPAS APBD Tahun Anggaran 2021', 'pemkab-paluta-sampaikan-nota-penjelasan-rancangan-perubahan-kua-ppas-apbd-tahun-anggaran-2021', '<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Pemerintah Kabupaten Padang Lawas Utara (Paluta) sampaikan nota penjelasan rancangan perubahan Kebijakan Umum Anggaran (KUA) dan rancangan perubahan Prioritas dan Plafon Anggaran Sementara (PPAS) dari Anggaran Pendapatan Belanja Daerah (APBD) tahun anggaran 2021 kepada DPRD Paluta dalam rapat paripurna di Aula DPRD Paluta, Senin (09/08/2021).</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Dalam rapat paripurna penyampaian nota rancangan perubahan KUA dan PPAS tahun 2021, dihadiri Wakil Bupati Paluta Hariro Harahap, Sekdakab Paluta Burhan Harahap, Kejari, TNI/Polri, Forkompida, pimpinan OPD, camat se Paluta beserta undangan lainnya.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_1_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_1_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!2\" data-google-query-id=\"CMrz2uKasvICFU7CFgUdHP4OAg\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_1\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_1\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=637841245&amp;pi=t.aa~a.3515774781~i.8~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F08%2Fpemkab-paluta-sampaikan-nota-penjelasan.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002377791&amp;bpp=2&amp;bdt=503&amp;idt=2&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0&amp;nras=2&amp;correlator=2658434691275&amp;frm=20&amp;pv=1&amp;ga_vid=377995148.1629002378&amp;ga_sid=1629002378&amp;ga_hid=2142754892&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=1238&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=0&amp;eid=20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=3115262451407089&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3F%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C0%2C0%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;btvi=1&amp;fsb=1&amp;xpc=zDNjQQ66st&amp;p=https%3A//www.daltonews.com&amp;dtd=3866\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Dalam nota penjelasan rancangan perubahan KUA dan PPAS, Bupati Paluta Andar Amin Harahap yang diwakili oleh Wakil Bupati Hariro Harahap menyebutkan sebagaimana yang telah dituangkan pada rancangan perubahan KUA bahwa perubahan kebijakan pendapatan daerah yang diproyeksikan untuk tahun anggaran 2021 adalah sebesar Rp1.127.711.220.102,- atau bertambah sebesar Rp42.411.467.276,- dari yang telah direncanakan pada APBD tahun anggaran 2021 sebesar Rp1.085.299.752.826,-.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Adapun rinciannya antara lain pendapatan asli daerah bertambah sebesar Rp3.548.388.993,- dari yang direncanakan pada APBD tahun 2021 sebesar Rp45.137.180.063,- sehingga menjadi Rp48.685.569.056,- yang bersumber dari pajak daerah, retribusi daerah, pengelolaan kekayaan daerah yang dipisahkan serta lain-lain pendapatan asli daerah yang sah.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Kemudian, pendapatan transfer bertambah sebesar Rp2.489.258.283,- dari yang telah direncanakan pada APBD tahun 2021 sebesar Rp1.040.162.572.764,- menjadi sebesar Rp1.042.651.831.046,- yang terdiri dari pendapatan transfer yang diterima Pemda dan pendapatan transfer antar daerah.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_2_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_2_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!3\" data-google-query-id=\"CNPk3eKasvICFUOylgodp3YMpQ\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_2\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_2\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=3006231114&amp;pi=t.aa~a.3515774781~i.14~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F08%2Fpemkab-paluta-sampaikan-nota-penjelasan.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002377796&amp;bpp=1&amp;bdt=508&amp;idt=2&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0%2C763x280&amp;nras=3&amp;correlator=2658434691275&amp;frm=20&amp;pv=1&amp;ga_vid=377995148.1629002378&amp;ga_sid=1629002378&amp;ga_hid=2142754892&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=1823&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=0&amp;eid=20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=3115262451407089&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3F%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C0%2C0%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;btvi=2&amp;fsb=1&amp;xpc=lEjF9p1qhm&amp;p=https%3A//www.daltonews.com&amp;dtd=3928\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Selanjutnya, lain-lain pendapatan daerah yang sah menjadi Rp36.373.820.000,- merupakan lain-lain pendapatan sesuai dengan ketentuan perindang-undangan yang mana pada APBD tahun anggaran 2021 belum direncanakan.<br />\r\nKebijakan perubahan belanja daerah yang diproyeksikan untuk tahun anggaran 2021 adalah sebesar Rp1.389.574.396.901,- atau berkurang sebesar Rp129.528.877.978,- dari yang diproyeksikan sebelumnya sebesar Rp1.519.103.274.879,- dengan rincian antara lain belanja operasi diproyeksikan bertambah sebesar Rp49.971.551.069,- menjadi sebesar Rp672.071.468.822,- dari sebelumnya yang diproyeksikan sebesar Rp622.099.917.753,- yang terdiri dari belanja pegawai, belanja barang dan jasa, belanja hibah dan belanja bantuan sosial.<br />\r\nSelanjutnya, belanja modal diproyeksikan berkurang sebesar Rp178.800.044.347,- menjadi sebesar Rp365.295.828.915,- dari sebelumnya yang diproyeksikan pada APBD tahun 2021 sebesar Rp544.095.873.262,- yang terdiri dari belanja modal peralatan dan mesin, belanja modal gedung dan bangunan, belanja modal jalan, jaringan dan irigasi serta belanja modal aset tetap lainnya.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Belanja tidak terduga diproyeksikan bertambah sebesar Rp1.000.000.000,- menjadi sebesar Rp5.000.000.000,- dari sebelumnya yang diproyeksikan sebesar Rp4.000.000.000,-. Kemudian belanja transfer diproyeksikan berkurang sebesar Rp1.700.384.700,- menjadi sebesar Rp347.207.099.164,- dari sebelumnya yang diproyeksikan sebesar Rp348.907.483.864,- yang terdiri dari belanja bagi hasil dan belanja bantuan keuangan.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_3_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_3_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!4\" data-google-query-id=\"CL-K4OKasvICFUbAlgodlxcHkw\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_3\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_3\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=1662155862&amp;pi=t.aa~a.3515774781~i.17~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F08%2Fpemkab-paluta-sampaikan-nota-penjelasan.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002377799&amp;bpp=1&amp;bdt=511&amp;idt=1&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0%2C763x280%2C763x280&amp;nras=4&amp;correlator=2658434691275&amp;frm=20&amp;pv=1&amp;ga_vid=377995148.1629002378&amp;ga_sid=1629002378&amp;ga_hid=2142754892&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=2478&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=0&amp;eid=20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=3115262451407089&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3F%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C0%2C0%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=4&amp;uci=a!4&amp;btvi=3&amp;fsb=1&amp;xpc=THznSZEJic&amp;p=https%3A//www.daltonews.com&amp;dtd=3975\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Dalam nota penjelasan tersebut juga disebutkan bahwa pembiayaan muncul akibat penerapan surplus/defisit anggaran, perubahan kebijakan pendapatan pada tahun anggaran 2021 diproyeksikan sebesar Rp1.127.711.220.102,- sedangkan perubahan kebijakan belanja daerah tahun anggaran 2021 diproyeksikan sebesar Rp1.389.574.396.901,- sehingga terjadi defisit sebesar Rp261.863.176.799,- agar mencapai anggaran yang berimbang, maka defisit akan ditutupi dari pembiayaan netto sebesar Rp261.863.176.799,- yang diperoleh dari selisih perhitungan antara penerimaan pembiayaan dengan pengeluaran pembiayaan dengan rincian perubahan kebijakan penerimaan pembiayaan diproyeksikan berkurang sebesar Rp173.690.885.227,- menjadi sebesar Rp264.828.114.773,- dari sebelumnya yang diproyeksikan sebesar Rp438.519.000.000,-.&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Dan untuk perubahan kebijakan pengeluaran pembiayaan diproyeksikan berkurang sebesar Rp1.750.539.973,- menjadi sebesar Rp2.964.937.974,- dari sebelumnya yang diproyeksikan sebesar Rp4.715.477.946,-.<br />\r\nSelanjutnya, dalam rangka pencapaian visi &lsquo;mewujudkan Paluta yang beriman, cerdas, maju dan beradat&rsquo;, Pemkab Paluta telah menetapkan tema pembangunan yang dirumuskan dalam perubahan rencana kerja Pemkab Paluta tahun 2021 yaitu &lsquo;Paluta yang berdaya saing&rsquo; yang dimaksudkan Pemkab Paluta tetap memperhatikan kerangka ekonomi makro yang meliputi pertumbuhan ekonomi, gini ratio, inflasi, tingkat pengangguran, kemiskinan serta arah kebijakan keuangan daerah.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_4_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_4_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!5\" data-google-query-id=\"COS59-KasvICFZHBFgUd4kcIiQ\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_4\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_4\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=1522065704&amp;pi=t.aa~a.3515774781~i.19~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F08%2Fpemkab-paluta-sampaikan-nota-penjelasan.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002377802&amp;bpp=1&amp;bdt=514&amp;idt=1&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0%2C763x280%2C763x280%2C763x280%2C366x250&amp;nras=6&amp;correlator=2658434691275&amp;frm=20&amp;pv=1&amp;ga_vid=377995148.1629002378&amp;ga_sid=1629002378&amp;ga_hid=2142754892&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=2832&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=0&amp;eid=20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=3115262451407089&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3F%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=5&amp;uci=a!5&amp;btvi=5&amp;fsb=1&amp;xpc=XadyRcYYZV&amp;p=https%3A//www.daltonews.com&amp;dtd=4318\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Dengan tema tersebut maka prioritas pembangunan dilakukan pada beberapa aspek kehidupan masyarakat yang diharapkan mampu meningkatkan daya saing masyarakat pada beberapa aspek yakni :<br />\r\n1. Pemerataan pendistribusian tenaga pendidik dan kependidikan,<br />\r\n2. Peningkatan kualitas manajemen pendidikan,<br />\r\n3. Peningkatan peluang dan kesempatan kerja terdidik dan terampil,<br />\r\n4. Peningkatan kualitas kompetensi tenaga kerja,<br />\r\n5. Pengembangan pengelolaan daerah destinasi wisata,<br />\r\n6. Peningkatan pemberdayaan koperasi dan UMKM,</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Dengan masih adanya pandemi Covid-19 yang sangat berdampak bagi kabupaten Paluta, maka kebijakan daerah menambahkan sasaran dan prioritas terhadap pencegahan dan penanggulangan penyebaran Covid-19 sebagaimana Permendagri nomor 64 tahun 2020 tentang pedoman penyusunan anggaran pendapatan dan belanja daerah tahun anggaran 2021 yaitu pengalokasian anggaran yang memadai untuk penanganan pandemi Covid-19 dengan prioritas antara lain :<br />\r\n1. Penanganan kesehatan dan hal lain terkait kesehatan,<br />\r\n2. Penanganan dampak ekonomi terutama menjaga<br />\r\nagar dunia usaha masing-masing daerah tetap hidup,<br />\r\n3. Pengadaan jaring pengaman sosial (social safety net).<br />\r\n&ldquo;Besar harapan kami rancangan kebijakan KUA dan PPAS Pemkab Paluta tahun anggaran 2021 dapat dibahas dan disepakati berdasarkan hasil rancangan perubahan KUA dan PPAS,&rdquo; harapnya.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Kemudian, Wakil Bupati Paluta Hariro Harahap menyerahkan Nota penjelasan rancangan perubahan KUA dan PPAS itu yang diterima pimpinan DPRD Paluta Basri Harahap didampingi Abdul Ghafur Simanjuntak yang kemudian diserahkan kepada pimpinan badan anggaran untuk selanjutnya dibahas.(Ar)</p>\r\n', 'Minggu', '2021-08-15', '11:40:34', '47DSC02247.JPG', 1, ''),
(158, 2, 'admin', 'Bupati Paluta Ikuti Peringatan HAN 2021 Secara Virtual', 'bupati-paluta-ikuti-peringatan-han-2021-secara-virtual', '<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Bupati Padang Lawas Utara (Paluta) Andar Amin Harahap mengikuti kegiatan peringatan Hari Anak Nasional tahun 2021 yang digelar secara virtual di aula kantor Bupati Paluta, Jumat (23/07/2021).</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Dalam kegiatan video conference yang diikuti oleh seluruh kepala daerah di Indonesia dengan agenda mendengarkan pidato dari presiden RI Joko Widodo serta Menteri Pemberdayaan Perempuan dan Perlindungan Anak (PPPA) I Gusti Ayu Bintang Darmawati , turut hadir Sekretaris Daerah Kabupaten Paluta Burhan Harahap, Kepala Dinas Pemberdayaan Perempuan, Perlindungan Anak, Pengendalian Penduduk dan Keluarga Berencana (P3A dan P2KB) kabupaten Paluta Hasbullah Harahap, anggota forum anak kabupaten Paluta beserta undangan lainnya.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_1_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_1_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!2\" data-google-query-id=\"CL-guo-bsvICFY3HuwgdmKEAhQ\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_1\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_1\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=637841245&amp;pi=t.aa~a.3515774781~i.7~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F07%2Fbupati-paluta-ikuti-peringatan-han-2021.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002475416&amp;bpp=3&amp;bdt=354&amp;idt=-M&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0&amp;nras=2&amp;correlator=3419243721032&amp;frm=20&amp;pv=1&amp;ga_vid=1344991103.1629002475&amp;ga_sid=1629002475&amp;ga_hid=493187721&amp;ga_fc=0&amp;u_tz=420&amp;u_his=7&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=1193&amp;biw=1519&amp;bih=664&amp;scr_x=0&amp;scr_y=0&amp;eid=44739547%2C20211866%2C21065724%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=4003489542759952&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3Fupdated-max%3D2021-08-01T15%253A11%253A00%252B07%253A00%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C664&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;btvi=1&amp;fsb=1&amp;xpc=kHsZySzRB1&amp;p=https%3A//www.daltonews.com&amp;dtd=12\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Presiden RI Joko Widodo dalam arahannya menyampaikan pesan agar seluruh anak di Indonesia tetap semangat belajar dari rumah di tengah pandemi Covid-19 ini.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ia berpesan agar anak-anak Indonesia yang merupakan masa depan bangsa agar berdoa dan berperan untuk memutus mata rantai penyebaran Covid-19 agar bangsa Indonesia dapat melalui situasi pandemi dan keadaan bisa normal kembali.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Sementara itu, Menteri Pemberdayaan Perempuan dan Perlindungan Anak (PPPA) I Gusti Ayu Bintang Darmawati juga berpesan agar pada masa pandemi ini, para orangtua dapat terus mendampingi dan memotivasi anak agar tetap semangat, kreatif, dan inovatif walaupun di rumah.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ia juga berharap seluruh pihak pemangku jabatan maupun orangtua untuk terus mengedukasikan disiplin protokol kesehatan&nbsp; kepada anak-anak dalam momentum peringatan Hari Anak Nasional 2021.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Terpisah, Kepala Dinas P3A dan P2KB Hasbullah Harahap menyebutkan bahwa peringatan HAN tahun 2021 digelar secara virtual dikarenakan adanya Pandemi Covid-19 yang melanda.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_2_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_2_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!3\" data-google-query-id=\"CIf8uo-bsvICFXGK_QcdcCoGFA\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_2\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_2\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=3006231114&amp;pi=t.aa~a.3515774781~i.12~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F07%2Fbupati-paluta-ikuti-peringatan-han-2021.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002475416&amp;bpp=1&amp;bdt=354&amp;idt=-M&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0%2C763x280&amp;nras=3&amp;correlator=3419243721032&amp;frm=20&amp;pv=1&amp;ga_vid=1344991103.1629002475&amp;ga_sid=1629002475&amp;ga_hid=493187721&amp;ga_fc=0&amp;u_tz=420&amp;u_his=7&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=1806&amp;biw=1519&amp;bih=664&amp;scr_x=0&amp;scr_y=0&amp;eid=44739547%2C20211866%2C21065724%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=4003489542759952&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3Fupdated-max%3D2021-08-01T15%253A11%253A00%252B07%253A00%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C664&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;btvi=2&amp;fsb=1&amp;xpc=64co2CdCMY&amp;p=https%3A//www.daltonews.com&amp;dtd=17\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&ldquo;Tidak ada rangkaian kegiatan atau perayaan yang dilaksanakan untuk tahun ini karena adanya Pandemi Covid-19,&rdquo; ujarnya.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Ia mengatakan, tahun ini peringatan HAN mengangkat tema &lsquo;Anak Terlindungi, Indonesia Maju&rsquo; dengan Sub tema atau tagline &lsquo;Anak Peduli Dimasa Pandemi&rsquo; dimaksudkan sebagai upaya untuk membangun motivasi bahwa pandemi Covid-19 tidak menjadi penghalang bagi anak-anak untuk semangat belajar, berkreasi, inovatif dan pemerintah tetap menunjukkan kepedulian dalam upaya memberikan perlindungan anak agar bisa tumbuh dan berkembang secara optimal.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Dirinya berharap, peringatan HAN 2021 juga mengingatkan orangtua untuk terus melindungi, mendampingi, dan membimbing anak-anak agar bisa tumbuh sebagai sosok yang sehat, cerdas, berakhlak mulia, dan cinta Tanah Air.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Pantauan, kegiatan yang dimulai sekitar pukul 10.00 Wib dan berakhir sekitar pukul 12.00 Wib dirangkai dengan dialog dan ramah tamah antara Bupati Paluta Andar Amin Harahap dengan peserta dari Forum Anak Kabupaten Paluta dan dilaksanakan dengan tetap menerapkan protokol kesehatan.(Ar/red)</p>\r\n', 'Minggu', '2021-08-15', '11:42:15', '70DSC02015_2.JPG', 1, '');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(159, 2, 'admin', 'Bantuan Beras PPKM Untuk Peserta PKH di Paluta Sudah Mulai Disalurkan', 'bantuan-beras-ppkm-untuk-peserta-pkh-di-paluta-sudah-mulai-disalurkan', '<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Bantuan beras Pemberlakukan Pembatasan Kegiatan Masyarakat untuk warga penerima Program Keluarga Harapan (PKH) di kabupaten Padang Lawas Utara (Paluta) sudah mulai disalurkan, Jumat (30/07/2021).</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Diketahui, bantuan beras yang merupakan program pemerintah melalui Kementerian Sosial atas pelaksanaan PPKM di daerah kabupaten Paluta diberikan kepada penerima manfaat Program Keluarga Harapan (PKH) dan Bantuan Sosial Tunai (BST) dengan total berat 10 kilogram beras.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_1_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_1_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!2\" data-google-query-id=\"CN_frZCbsvICFY8IiwodpEgBdQ\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_1\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_1\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=637841245&amp;pi=t.aa~a.3515774781~i.4~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F07%2Fbantuan-beras-ppkm-untuk-peserta-pkh-di.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002467396&amp;bpp=2&amp;bdt=516&amp;idt=2&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0&amp;nras=2&amp;correlator=4058548553416&amp;frm=20&amp;pv=1&amp;ga_vid=1289887418.1629002467&amp;ga_sid=1629002467&amp;ga_hid=157875098&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=1171&amp;biw=1519&amp;bih=664&amp;scr_x=0&amp;scr_y=0&amp;eid=20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=4054774185785733&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3Fupdated-max%3D2021-08-01T15%253A11%253A00%252B07%253A00%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C0%2C0%2C1536%2C664&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;btvi=1&amp;fsb=1&amp;xpc=TGqZBDcrwV&amp;p=https%3A//www.daltonews.com&amp;dtd=9888\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Kepala Dinas Sosial Kabupaten Paluta Ongku B Harahap melalui Kabid Pemberdayaan Sosial dan Penanganan Fakir Miskin Amrin Musaddat Nasution menyebutkan bahwa sebelumnya Bupati Paluta Andar Amin Harahap sudah melakukan launching penyaluran bantuan beras untuk keluarga penerima manfaat (KPM) program BST.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&ldquo;Bantuan beras untuk KPM program BST sudah disalurkan dan saat ini masih berlangsung. Sekarang giliran bantuan beras untuk KPM PKH yang juga sudah mulai disalurkan,&rdquo; jelasnya.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Kepedulian Pemerintah bagi masyarakat penerima PKH dan BST diharapkan mampu memenuhi kebutuhan pangan sehari-hari. Melalui Pemberian beras ini, masyarakat diminta mengurangi aktivitas diluar rumah yang dipandang tidak perlu dan mendesak serta tetap mematuhi protokol kesehatan.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Senada, Koordinator PKH Kabupaten Paluta Irdan Hidayat Harahap mengatakan bahwa penyaluran bantuan beras PPKM untuk KPM PKH dimulai hari ini secara serentak di 11 kecamatan yang ada di kabupaten Paluta.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&ldquo;Hari ini penyaluran dilakukan di 11 kecamatan secara serentak. Khusus untuk kecamatan Padang Bolak, penyaluran akan kita mulai pada besok, Sabtu (31/07),&rdquo; ujar Irdan, Jumat (30/07).</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_2_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_2_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!3\" data-google-query-id=\"CN2esJCbsvICFemTdwoddBINdg\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_2\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_2\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=3006231114&amp;pi=t.aa~a.3515774781~i.9~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F07%2Fbantuan-beras-ppkm-untuk-peserta-pkh-di.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002467401&amp;bpp=1&amp;bdt=521&amp;idt=1&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0%2C763x280&amp;nras=3&amp;correlator=4058548553416&amp;frm=20&amp;pv=1&amp;ga_vid=1289887418.1629002467&amp;ga_sid=1629002467&amp;ga_hid=157875098&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=1785&amp;biw=1519&amp;bih=664&amp;scr_x=0&amp;scr_y=0&amp;eid=20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=4054774185785733&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3Fupdated-max%3D2021-08-01T15%253A11%253A00%252B07%253A00%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C0%2C0%2C1536%2C664&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;btvi=2&amp;fsb=1&amp;xpc=1rZhCNbNIy&amp;p=https%3A//www.daltonews.com&amp;dtd=9940\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Dikatakannya, sebanyak 5655 KPM PKH yang tersebar di kabupaten Paluta akan menerima bantuan beras atas pelaksanaan PPKM sesuai dengan arahan Presiden RI Jokowi melalui Kemensos di setiap daerah yang warganya terdampak PPKM.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Irdan menyebutkan, pendistribusian bantuan beras PPKM untuk peserta PKH dijadwalkan pada tanggal 30 - 31 Juli yang dipusatkan di setiap kantor camat se kabupaten Paluta.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&ldquo;Penyalurannya kita pusatkan di setiap kantor camat yang ada di wilayah kabupaten Paluta,&rdquo; tambahnya.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Pendistribusian bantuan beras PPKM PKH dilakukan oleh pihak PT. Pos Indonesia sebagai jasa penyalur dengan didampingi oleh pihak Dinas Sosial kabupaten Paluta, camat, pendamping sosial PKH dan pihak babinsa/babinkhabtimas.</p>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Sebelumnya, Bupati Paluta Andar Amin Harahap sudah melakukan launching penyaluran bantuan beras PPKM kepada penerima manfaat BST yang juga sekalian untuk penerima manfaat PKH.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_3_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_3_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!4\" data-google-query-id=\"CKzpsZCbsvICFVmXdwodDf4Mrw\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_3\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_3\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=1662155862&amp;pi=t.aa~a.3515774781~i.14~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F07%2Fbantuan-beras-ppkm-untuk-peserta-pkh-di.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002467405&amp;bpp=1&amp;bdt=525&amp;idt=1&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0%2C763x280%2C763x280&amp;nras=4&amp;correlator=4058548553416&amp;frm=20&amp;pv=1&amp;ga_vid=1289887418.1629002467&amp;ga_sid=1629002467&amp;ga_hid=157875098&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=2378&amp;biw=1519&amp;bih=664&amp;scr_x=0&amp;scr_y=0&amp;eid=20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=4054774185785733&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3Fupdated-max%3D2021-08-01T15%253A11%253A00%252B07%253A00%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C0%2C0%2C1536%2C664&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=4&amp;uci=a!4&amp;btvi=3&amp;fsb=1&amp;xpc=QvaUYoi3t0&amp;p=https%3A//www.daltonews.com&amp;dtd=9969\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Sesuai data dari pihak Dinas Sosial kabupaten Paluta, penerima bantuan beras PPKM dari peserta BST sebanyak 7881 KPM dan dari peserta PKH sebanyak 5655 KPM sehingga total penerima bantuan beras PPKM di kabupaten Paluta sebanyak 14.536 penerima manfaat.(Ar/red).</p>\r\n', 'Minggu', '2021-08-15', '11:43:13', '2IMG-20210730-WA0004_2.jpg', 1, ''),
(160, 2, 'admin', 'Bupati Paluta Serahkan Bantuan Beras PPKM Kepada Masyarakat', 'bupati-paluta-serahkan-bantuan-beras-ppkm-kepada-masyarakat', '<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Sebagai wujud kehadiran pemerintah daerah ditengah masyarakat pada masa Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM), Bupati Padang Lawas Utara (Paluta) Andar Amin Harahap didampingi Sekdakab Paluta Burhan Harahap, Wakapolres Tapsel Kompol Rahman Takdir Harahap, Kepala Dinas Sosial Paluta Ongku B Harahap, Asisten I Setdakab Paluta Syarifuddin Harahap, Danramil 05/PB, Kapolsek Padang Bolak melaunching penyerahan simbolis Bantuan Beras PPKM untuk warga kabupaten Paluta di aula kantor Bupati Paluta, Selasa (27/07/2021).</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Penyerahan BB PPKM tersebut dilakukan secara sederhana dan menetapkan protokol kesehatan. Usai menyerahkan bantuan secara simbolis, Bupati Paluta Andar Amin Harahap berpesan agar bantuan ini dapat dimanfaatkan dengan baik.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_1_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_1_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!2\" data-google-query-id=\"CLK2-pCbsvICFbfdEQgd6AgJIA\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_1\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_1\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=637841245&amp;pi=t.aa~a.3515774781~i.7~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F07%2Fbupati-paluta-serahkan-bantuan-beras.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002474316&amp;bpp=4&amp;bdt=415&amp;idt=4&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0&amp;nras=2&amp;correlator=2558514154664&amp;frm=20&amp;pv=1&amp;ga_vid=740285549.1629002474&amp;ga_sid=1629002474&amp;ga_hid=1986324102&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=1266&amp;biw=1519&amp;bih=664&amp;scr_x=0&amp;scr_y=0&amp;eid=42530672%2C20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=4286639014298372&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3Fupdated-max%3D2021-08-01T15%253A11%253A00%252B07%253A00%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C0%2C0%2C1536%2C664&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;btvi=1&amp;fsb=1&amp;xpc=WHTmyCcszS&amp;p=https%3A//www.daltonews.com&amp;dtd=4235\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&ldquo;Semoga bantuan ini bermanfaat dan dapat meringankan beban yang dialami bapak dan ibu saat ini,&rdquo; ujarnya singkat sebelum meninggalkan tempat.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Terpisah, Kadis Sosial Ongku B Harahap melalui Kabid Pemberdayaam sosial dan penanganan fakir miskin Amrin Musaddat Nasution didamping koordinator BSP Indra Muda Harahap menyebutkan bahwa BB PPKM yang diserahkan sebanyak 10 kilogram beras untuk setiap Keluarga Penerima Manfaat (KPM).</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Sedangkan untuk data jumlah penerima BB PPKM merupakan masyarakat penerima Bantuan Sosial Tunai (BST) yang bersumber dari APBN dengan jumlah sebanyak 7881 KPM di seluruh wilayah Kabupaten Paluta.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&ldquo;Ada 5 titik kantor pos sebagai pusat penyerahan bantuan untuk wilayah kabupaten Paluta antara lain kantor pos Gunungtua, Sipiongot, Sosopan, Binanga dan Pargarutan,&rdquo; terangnya.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Tambahnya, penyerahan BB PPKM yang dilakukan secara bersamaan dengan penyerahan BST dijadwalkan dari tanggal 27-30 Juli 2021 nanti.</p>\r\n\r\n<div class=\"google-auto-placed ap_container\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; width: 763.325px; height: auto; clear: both; text-align: center;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4987218574847900\" data-ad-format=\"auto\" data-ad-status=\"unfilled\" data-adsbygoogle-status=\"done\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; margin: auto; height: 0px;\"><ins aria-label=\"Advertisement\" id=\"aswift_2_expand\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: inline-table; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px;\" tabindex=\"0\" title=\"Advertisement\"><ins id=\"aswift_2_anchor\" style=\"padding: 0px; border: none; outline: 0px; vertical-align: baseline; background: 0px 0px transparent; text-decoration-line: none; display: block; height: 0px; margin: 0px; position: relative; visibility: visible; width: 763px; overflow: hidden; opacity: 0;\"><iframe allow=\"attribution-reporting\" allowfullscreen=\"true\" allowtransparency=\"true\" data-google-container-id=\"a!3\" data-google-query-id=\"CODh_JCbsvICFZJy4Aodh34BjQ\" data-load-complete=\"true\" frameborder=\"0\" height=\"0\" hspace=\"0\" id=\"aswift_2\" marginheight=\"0\" marginwidth=\"0\" name=\"aswift_2\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4987218574847900&amp;output=html&amp;h=280&amp;adk=2148545113&amp;adf=3006231114&amp;pi=t.aa~a.3515774781~i.17~rp.4&amp;w=763&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1628865118&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=6710880725&amp;psa=1&amp;ad_type=text_image&amp;format=763x280&amp;url=https%3A%2F%2Fwww.daltonews.com%2F2021%2F07%2Fbupati-paluta-serahkan-bantuan-beras.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=191&amp;rw=763&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkyLjAuNDUxNS4xMzEiLFtdLG51bGwsbnVsbCxudWxsXQ..&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hdHRlc3RhdGlvbi5hbmRyb2lkLmNvbSIsInN0YXRlIjo3fV0.&amp;dt=1629002474323&amp;bpp=1&amp;bdt=421&amp;idt=1&amp;shv=r20210809&amp;mjsv=m202108100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D320dce405a10bb7b-223a8c7d80ca000e%3AT%3D1626955472%3ART%3D1626955472%3AS%3DALNI_MbuURtgL_pNnugLIhrK6eSlX_pBPw&amp;prev_fmts=0x0%2C763x280&amp;nras=3&amp;correlator=2558514154664&amp;frm=20&amp;pv=1&amp;ga_vid=740285549.1629002474&amp;ga_sid=1629002474&amp;ga_hid=1986324102&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=180&amp;ady=1859&amp;biw=1519&amp;bih=664&amp;scr_x=0&amp;scr_y=0&amp;eid=42530672%2C20211866%2C21067496%2C31062297%2C31062165&amp;oid=3&amp;pvsid=4286639014298372&amp;pem=497&amp;ref=https%3A%2F%2Fwww.daltonews.com%2Fsearch%2Flabel%2FPadang%2520Lawas%2520Utara%3Fupdated-max%3D2021-08-01T15%253A11%253A00%252B07%253A00%26max-results%3D5&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C0%2C0%2C1536%2C664&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;btvi=2&amp;fsb=1&amp;xpc=zU4x0Qb0qp&amp;p=https%3A//www.daltonews.com&amp;dtd=4279\" style=\"padding: 0px; border-width: 0px; border-style: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 763px; height: 0px;\" vspace=\"0\" width=\"763\"></iframe></ins></ins></ins></div>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Untuk penyaluran BB PPKM ini, pihak Dinas Sosial kabupaten Paluta bersama pihak kepolisian akan terus melakukan monitoring dan peninjauan hingga bantuan tersalur dengan baik dan tepat sasaran.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Senada, Koordinator PKH Kabupaten Paluta Irdan Hidayat Harahap mengatakan, selain dari KPM penerima BST, anggota KPM dari Program Keluarga Harapan (PKH) kabupaten Paluta juga akan menerima BB PPKM ini.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Katanya, untuk KPM PKH yang akan menerima BB PPKM ini sebanyak 5655 KPM diseluruh wilayah kabupaten Paluta.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">&ldquo;Saat ini kita masih melakukan koordinasi untuk penentuan jadwal penyerahan bantuan beras PPKM kepada anggota KPM PKH daerah kabupaten Paluta,&rdquo; ujarnya.</p>\r\n\r\n<p dir=\"ltr\" style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(101, 101, 101); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Sementara itu salah satu warga penerima BB PPKM Kabupaten Paluta B Harahap mengucapkan terimakasih kepada Bupati Paluta dan pemerintah atas perhatiannya kepada masyarakat di masa PPKM dan dirinya mengajak semua warga untuk taat dan patuh pada peraturan pemerintah guna mempercepat pemutusan mata rantai Covid-19 ditengah masyarakat dengan mematuhi protokol kesehatan.(Ar/red)</p>\r\n', 'Minggu', '2021-08-15', '11:44:19', '68DSC02060.jpg', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_op` varchar(100) NOT NULL,
  `nama_desa` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `desa`
--

INSERT INTO `desa` (`id_desa`, `username`, `password`, `nama_op`, `nama_desa`) VALUES
(1, 'operator1', '37832cda757792aef82ce5e21f542006', 'INDRAWAN', 'KALIREJO'),
(2, 'operator2', '9e64fc8a2ad3331c44a846c3a2b4bb14', 'OPERATOR HARGOWILIS', 'HARGOWILIS'),
(3, 'operator3', '37f52de67b0dc8da0b07aa1fdaf60753', 'OPERATOR HARGOTIRTO', 'HARGOTIRTO'),
(4, 'operator4', '6c4eee5eee8ee1b39c01d773f2aad760', 'OPERATOR HARGOREJO', 'HARGOREJO'),
(5, 'operator5', '7cd224d53b244beb8f458d6370a799b2', 'OPERATOR HARGOMULYO', 'HARGOMULYO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(12, 'PERBUP NOMOR 4 TAHUN 2016 TENTANG ALOKASI KEBUTUHAN HET PUPUK BERSUBSIDI DI BIDANG PERTANIAN', '10PERBUP NOMOR 4 TAHUN 2016 TENTANG ALOKASI KEBUTUHAN HET PUPUK BERSUBSIDI DI BIDANG PERTANIAN.pdf', '2021-12-04', 0),
(13, 'PERBUP NOMOR 10 TAHUN 2016 TENTANG JUKNIS RASKIN 2016', '22PERBUP NOMOR 10 TAHUN 2016 TENTANG JUKNIS RASKIN 2016.pdf', '2021-12-04', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `jdl_gallery`, `keterangan`, `gallery_seo`, `gbr_gallery`) VALUES
(63, 20, '', '', '', '67pemkabpaluta_262870661_285535473501447_8351291485529449640_n.jpg'),
(61, 20, '', '', '', '13pemkabpaluta_262886581_599756377999010_2544896327774205091_n.jpg'),
(62, 20, '', '', '', '15pemkabpaluta_263022997_1237746650056571_3991298357040055686_n.jpg'),
(64, 20, '', '', '', '11pemkabpaluta_262811631_429076498933993_354862042812118458_n.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `judul_seo` varchar(200) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`) VALUES
(9, 'Tujuan TPAKD', 'tujuan-tpakd', '<p><span style=\"color: rgb(87, 79, 99); font-family: Muli, sans-serif; font-size: 15px;\">TPAKD dibentuk dengan tujuan sebagai berikut: </span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color: rgb(87, 79, 99); font-family: Muli, sans-serif; font-size: 15px;\">Mendorong ketersediaan akses keuangan yang seluas-luasnya kepada masyarakat dalam rangka mendukung perekonomian daerah. </span></li>\r\n	<li><span style=\"color: rgb(87, 79, 99); font-family: Muli, sans-serif; font-size: 15px;\">Mencari terobosan dalam rangka membuka akses keuangan yang lebih produktif bagi masyarakat di daerah. </span></li>\r\n	<li><span style=\"color: rgb(87, 79, 99); font-family: Muli, sans-serif; font-size: 15px;\">Mendorong LJK untuk meningkatkan peran serta dalam pembangunan ekonomi daerah. </span></li>\r\n	<li><span style=\"color: rgb(87, 79, 99); font-family: Muli, sans-serif; font-size: 15px;\">Menggali potensi ekonomi daerah yang dapat dikembangkan dengan menggunakan produk dan layanan jasa keuangan. </span></li>\r\n	<li><span style=\"color: rgb(87, 79, 99); font-family: Muli, sans-serif; font-size: 15px;\">Mendorong optimalisasi potensi sumber dana di daerah dalam rangka memperluas penyediaan pendanaan produktif antara lain untuk mengembangkan umkm, usaha rintisan (start up business) dan membiayai pembangunan sektor prioritas.</span></li>\r\n</ul>\r\n', '2022-01-02', ''),
(10, 'Dasar Pembentukan TPAKD', 'dasar-pembentukan-tpakd', '<p>Dalam pertemuan Presiden RI dengan perwakilan industri jasa keuangan yang diinisiasi oleh OJK serta dihadiri oleh Ketua dan Pimpinan Lembaga Tinggi Negara, Gubernur Bank Indonesia dan para Menteri Kabinet Kerja termasuk seluruh Kepala Daerah tanggal 15 Januari 2016 di Istana Negara, salah satu&nbsp;issue&nbsp;yang diangkat adalah pentingnya percepatan akses keuangan daerah dalam mendorong perekonomian daerah. Terkait hal tersebut, dalam pertemuan dimaksud diamanatkan adanya pembentukan Tim Percepatan Akses Keuangan Daerah (TPAKD) bekerjasama dengan Kementerian Dalam Negeri dan instansi/lembaga terkait lainnya. Sebagai tindak lanjutnya, telah dikeluarkan Radiogram Menteri Dalam Negeri nomor T-900/634/Keuda tanggal 19 Februari 2016 yang isinya meminta Kepala Daerah dalam hal ini Gubernur, Bupati dan Walikota untuk membentuk TPAKD di Provinsi/Kabupaten/Kota.</p>\r\n', '2022-01-02', ''),
(11, 'Latar Belakang Pembentukan TPAKD', 'latar-belakang-pembentukan-tpakd', '<ul>\r\n	<li><span style=\"color: rgb(87, 79, 99); font-family: Muli, sans-serif; font-size: 15px;\">Inklusi Keuangan telah menjadi perhatian global.&nbsp;</span><span style=\"color: rgb(87, 79, 99); font-family: Muli, sans-serif; font-size: 15px;\">Beberapa negara tidak terkecuali Indonesia berupaya melaksanakan inklusi keuangan sebagai suatu bagian dari program atau kebijakan nasional. Akses terhadap produk dan layanan jasa keuangan&nbsp; merupakan hak dasar bagi seluruh masyarakat dan menjadi sangat penting dalam meningkatkan taraf hidup masyarakat. Untuk itu pembangunan perekonomian yang berpihak kepada masyarakat&nbsp; menengah kebawah sangat diperlukan agar mereka dapat memperoleh akses terhadap produk dan jasa keuangan. </span></li>\r\n	<li><span style=\"color: rgb(87, 79, 99); font-family: Muli, sans-serif; font-size: 15px;\">Target Inklusi keuangan akhir tahun 2019 sebesar 75%.&nbsp; Berdasarkan survey OJK tahun 2016 indeks literasi keuangan sebesar 29,7% dan indeks inklusi keuangan sebesar 67,8%. Dapat disimpulkan bahwa banyak masyarakat Indonesia yang telah menggunakan produk/layanan jasa keuangan (inklusi keuangan) namun belum diiringi dengan pemahaman yang baik seperti hak dan kewajiban, manfaat serta resiko dari produk/layanan jasa keuangan (literasi keuangan). </span></li>\r\n	<li><span style=\"color: rgb(87, 79, 99); font-family: Muli, sans-serif; font-size: 15px;\">Dalam konteks upaya percepatan akses keuangan di daerah maka dibentuklan Tim Percepatan Akses Keuangan Daerah (TPAKD) sebagai forum koordinasi antar instansi dan stakeholder lain yang terkait untuk meningkatkan percepatan akses keuangan di daerah dan mendorong pertumbuhan ekonomi daerah serta mewujudkan masyarakat yang lebih sejahtera.</span></li>\r\n</ul>\r\n', '2022-01-02', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_pasar`
--

CREATE TABLE `harga_pasar` (
  `id` int(11) NOT NULL,
  `id_pasar` int(11) NOT NULL,
  `id_komoditas` int(11) NOT NULL,
  `harga` varchar(99) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `harga_pasar`
--

INSERT INTO `harga_pasar` (`id`, `id_pasar`, `id_komoditas`, `harga`, `tanggal`) VALUES
(10, 2, 3, '23500', '2021-08-13'),
(11, 2, 3, '25000', '2021-08-14'),
(12, 1, 31, '10000', '2021-11-28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama_pengirim` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama_pengirim`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(13, 'Ahmad Bukhori', 'tpakdpaluta@gmail.com', 'Permohonan Informasi', 'Saya ingin meminta data terkait harga pangan bulan Oktober 2021', '2021-12-04'),
(14, 'Jhonni Saputra Siregar', 'jhonnisaputra@gmail.com', 'Coba', 'vfadV', '2022-01-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `alamat_website` varchar(100) NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `tube` varchar(100) NOT NULL,
  `ig` varchar(100) NOT NULL,
  `twitter_widget` text NOT NULL,
  `wtemp` text NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `fopim` varchar(100) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_pemilik`, `nama_website`, `alamat_website`, `meta_deskripsi`, `meta_keyword`, `email`, `facebook`, `twitter`, `fb`, `tube`, `ig`, `twitter_widget`, `wtemp`, `favicon`, `logo`, `fopim`, `telpon`, `alamat`) VALUES
(1, 'TPAKD Kabupaten Padang Lawas Utara', 'TPAKD Kabupaten Padang Lawas Utara', 'https://tpakd.infotabagsel.com', 'TPAKD Kabupaten Padang Lawas Utara', 'TPAKD Kabupaten Padang Lawas Utara', 'info@namadomain', 'https://facebook.com/pemkabpaluta', 'http://twitter.com', 'http://facebook.com', 'http://youtube.com', 'http://intagram.com', '<a class=\"twitter-timeline\" data-height=\"500\" href=\"https://twitter.com/pemkabpaluta?ref_src=twsrc%5Etfw\">Sekedar Contoh Widget</a> <script async src=\"https://platform.twitter.com/widgets.js\" charset=\"utf-8\"></script> ', 'biru', 'papicon.png', 'tpakd.png', 'bupati-wakilbupati.png', ' (0376) 000000', 'Alamat Kantor/Dinas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `ganti`) VALUES
(4, 'sex', 's**'),
(2, 'bajingan', 'b*******'),
(3, 'bangsat', 'b******');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`, `aktif`) VALUES
(1, 'Artikel', 'artikel', 'Y'),
(2, 'Berita', 'berita', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(12, 71, 'Wisnu', 'wisnu.wordpress.com', 'pertamax', '2009-02-02', '08:10:23', 'Y'),
(13, 71, 'Adrian', 'adrian.blogspot.com', 'CR 7 emang idola gua, melesat terus ya prestasinya.', '2009-02-02', '09:06:01', 'Y'),
(15, 79, 'Armen', 'detik.com', 'ahmadinejad emang idolaku', '2009-02-03', '10:05:20', 'Y'),
(17, 74, 'Lukman', 'hakim.com', 'apakah browser google secanggih search enginenya?', '2009-02-21', '10:12:23', 'Y'),
(34, 92, 'Rudi', 'bukulokomedia.com', ' Kalau  tentang  gue,  kapan  dibuat  filmnya  ya?   ', '2009-10-28', '21:21:21', 'Y'),
(22, 77, 'Raihan', 'bukulokomedia.com', 'mas .. tolong kirimin source code proyek lokomedia&nbsp; ke email saya di raihan@gmail.com', '2009-08-25', '16:30:00', 'Y'),
(23, 77, 'Wawan', 'bukulokomedia.com', 'woi .. kunjungin dong website saya di http://bukulokomedia.com, jangan lupa kasih komen dan sarannya ya.', '2009-08-25', '16:31:50', 'Y'),
(36, 93, 'Lukman', 'google.com', 'tes  kata-kata  jelek  sex   ', '2009-11-04', '10:04:26', 'Y'),
(65, 85, 'hilman', 'antonhilman.com', ' emang  sih,  windows  7  lebih  cepat  dibandingkan  vista,  tapi  masih  banyak  bug  bung.   ', '2010-01-15', '04:16:25', 'Y'),
(66, 78, 'ronaldinho', 'ronaldino.com', ' ronaldo  pantas  mendapatkannya  tahun  ini  dan  kayaknya  tahun  depan  masih  menjadi  miliknya.   ', '2010-01-15', '04:18:08', 'Y'),
(67, 99, 'lukman', 'bukulokomedia.com', ' tes   ', '2010-02-11', '02:42:46', 'Y'),
(69, 99, 'fathan', 'bukulokomedia.com', 'keduax', '2010-02-15', '07:44:12', 'Y'),
(70, 99, 'Rianto', 'bukulokomedia.com', ' kok  nggak  ada  yang  pertamax  ..  langsung  keduax  sih.   ', '2010-05-16', '11:33:26', 'Y'),
(72, 99, 'lokomedia', 'bukulokomedia.com', ' test  paging  komentar   ', '2012-01-03', '17:50:14', 'Y'),
(73, 99, 'husada', 'bukulokomedia.com', ' perbaikan  paging  halaman  komentar   ', '2012-01-03', '17:53:03', 'Y'),
(74, 99, 'hendra', 'bukulokomedia.com', ' iya  kemarin  sudah  saya  coba  yang  CMS  Lokomedia  versi  1.5,  paging  komentarnya  masih  error.   ', '2012-01-03', '17:53:59', 'Y'),
(75, 99, 'lukman', 'bukulokomedia.com', ' @  husada  dan  hendra:  terimakasih  atas  perbaikan  bugnya.   ', '2012-01-03', '17:54:41', 'Y'),
(76, 99, 'lokomedia', 'bukulokomedia.com', ' pada  versi  1.5.5,  bug  paging  halaman  komentar  sudah  diperbaiki.   ', '2012-01-03', '17:55:27', 'Y'),
(77, 99, 'hendra', 'bukulokomedia.com', ' paging  halaman  komentar  sudah  berjalan  dengan  baik,  thanks  lokomedia   ', '2012-01-03', '17:56:12', 'Y'),
(92, 124, 'lukman', 'bukulokomedia.com', ' tes  komentar  pakai  url  http://bukulokomedia.com   ', '2012-05-02', '11:27:28', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komoditas`
--

CREATE TABLE `komoditas` (
  `id_komoditas` int(11) NOT NULL,
  `nama_komoditas` text NOT NULL,
  `satuan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `komoditas`
--

INSERT INTO `komoditas` (`id_komoditas`, `nama_komoditas`, `satuan`) VALUES
(1, 'Beras Kuku Balam', ''),
(3, 'Beras Jongkong IR 64', ''),
(4, 'Gula Pasir', ''),
(5, 'Minyak Goreng Kemasan Bimoli', ''),
(6, 'Minyak Goreng Curah', ''),
(7, 'Tepung Terigu Segitiga Biru', ''),
(8, 'Tepung Terigu Cakra', ''),
(9, 'Tepung Terigu Kunci', ''),
(10, 'Daging Sapi Murni', ''),
(11, 'Daging Ayam Boiler', ''),
(12, 'Daging Ayam Kampung', ''),
(13, 'Telur Ayam Boiler', ''),
(14, 'Telur Ayam Kampung', ''),
(15, 'Cabe Merah Raya', ''),
(16, 'Cabe Rawit Hijau', ''),
(17, 'Bawang Merah Lokal', ''),
(18, 'Bawang Putih', ''),
(19, 'Tomat', ''),
(20, 'Susu Kental Manis Bendera', ''),
(21, 'Susu Kental Manis Indomilk', ''),
(22, 'Susu Bubuk Dancow', 'Kotak'),
(23, 'Garam Dolpin 500gr', 'Bungkus'),
(24, 'Kacang Kedelai Eks Impor', 'Kg'),
(25, 'Kacang Kedelai Lokal', 'Kg'),
(26, 'Kacang Tanah', 'Kg'),
(27, 'Kacang Hijau', 'Kg'),
(28, 'Indomie Kari Ayam', 'Bungkus'),
(29, 'Ikan Teri Nasi Super', 'Kg'),
(30, 'Ikan Gembung', 'Kg'),
(31, 'Ubi Kayu', 'Kg'),
(32, 'Jagung Pipilan Kering', 'Kg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `listslider`
--

CREATE TABLE `listslider` (
  `id_list` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `listslider`
--

INSERT INTO `listslider` (`id_list`, `nama_menu`, `keterangan`, `link`) VALUES
(1, 'Situs Terkait', 'Daftar Nama Situs Terkait', '#'),
(2, 'Download', 'Direktori File-file Download', '../semua-download.html'),
(3, 'Agenda', 'Daftar Agenda di Dinas terkait', '../arsip-agenda.html'),
(4, 'Pengumuman', 'Daftar pengumuman di Dinas terkait', '../arsip-pengumuman.html'),
(5, 'Galeri', 'Daftar foto galeri di Dinas terkait', '../arsip-foto.html');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainmenu`
--

CREATE TABLE `mainmenu` (
  `id_main` int(5) NOT NULL,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `adminmenu` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainmenu`
--

INSERT INTO `mainmenu` (`id_main`, `nama_menu`, `link`, `aktif`, `adminmenu`) VALUES
(2, 'Beranda', 'http://localhost/lokomedia', 'Y', 'N'),
(3, 'Profil', 'statis-1-profil.html', 'Y', 'N'),
(4, 'Agenda', 'semua-agenda.html', 'Y', 'N'),
(5, 'Berita', 'semua-berita.html', 'Y', 'N'),
(6, 'Download', 'semua-download.html', 'Y', 'N'),
(7, 'Galeri Foto', 'semua-album.html', 'Y', 'N'),
(8, 'Hubungi Kami', 'hubungi-kami.html', 'Y', 'N'),
(14, 'Setting Web', '', 'N', 'Y'),
(15, 'Setting Menu', '', 'N', 'Y'),
(16, 'Manajemen Berita', '', 'N', 'Y'),
(54, 'Hubungi Kami', '?module=hubungi', 'N', 'Y'),
(53, 'Interaksi', '', 'N', 'Y'),
(52, 'Media', '', 'N', 'Y'),
(59, 'Banner', '?module=banner', 'N', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_parent` int(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `link`, `id_parent`, `aktif`) VALUES
(1, 'Beranda', './', 0, 'Y'),
(22, 'Latar Belakang Pembentukan TPAKD', 'statis-11-latar-belakang-pembentukan-tpakd.html', 5, 'Y'),
(5, 'Profil TPAKD', '#!', 0, 'Y'),
(6, 'Tujuan TPAKD', 'statis-9-tujuan-tpakd.html', 5, 'Y'),
(7, 'Dasar Pembentukan TPAKD', 'statis-10-dasar-pembentukan.html', 5, 'Y'),
(18, 'Pengajuan KUR', 'https://forms.gle/WMCKwUBZGct1N46Z7', 9, 'Y'),
(9, 'KUR Online', '#', 0, 'Y'),
(10, 'Informasi', '#', 0, 'Y'),
(11, 'Berita', './kategori-2-berita.html', 10, 'Y'),
(12, 'Artikel', './kategori-1-artikel.html', 10, 'Y'),
(13, 'Agenda', './arsip-agenda.html', 10, 'Y'),
(14, 'Pengumuman', './arsip-pengumuman.html', 10, 'Y'),
(15, 'Download', './semua-download.html', 10, 'Y'),
(16, 'Gallery', './arsip-foto.html', 0, 'Y'),
(17, 'Contact Us', './hubungi-kami.html', 0, 'Y'),
(19, 'Simulasi KUR', 'https://docs.google.com/spreadsheets/d/1tlUEocVvord3Nj8aGdX5fiQEPR6GR1NK3JQTaFZmfsA/edit#gid=1971769', 9, 'Y'),
(20, 'Pengaduan', 'https://forms.gle/8EVCEiTGo1ZUbYmg6', 9, 'Y'),
(21, 'Cek Status Pengajuan', 'https://forms.gle/kiczEon8HKZRnHf79', 9, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', '?module=user', '', '', 'N', 'user', 'Y', 1, ''),
(18, 'Berita', '?module=berita', '', '', 'Y', 'user', 'Y', 6, 'semua-berita.html'),
(19, 'Banner', '?module=banner', '', '', 'Y', 'admin', 'Y', 9, ''),
(37, 'Profil', '?module=profil', '<b>Bukulokomedia.com</b> merupakan website resmi dari penerbit Lokomedia yang bermarkas di Jl. Arwana No.24 Minomartani Yogyakarta 55581. Dirintis pertama kali oleh Lukmanul Hakim pada tanggal 14 Maret 2008.<br><br>Produk unggulan dari penerbit Lokomedia adalah buku-buku serta aksesoris bertema PHP (<span style=\"font-weight: bold; font-style: italic;\">PHP: Hypertext Preprocessor</span>) yang merupakan pemrograman Internet paling handal saat ini.\r\n', 'gedungku.jpg', 'N', 'admin', 'N', 3, 'profil-kami.html'),
(10, 'Manajemen Modul', '?module=modul', '', '', 'N', 'admin', 'Y', 2, ''),
(31, 'Kategori', '?module=kategori', '', '', 'Y', 'admin', 'Y', 5, ''),
(33, 'Poling', '?module=poling', '', '', 'Y', 'admin', 'Y', 10, ''),
(34, 'Tag (Label)', '?module=tag', '', '', 'N', 'admin', 'Y', 7, ''),
(35, 'Komentar', '?module=komentar', '', '', 'Y', 'admin', 'Y', 8, ''),
(36, 'Download', '?module=download', '', '', 'Y', 'admin', 'Y', 11, 'semua-download.html'),
(40, 'Hubungi Kami', '?module=hubungi', '', '', 'Y', 'admin', 'Y', 12, 'hubungi-kami.html'),
(41, 'Agenda', ' ?module=agenda', '', '', 'Y', 'user', 'Y', 31, 'semua-agenda.html'),
(42, 'Shoutbox', '?module=shoutbox', '', '', 'Y', 'admin', 'Y', 13, ''),
(43, 'Album', '?module=album', '', '', 'N', 'admin', 'Y', 14, ''),
(44, 'Galeri Foto', '?module=galerifoto', '', '', 'Y', 'admin', 'Y', 15, ''),
(45, 'Templates', '?module=templates', '', '', 'N', 'admin', 'Y', 16, ''),
(46, 'Kata Jelek', '?module=katajelek', '', '', 'N', 'admin', 'Y', 17, ''),
(47, 'RSS', '-', '', '', 'Y', 'admin', 'N', 18, ''),
(48, 'YM', '-', '', '', 'Y', 'admin', 'N', 19, ''),
(49, 'Indeks Berita', '-', '', '', 'Y', 'admin', 'N', 20, ''),
(50, 'Kalender', '-', '', '', 'Y', 'admin', 'N', 21, ''),
(51, 'Statistik User', '-', '', '', 'Y', 'admin', 'N', 22, ''),
(52, 'Pencarian', '-', '', '', 'Y', 'admin', 'N', 23, ''),
(53, 'Berita Teratas', '-', '', '', 'Y', 'admin', 'N', 24, ''),
(54, 'Arsip Berita', '-', '', '', 'Y', 'admin', 'N', 25, ''),
(55, 'Berita Sebelumnya', '-', '', '', 'Y', 'admin', 'N', 26, ''),
(60, 'Sekilas Info', '?module=sekilasinfo', '', '', 'Y', 'admin', 'Y', 13, ''),
(57, 'Menu Utama', '?module=menuutama', '', '', 'Y', 'admin', 'Y', 28, ''),
(58, 'Sub Menu', '?module=submenu', '', '', 'Y', 'admin', 'Y', 29, ''),
(59, 'Halaman Statis', '?module=halamanstatis', '', '', 'Y', 'admin', 'Y', 30, ''),
(61, 'Identitas Website', '?module=identitas', '', '', 'N', 'admin', 'Y', 4, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasar`
--

CREATE TABLE `pasar` (
  `id_pasar` int(11) NOT NULL,
  `nama_pasar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pasar`
--

INSERT INTO `pasar` (`id_pasar`, `nama_pasar`) VALUES
(1, 'Pasar Gunungtua'),
(2, 'Pasar Pekan Selasa'),
(3, 'Pasar Sipiongot');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pbb`
--

CREATE TABLE `pbb` (
  `id_pbb` int(11) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `denda_bulan_lalu` int(11) NOT NULL,
  `pokok_bulan_lalu` int(11) NOT NULL,
  `denda_bulan_ini` int(11) NOT NULL,
  `pokok_bulan_ini` int(11) NOT NULL,
  `bulan` varchar(30) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pbb`
--

INSERT INTO `pbb` (`id_pbb`, `id_desa`, `target`, `denda_bulan_lalu`, `pokok_bulan_lalu`, `denda_bulan_ini`, `pokok_bulan_ini`, `bulan`, `tahun`) VALUES
(1, 1, 1700000, 0, 0, 200000, 800000, 'Januari', '2017'),
(2, 1, 3000000, 200000, 800000, 350000, 1200000, 'Februari', '2017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gol` varchar(30) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `id_penduduk` int(11) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `bulan` varchar(30) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `awal_L` int(11) NOT NULL,
  `awal_P` int(11) NOT NULL,
  `lahir_L` int(11) NOT NULL,
  `lahir_P` int(11) NOT NULL,
  `mati_L` int(11) NOT NULL,
  `mati_P` int(11) NOT NULL,
  `pindah_L` int(11) NOT NULL,
  `pindah_P` int(11) NOT NULL,
  `datang_L` int(11) NOT NULL,
  `datang_P` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`id_penduduk`, `id_desa`, `bulan`, `tahun`, `awal_L`, `awal_P`, `lahir_L`, `lahir_P`, `mati_L`, `mati_P`, `pindah_L`, `pindah_P`, `datang_L`, `datang_P`) VALUES
(1, 1, 'Januari', '2017', 300, 500, 3, 6, 8, 4, 0, 0, 2, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_pengumuman` text COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `rating`, `aktif`) VALUES
(2, 'Kurang', 'Jawaban', 0, 'Y'),
(3, 'Cukup', 'Jawaban', 2, 'Y'),
(4, 'Sangat Bagus', 'Jawaban', 11, 'Y'),
(8, 'Bagaimana Menurut Pendapat Anda tentang Website ini?', 'Pertanyaan', 0, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` text COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`) VALUES
(14, 'Sebanyak 263 desa dari 386 desa yang ada di Kabupaten Padang Lawas Utara (Paluta) sudah merealisasikan Bantuan Langsung Tunai (BLT) Dana Desa (DD) sebagai dampak Pandemi Corina Virus Disease 2019 (Covid-19)', '2021-08-15', ''),
(15, 'Selamat Datang di Website Tim Percepatan Akses Keuangan Daerah Kabupaten Padang Lawas Utara', '2021-12-06', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shoutbox`
--

CREATE TABLE `shoutbox` (
  `id_shoutbox` int(5) NOT NULL,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `website` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `shoutbox`
--

INSERT INTO `shoutbox` (`id_shoutbox`, `nama`, `website`, `pesan`, `tanggal`, `jam`, `aktif`) VALUES
(1, 'lukman', 'lukman.com', 'tes :-) aja ;-D ha ha ha <:D>', '2009-11-02', '00:00:00', 'Y'),
(2, 'hakim', 'hakim.com', 'tes :-) aja ;-D ha ha ha <:D>\r\ndfa\r\nfdas\r\nfdsa\r\nfdasf\r\n:-(', '2009-11-02', '00:00:00', 'Y'),
(3, 'daryono', 'bukulokomedia.com', 'ku tes lagi<br>\r\ntes :-) aja ;-D ha ha ha &lt;:D&gt;<br>\r\nkeren euy<br>\r\n:-(', '2009-11-02', '13:55:00', 'Y'),
(5, 'iin', 'uin-suka.ac.id', 'tes aja euy ;-D boi', '2009-11-03', '11:36:06', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `gmb_slider` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `gmb_slider`, `link`) VALUES
(9, '662872-slide1.jpg', '#'),
(10, '792663-slide2.jpg', '#');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('112.215.154.118', '2017-11-20', 1, '1511127492'),
('::1', '2018-01-04', 6, '1515039928'),
('::1', '2018-01-17', 2, '1516196252'),
('::1', '2018-02-25', 14, '1519542485'),
('::1', '2018-03-06', 1, '1520345571'),
('::1', '2018-04-16', 13, '1523839686'),
('::1', '2018-04-26', 2, '1524719441'),
('::1', '2018-05-03', 1, '1525337832'),
('::1', '2018-08-27', 2, '1535357619'),
('::1', '2019-03-15', 1, '1552656945'),
('::1', '2021-08-11', 4, '1628699139'),
('::1', '2021-08-12', 107, '1628745140'),
('::1', '2021-08-13', 9, '1628826375'),
('::1', '2021-08-14', 52, '1628930295'),
('::1', '2021-08-15', 57, '1629004855'),
('180.241.47.176', '2021-08-15', 19, '1629030762'),
('65.155.30.101', '2021-08-15', 1, '1629008761'),
('114.122.43.50', '2021-08-15', 1, '1629010307'),
('114.122.40.192', '2021-08-15', 1, '1629040251'),
('193.218.118.231', '2021-08-16', 1, '1629091298'),
('103.144.175.112', '2021-08-16', 1, '1629112434'),
('114.122.41.103', '2021-08-17', 1, '1629190860'),
('144.86.173.130', '2021-08-20', 1, '1629473051'),
('144.86.173.29', '2021-08-21', 1, '1629509802'),
('92.118.160.13', '2021-08-21', 1, '1629513795'),
('92.118.160.5', '2021-08-21', 1, '1629526507'),
('144.86.173.71', '2021-08-21', 1, '1629555983'),
('92.118.160.9', '2021-08-22', 1, '1629634021'),
('92.118.160.9', '2021-08-23', 1, '1629682987'),
('114.122.41.202', '2021-08-23', 1, '1629700860'),
('180.241.106.156', '2021-08-23', 3, '1629705305'),
('144.86.173.8', '2021-08-24', 1, '1629754618'),
('18.191.202.144', '2021-08-24', 1, '1629771743'),
('114.122.37.23', '2021-08-24', 1, '1629778722'),
('144.86.173.25', '2021-08-25', 1, '1629844498'),
('144.86.173.74', '2021-08-28', 1, '1630108291'),
('92.118.160.5', '2021-08-29', 1, '1630240934'),
('92.118.160.17', '2021-08-29', 1, '1630243721'),
('144.86.173.138', '2021-09-07', 1, '1631026233'),
('92.118.160.57', '2021-09-11', 1, '1631324968'),
('144.86.173.72', '2021-09-11', 2, '1631350738'),
('180.241.47.201', '2021-09-14', 2, '1631601851'),
('103.144.175.11', '2021-09-14', 3, '1631609053'),
('114.122.45.225', '2021-09-14', 2, '1631609096'),
('34.96.130.6', '2021-09-14', 1, '1631626646'),
('51.158.118.231', '2021-09-18', 1, '1631921625'),
('51.15.247.214', '2021-09-18', 1, '1631948803'),
('34.86.35.12', '2021-09-18', 1, '1631960410'),
('92.118.160.17', '2021-09-19', 1, '1632019131'),
('180.241.119.42', '2021-09-28', 1, '1632843785'),
('35.214.242.237', '2021-09-29', 3, '1632855903'),
('180.241.119.42', '2021-09-29', 1, '1632869325'),
('114.122.43.252', '2021-09-29', 1, '1632903424'),
('182.1.47.135', '2021-10-04', 1, '1633327037'),
('165.227.100.41', '2021-10-05', 1, '1633402764'),
('68.183.51.188', '2021-10-05', 1, '1633402827'),
('35.215.44.187', '2021-10-05', 1, '1633417075'),
('180.241.46.24', '2021-10-08', 1, '1633656820'),
('13.53.207.156', '2021-10-09', 1, '1633771556'),
('34.253.235.11', '2021-10-12', 1, '1634042029'),
('61.135.15.197', '2021-10-15', 1, '1634294793'),
('114.125.57.148', '2021-10-18', 1, '1634554087'),
('103.153.76.123', '2021-10-20', 1, '1634738738'),
('107.150.57.35', '2021-10-23', 1, '1634931029'),
('51.15.247.214', '2021-10-24', 1, '1635020025'),
('92.118.160.57', '2021-10-25', 1, '1635162361'),
('18.216.168.61', '2021-10-26', 1, '1635208236'),
('34.77.162.18', '2021-10-26', 1, '1635245426'),
('34.86.35.1', '2021-10-27', 1, '1635282119'),
('163.172.180.25', '2021-10-27', 1, '1635310014'),
('34.96.130.28', '2021-10-29', 1, '1635467154'),
('34.86.35.21', '2021-10-30', 1, '1635568368'),
('34.96.130.31', '2021-10-30', 1, '1635568726'),
('142.93.185.99', '2021-10-31', 1, '1635652219'),
('124.126.78.134', '2021-10-31', 1, '1635667213'),
('92.118.160.61', '2021-10-31', 1, '1635674576'),
('92.118.160.45', '2021-11-02', 2, '1635801825'),
('92.118.160.41', '2021-11-02', 1, '1635816091'),
('104.131.2.193', '2021-11-04', 1, '1636020359'),
('167.172.231.170', '2021-11-04', 1, '1636025959'),
('175.24.232.97', '2021-11-05', 1, '1636119135'),
('185.218.124.139', '2021-11-06', 1, '1636131739'),
('63.34.29.203', '2021-11-11', 1, '1636581355'),
('34.241.198.16', '2021-11-11', 1, '1636585500'),
('167.248.133.58', '2021-11-12', 4, '1636657761'),
('51.124.196.81', '2021-11-13', 4, '1636807358'),
('61.135.15.143', '2021-11-15', 1, '1636963047'),
('34.134.92.190', '2021-11-15', 1, '1636989553'),
('34.134.92.190', '2021-11-16', 1, '1637001254'),
('54.170.110.116', '2021-11-16', 1, '1637010593'),
('15.223.37.243', '2021-11-19', 1, '1637282404'),
('3.249.166.110', '2021-11-20', 1, '1637367154'),
('212.193.30.228', '2021-11-21', 1, '1637472885'),
('35.219.139.221', '2021-11-24', 3, '1637693306'),
('51.15.205.3', '2021-11-27', 1, '1637968616'),
('180.241.47.119', '2021-11-28', 16, '1638101480'),
('66.220.149.34', '2021-11-28', 2, '1638101247'),
('66.220.149.18', '2021-11-28', 1, '1638101246'),
('66.220.149.21', '2021-11-28', 1, '1638101247'),
('66.220.149.119', '2021-11-28', 1, '1638101265'),
('66.220.149.32', '2021-11-28', 1, '1638101266'),
('66.220.149.5', '2021-11-28', 1, '1638101378'),
('66.220.149.26', '2021-11-28', 1, '1638101378'),
('180.241.47.119', '2021-11-29', 4, '1638142697'),
('51.158.127.119', '2021-11-29', 1, '1638193155'),
('180.241.47.119', '2021-11-30', 8, '1638205997'),
('66.220.149.23', '2021-11-30', 3, '1638205962'),
('66.220.149.6', '2021-11-30', 1, '1638205961'),
('114.122.39.209', '2021-11-30', 9, '1638239867'),
('36.68.89.215', '2021-11-30', 1, '1638244428'),
('34.77.162.13', '2021-11-30', 1, '1638244810'),
('132.232.75.2', '2021-12-02', 2, '1638388521'),
('159.65.180.50', '2021-12-02', 1, '1638406054'),
('167.94.138.58', '2021-12-02', 2, '1638459106'),
('34.96.130.18', '2021-12-04', 1, '1638588438'),
('125.162.39.254', '2021-12-04', 61, '1638634443'),
('180.241.47.225', '2021-12-05', 3, '1638710249'),
('180.241.47.225', '2021-12-06', 1, '1638726255'),
('92.118.160.41', '2021-12-06', 1, '1638803381'),
('92.118.160.13', '2021-12-07', 1, '1638816586'),
('167.99.62.52', '2021-12-07', 1, '1638840814'),
('167.99.114.43', '2021-12-07', 1, '1638843300'),
('34.77.162.27', '2021-12-08', 1, '1638896564'),
('18.144.86.125', '2021-12-10', 1, '1639126395'),
('114.122.36.64', '2021-12-15', 8, '1639542820'),
('114.122.41.14', '2021-12-15', 3, '1639542349'),
('114.122.38.160', '2021-12-15', 5, '1639550158'),
('180.241.45.152', '2021-12-16', 1, '1639620858'),
('180.241.39.15', '2021-12-19', 6, '1639898680'),
('180.241.46.167', '2021-12-24', 2, '1640290458'),
('180.241.46.167', '2021-12-26', 44, '1640537447'),
('66.220.149.6', '2021-12-26', 3, '1640535297'),
('66.220.149.13', '2021-12-26', 1, '1640527244'),
('66.220.149.28', '2021-12-26', 1, '1640527250'),
('66.220.149.23', '2021-12-26', 2, '1640529740'),
('66.220.149.24', '2021-12-26', 2, '1640537312'),
('66.220.149.14', '2021-12-26', 5, '1640535806'),
('54.183.62.49', '2021-12-26', 1, '1640527663'),
('66.220.149.30', '2021-12-26', 2, '1640529740'),
('66.220.149.2', '2021-12-26', 3, '1640529122'),
('66.220.149.10', '2021-12-26', 1, '1640528497'),
('66.220.149.36', '2021-12-26', 2, '1640531503'),
('66.220.149.11', '2021-12-26', 1, '1640529109'),
('66.220.149.9', '2021-12-26', 4, '1640531737'),
('169.48.198.40', '2021-12-26', 1, '1640529115'),
('66.220.149.26', '2021-12-26', 3, '1640537370'),
('173.252.79.21', '2021-12-26', 1, '1640529122'),
('66.220.149.22', '2021-12-26', 2, '1640537596'),
('31.13.103.113', '2021-12-26', 1, '1640529753'),
('66.220.149.32', '2021-12-26', 1, '1640529753'),
('66.220.149.117', '2021-12-26', 3, '1640531494'),
('31.13.127.25', '2021-12-26', 1, '1640529760'),
('69.171.251.5', '2021-12-26', 1, '1640529778'),
('66.220.149.7', '2021-12-26', 2, '1640530751'),
('31.13.127.1', '2021-12-26', 1, '1640530764'),
('66.220.149.17', '2021-12-26', 1, '1640531494'),
('66.220.149.8', '2021-12-26', 1, '1640531503'),
('66.220.149.111', '2021-12-26', 1, '1640531504'),
('66.220.149.27', '2021-12-26', 2, '1640532644'),
('66.220.149.31', '2021-12-26', 2, '1640537370'),
('66.220.149.119', '2021-12-26', 1, '1640531705'),
('66.220.149.15', '2021-12-26', 1, '1640532601'),
('66.220.149.29', '2021-12-26', 1, '1640533006'),
('66.220.149.34', '2021-12-26', 1, '1640534291'),
('66.220.149.116', '2021-12-26', 1, '1640535443'),
('66.220.149.37', '2021-12-26', 1, '1640535545'),
('66.220.149.118', '2021-12-26', 1, '1640535801'),
('69.171.251.14', '2021-12-26', 1, '1640537407'),
('66.220.149.12', '2021-12-26', 1, '1640537439'),
('66.220.149.16', '2021-12-26', 1, '1640537628'),
('66.220.149.21', '2021-12-26', 1, '1640537641'),
('66.220.149.33', '2021-12-26', 1, '1640537794'),
('66.220.149.20', '2021-12-26', 1, '1640537844'),
('66.220.149.39', '2021-12-26', 1, '1640537849'),
('180.241.46.167', '2021-12-27', 5, '1640606944'),
('66.220.149.31', '2021-12-27', 2, '1640538140'),
('66.220.149.5', '2021-12-27', 1, '1640538137'),
('66.220.149.14', '2021-12-27', 1, '1640538176'),
('66.220.149.117', '2021-12-27', 2, '1640557803'),
('173.252.83.10', '2021-12-27', 1, '1640563906'),
('173.252.83.120', '2021-12-27', 1, '1640563906'),
('66.220.149.4', '2021-12-27', 1, '1640563930'),
('114.122.44.243', '2021-12-27', 1, '1640568704'),
('114.122.40.217', '2021-12-27', 2, '1640593558'),
('66.220.149.118', '2021-12-27', 1, '1640593565'),
('66.220.149.119', '2021-12-27', 1, '1640593565'),
('66.220.149.37', '2021-12-27', 1, '1640593591'),
('66.220.149.16', '2021-12-27', 1, '1640593592'),
('182.3.4.106', '2021-12-27', 2, '1640606993'),
('114.122.38.67', '2021-12-28', 2, '1640660711'),
('114.122.42.118', '2021-12-28', 1, '1640660722'),
('125.165.18.197', '2021-12-28', 7, '1640662564'),
('114.5.145.32', '2021-12-28', 12, '1640674419'),
('180.241.46.167', '2021-12-28', 47, '1640709984'),
('66.220.149.35', '2021-12-28', 2, '1640697387'),
('66.220.149.24', '2021-12-28', 1, '1640690386'),
('66.220.149.27', '2021-12-28', 4, '1640699691'),
('66.220.149.18', '2021-12-28', 3, '1640697011'),
('114.122.37.190', '2021-12-28', 1, '1640690580'),
('66.220.149.23', '2021-12-28', 3, '1640706095'),
('66.220.149.13', '2021-12-28', 2, '1640699866'),
('66.220.149.112', '2021-12-28', 1, '1640691161'),
('66.220.149.14', '2021-12-28', 4, '1640710039'),
('66.220.149.19', '2021-12-28', 2, '1640697334'),
('66.220.149.33', '2021-12-28', 2, '1640692350'),
('31.13.127.28', '2021-12-28', 1, '1640691181'),
('66.220.149.116', '2021-12-28', 3, '1640697417'),
('66.220.149.39', '2021-12-28', 3, '1640703978'),
('66.220.149.10', '2021-12-28', 3, '1640692350'),
('66.220.149.4', '2021-12-28', 2, '1640692350'),
('66.220.149.119', '2021-12-28', 2, '1640699690'),
('66.220.149.31', '2021-12-28', 3, '1640706096'),
('66.220.149.120', '2021-12-28', 1, '1640697056'),
('66.220.149.16', '2021-12-28', 1, '1640697417'),
('66.220.149.8', '2021-12-28', 2, '1640699691'),
('66.220.149.29', '2021-12-28', 1, '1640699689'),
('66.220.149.28', '2021-12-28', 1, '1640699738'),
('66.220.149.5', '2021-12-28', 1, '1640699859'),
('66.220.149.36', '2021-12-28', 2, '1640706095'),
('114.122.45.77', '2021-12-28', 7, '1640704006'),
('66.220.149.34', '2021-12-28', 2, '1640703978'),
('66.220.149.40', '2021-12-28', 1, '1640703977'),
('66.220.149.11', '2021-12-28', 1, '1640704021'),
('66.220.149.12', '2021-12-28', 1, '1640704021'),
('169.48.198.34', '2021-12-28', 1, '1640704427'),
('66.220.149.7', '2021-12-28', 1, '1640707438'),
('66.220.149.9', '2021-12-28', 1, '1640710038'),
('66.220.149.117', '2021-12-29', 1, '1640743182'),
('66.220.149.26', '2021-12-29', 1, '1640743183'),
('114.122.45.137', '2021-12-29', 1, '1640743200'),
('114.122.45.143', '2021-12-30', 2, '1640851814'),
('66.220.149.113', '2021-12-30', 1, '1640851820'),
('66.220.149.17', '2021-12-30', 1, '1640851820'),
('66.220.149.8', '2021-12-30', 1, '1640851821'),
('66.220.149.36', '2021-12-30', 1, '1640851821'),
('66.220.149.35', '2021-12-30', 1, '1640851879'),
('66.220.149.30', '2021-12-30', 1, '1640851893'),
('66.220.149.6', '2021-12-30', 1, '1640851894'),
('180.241.44.3', '2021-12-31', 2, '1640959148'),
('66.220.149.119', '2021-12-31', 2, '1640959154'),
('66.220.149.19', '2021-12-31', 1, '1640959153'),
('66.220.149.28', '2021-12-31', 1, '1640959154'),
('180.241.46.114', '2022-01-02', 17, '1641142364'),
('66.220.149.29', '2022-01-02', 2, '1641142285'),
('66.220.149.31', '2022-01-02', 1, '1641142284'),
('66.220.149.118', '2022-01-02', 1, '1641142285'),
('182.1.63.106', '2022-01-03', 2, '1641181531'),
('35.87.71.177', '2022-01-05', 1, '1641322552'),
('114.122.44.163', '2022-01-05', 28, '1641373594'),
('66.220.149.28', '2022-01-05', 3, '1641363546'),
('66.220.149.8', '2022-01-05', 1, '1641363545'),
('66.220.149.35', '2022-01-05', 1, '1641364849'),
('66.220.149.113', '2022-01-05', 1, '1641364849'),
('66.220.149.5', '2022-01-05', 1, '1641365557'),
('66.220.149.33', '2022-01-05', 2, '1641371696'),
('66.220.149.22', '2022-01-05', 1, '1641371696'),
('66.220.149.32', '2022-01-05', 1, '1641372027'),
('66.220.149.1', '2022-01-05', 1, '1641372028'),
('173.252.83.120', '2022-01-05', 1, '1641372501'),
('173.252.111.16', '2022-01-05', 1, '1641372501'),
('66.220.149.17', '2022-01-05', 1, '1641372503'),
('66.220.149.34', '2022-01-05', 1, '1641372505'),
('66.220.149.111', '2022-01-05', 1, '1641372991'),
('66.220.149.118', '2022-01-05', 1, '1641372992'),
('173.252.79.4', '2022-01-06', 1, '1641487661'),
('180.241.107.14', '2022-01-07', 1, '1641554884'),
('3.22.95.221', '2022-01-09', 1, '1641745605'),
('114.5.144.208', '2022-01-10', 1, '1641780856'),
('114.122.6.154', '2022-01-10', 1, '1641833134'),
('114.122.42.152', '2022-01-11', 8, '1641879704'),
('66.220.149.10', '2022-01-11', 3, '1641908066'),
('66.220.149.117', '2022-01-11', 3, '1641907378'),
('66.220.149.24', '2022-01-11', 2, '1641910001'),
('66.220.149.18', '2022-01-11', 5, '1641918484'),
('66.220.149.120', '2022-01-11', 1, '1641873641'),
('66.220.149.2', '2022-01-11', 4, '1641918618'),
('103.144.14.227', '2022-01-11', 80, '1641890777'),
('114.122.43.140', '2022-01-11', 13, '1641891552'),
('66.220.149.29', '2022-01-11', 2, '1641918495'),
('66.220.149.25', '2022-01-11', 1, '1641885148'),
('66.220.149.33', '2022-01-11', 1, '1641888410'),
('66.220.149.9', '2022-01-11', 3, '1641916093'),
('66.220.149.4', '2022-01-11', 4, '1641908988'),
('66.220.149.15', '2022-01-11', 4, '1641906296'),
('66.220.149.30', '2022-01-11', 4, '1641918630'),
('66.220.149.6', '2022-01-11', 3, '1641908192'),
('103.169.42.66', '2022-01-11', 5, '1641889960'),
('180.241.44.253', '2022-01-11', 74, '1641919367'),
('66.220.149.17', '2022-01-11', 2, '1641917976'),
('66.220.149.22', '2022-01-11', 2, '1641916162'),
('66.220.149.5', '2022-01-11', 3, '1641906392'),
('66.220.149.32', '2022-01-11', 9, '1641917952'),
('66.220.149.23', '2022-01-11', 3, '1641917309'),
('66.220.149.118', '2022-01-11', 2, '1641908977'),
('66.220.149.21', '2022-01-11', 3, '1641908289'),
('66.220.149.13', '2022-01-11', 1, '1641906295'),
('66.220.149.35', '2022-01-11', 3, '1641912498'),
('66.220.149.112', '2022-01-11', 2, '1641916101'),
('66.220.149.31', '2022-01-11', 6, '1641918491'),
('66.220.149.116', '2022-01-11', 1, '1641907708'),
('66.220.149.28', '2022-01-11', 2, '1641912875'),
('169.48.198.34', '2022-01-11', 1, '1641907774'),
('66.220.149.1', '2022-01-11', 3, '1641917975'),
('66.220.149.7', '2022-01-11', 2, '1641919182'),
('31.13.127.118', '2022-01-11', 1, '1641907930'),
('66.220.149.12', '2022-01-11', 3, '1641919069'),
('66.220.149.34', '2022-01-11', 3, '1641919246'),
('66.220.149.27', '2022-01-11', 2, '1641908977'),
('31.13.127.34', '2022-01-11', 1, '1641908987'),
('173.252.107.4', '2022-01-11', 1, '1641908987'),
('66.220.149.8', '2022-01-11', 3, '1641917702'),
('66.220.149.119', '2022-01-11', 1, '1641912383'),
('66.220.149.19', '2022-01-11', 2, '1641918494'),
('66.220.149.3', '2022-01-11', 1, '1641917408'),
('31.13.127.35', '2022-01-11', 1, '1641918004'),
('173.252.87.21', '2022-01-11', 1, '1641918493'),
('173.252.95.1', '2022-01-11', 1, '1641918984');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE `submenu` (
  `id_sub` int(5) NOT NULL,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_main` int(5) NOT NULL,
  `id_submain` int(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `adminsubmenu` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `link_sub`, `id_main`, `id_submain`, `aktif`, `adminsubmenu`) VALUES
(2, 'Visi dan Misi', 'statis-2-visidanmisi.html', 3, 0, 'Y', 'N'),
(3, 'Struktur Organisasi', 'statis-3-strukturorganisasi.html', 3, 0, 'Y', 'N'),
(4, 'Ekonomi', 'kategori-21-ekonomi.html', 5, 0, 'N', 'N'),
(5, 'Hiburan', 'kategori-23-hiburan.html', 5, 0, 'Y', 'N'),
(6, 'Olahraga', 'kategori-2-olahraga.html', 5, 0, 'Y', 'N'),
(7, 'Politik', 'kategori-22-politik.html', 5, 0, 'Y', 'N'),
(8, 'Teknologi', 'kategori-19-teknologi.html', 5, 0, 'Y', 'N'),
(11, 'Manajemen Modul', '?module=modul', 14, 0, 'N', 'Y'),
(10, 'Identitas Web', '?module=identitas', 14, 0, 'N', 'Y'),
(12, 'Manajemen User', '?module=user', 14, 0, 'N', 'Y'),
(13, 'Manajemen Template', '?module=templates', 14, 0, 'N', 'Y'),
(14, 'Menu Utama', '?module=menuutama', 15, 0, 'N', 'Y'),
(15, 'Sub Menu', '?module=submenu', 15, 0, 'N', 'Y'),
(16, 'Kategori Berita', '?module=kategori', 16, 0, 'N', 'Y'),
(17, 'Berita', '?module=berita', 16, 0, 'N', 'Y'),
(18, 'Komentar', '?module=komentar', 16, 0, 'N', 'Y'),
(19, 'Halaman Statis', '?module=halamanstatis', 16, 0, 'N', 'Y'),
(20, 'Tag / Label', '?module=tag', 16, 0, 'N', 'Y'),
(21, 'Sensor Kata', '?module=katajelek', 16, 0, 'N', 'Y'),
(22, 'Album', '?module=album', 52, 0, 'N', 'Y'),
(23, 'Galeri Foto', '?module=galerifoto', 52, 0, 'N', 'Y'),
(24, 'Download', '?module=download', 52, 0, 'N', 'Y'),
(25, 'Agenda', '?module=agenda', 53, 0, 'N', 'Y'),
(26, 'Poling', '?module=poling', 53, 0, 'N', 'Y'),
(27, 'Sekilas Info', '?module=sekilasinfo', 53, 0, 'N', 'Y'),
(30, 'ShoutBox', '?module=shoutbox', 53, 0, 'N', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `tag_seo`, `count`) VALUES
(1, 'Palestina', 'palestina', 7),
(2, 'Gaza', 'gaza', 11),
(9, 'Tenis', 'tenis', 5),
(10, 'Sepakbola', 'sepakbola', 7),
(8, 'Laskar Pelangi', 'laskar-pelangi', 2),
(11, 'Amerika', 'amerika', 18),
(12, 'George Bush', 'george-bush', 3),
(13, 'Browser', 'browser', 9),
(14, 'Google', 'google', 3),
(15, 'Israel', 'israel', 5),
(16, 'Komputer', 'komputer', 24),
(17, 'Film', 'film', 9),
(19, 'Mobil', 'mobil', 0),
(21, 'Gayus', 'gayus', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `pembuat`, `folder`, `aktif`) VALUES
(11, 'SKPD LOTIM', 'SelongWeb.Com', 'templates/skpdlotim', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`, `id_session`) VALUES
('admin', '18b17bbb2369935c6fc262c709822db6', 'Administrator', 'admin@padanglawasutarakab.go.id', '08238923848', 'admin', 'N', 'do0g3oe8g6g8adihh9lh4oat35'),
('operator', '3112a868309ccfbfbbd77662821e442c', 'Staf Operator', 'operator@padanglawasutarakab.go.id', '', 'user', 'N', 'cn4tbif5drporrq7j68raua047');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indeks untuk tabel `harga_pasar`
--
ALTER TABLE `harga_pasar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indeks untuk tabel `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `komoditas`
--
ALTER TABLE `komoditas`
  ADD PRIMARY KEY (`id_komoditas`);

--
-- Indeks untuk tabel `listslider`
--
ALTER TABLE `listslider`
  ADD PRIMARY KEY (`id_list`);

--
-- Indeks untuk tabel `mainmenu`
--
ALTER TABLE `mainmenu`
  ADD PRIMARY KEY (`id_main`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `pasar`
--
ALTER TABLE `pasar`
  ADD PRIMARY KEY (`id_pasar`);

--
-- Indeks untuk tabel `pbb`
--
ALTER TABLE `pbb`
  ADD PRIMARY KEY (`id_pbb`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id_penduduk`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indeks untuk tabel `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indeks untuk tabel `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indeks untuk tabel `shoutbox`
--
ALTER TABLE `shoutbox`
  ADD PRIMARY KEY (`id_shoutbox`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indeks untuk tabel `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT untuk tabel `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `harga_pasar`
--
ALTER TABLE `harga_pasar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT untuk tabel `komoditas`
--
ALTER TABLE `komoditas`
  MODIFY `id_komoditas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `listslider`
--
ALTER TABLE `listslider`
  MODIFY `id_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `mainmenu`
--
ALTER TABLE `mainmenu`
  MODIFY `id_main` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `pasar`
--
ALTER TABLE `pasar`
  MODIFY `id_pasar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pbb`
--
ALTER TABLE `pbb`
  MODIFY `id_pbb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id_penduduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `shoutbox`
--
ALTER TABLE `shoutbox`
  MODIFY `id_shoutbox` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id_sub` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
