-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Feb 2023 pada 08.24
-- Versi server: 5.7.41
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pess7362_rakernas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user_id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `event` varchar(255) NOT NULL,
  `level` enum('admin','user','officer') NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `event`, `level`, `gambar`) VALUES
(2, 'rizkids', 'd83dd0ef9c5eaf6c35b247e45b4d445705ab539d', 'Rizki D.S', 'Rakernas', 'officer', '../admin/gambar_admin/WhatsApp Image 2023-01-18 at 15.41.54.jpeg'),
(5, 'admin', 'd83dd0ef9c5eaf6c35b247e45b4d445705ab539d', 'Administrator', '', 'admin', '../admin/gambar_admin/administrator.jpg'),
(6, 'user1', 'b3daa77b4c04a9551b8781d03191fe098f325e67', 'User 1', '', 'user', '../admin/gambar_admin/user.jpg'),
(7, 'P80021', 'c4c014bfdfa4db48768a3344f7e7a6d7f6b655bd', 'Agus Priyabodo', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/1 P80021.jpg'),
(11, 'P78622', '5ce51942b7b33f008887cebb060cc9d6a7f2121d', 'Yul Afian', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/2 P78622.jpg'),
(12, 'P80064', '35cf8cbce06abe7c4a0bc34e2f68c753e1de3d01', 'I Wayan Sukerata', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/3 P80064.jpg'),
(13, 'P77267', '8b52ac521ba7cbc18fc03c1432844ff83a422760', 'Lucia Retna Widarti', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/4 P77267.jpg'),
(14, 'P78581', '2f923b15be643b1e45f1a500a24d5df2f78c2381', 'Dodik Sugeng H', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/5 P78581.jpg'),
(15, 'P721900032', '349d1709414f4bfda7af3c61986b33c38f59d092', 'Novian Indra Jaya', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/6 P721900032.jpg'),
(16, 'P80906', '74a63570d53c546e68498a59a1b6be66f8066bd6', 'Andi Pangeran', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../admin/gambar_admin/P80906.jpg'),
(17, 'P841900002', 'd58f90cfe8ba0a13a6518f29fc38ed857c7da1c4', 'Damar Wicaksono', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/8 P841900002.jpg'),
(18, 'P861900044', '3b80b38a321d0b61e5e0fefd0961d1f27746622d', 'Sariffudin', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/9 P861900044.jpg'),
(19, 'P791900025', '05629b1d7a8e43ee874e3887689a7242b6ae7c21', 'Antonius Eka Wibowo', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/10 P791900025.jpg'),
(20, 'P741900033', '3ad0e442c95645bae45b2f7648f226ae5d3bdc5c', 'Uus Yuswandhika', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/11 P741900033.jpg'),
(21, 'P821900034', '78ceec7115901df09a5ac246e4ba235375ef1b80', 'Andri Prayogo', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/12 P821900034.jpg'),
(22, 'K772107962', 'd6b4b117750cbb4d193fa37287b953bd32715c5b', 'Andy Wijaya', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/13 K772107962.jpg'),
(23, 'P862300110', 'aee1df4803e7cc32cde88b28d64152d79b31b25d', 'Mohammad Ruli Kusumaputra', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/14 P862300110.jpg'),
(24, 'P842000072', '08bb2a6e65a01f2f490009746c442e927afa95f5', ' Agus Sudrajat  ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/16 P842000072.jpg'),
(25, 'P911900048', 'c27fe08c413c8eeeb41265e78805c652028d0251', ' Imam Setiawan ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/17 P911900048.jpg'),
(26, 'P721900016', 'fe9a13b3dcab5c42ec13a3d13643d0f202128a37', ' Zulfahmi ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/18 P721900016.jpg'),
(27, 'P802100079', '49f6e1775c05373a468a7d0de05faea867c6094e', ' Martupa Sinaga ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/19 P802100079.jpg'),
(28, 'P721900028', 'ed744cd92961b5f9a1cdfd3d787eb3c7e5fc9f18', ' Yusransyah ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/20 P721900028.jpg'),
(29, 'P862000064', 'a2583c39492aec5782590194a51b3d4ec33e88bc', ' Paskalis Kevin Lumi ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/21 P862000064.jpg'),
(30, 'P811900022', '5476c98a0344b8d1f64305fd086fbd555cb469a3', ' Duhi Harto ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/22 P811900022.jpg'),
(31, 'P782000065', 'c937fec04b2eec38b36924f53ce4a0ad29b0e407', ' Bobby Riskhana St ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/23 P782000065.jpg'),
(32, 'P882000053', 'd133b8d4f96e18c1cad0d001f2467f72cefba4aa', ' Muhammad Rizal Jayadiwangsa ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/24 P882000053.jpg'),
(33, 'P771900014', 'c9a16bc1dc9629a134e01097d605273d5269af31', ' Achmad Sad Priyo Widodo ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/25 P771900014.jpg'),
(34, 'P832200109', 'b1e9c11b7a14cfa66de546e3f295cac77e7c7389', ' Yuardi Hendrastiawan ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/26 P832200109.jpg'),
(35, 'K982109238', 'c914f0e3f54848d8d63d9e95bc755046b421c86b', ' Theresia Yulinar Lumban Gaol ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/29 K982109238.jpg'),
(36, 'K932107963', '4a84e15b729fd7c35056a5ec64fffd6fcfdf8853', ' Muhammad Sholeh ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/30 K932107963.jpg'),
(37, 'K932109238', '4fcb857fd77cc0f5a3bacf08dda3e82268423c9c', ' Dessy Lina Rachmawati ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../admin/gambar_admin/K932109238.jpg'),
(38, 'P942200096', 'ca4ecd82054d7c64970515be3c69ce6b0a522889', ' Phamella Patrycia Monangin ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/31 P942200096.jpg'),
(39, 'K872207963', 'f3e0ae349927c1db051b4d7f98d6f92dfcddacfb', ' Aurapurify  ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../admin/gambar_admin/K872207963.jpg'),
(40, 'K972207963', '2eb13f5d9fb9b79a3f625ed9281d65f3a768b951', ' Anak Agung Istri Widya ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/32 K972207963.jpg'),
(41, 'K912207963', '4fb55be0a29fa4356aa43080ee7b1a0793693e46', ' Pungki Miladi  ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../admin/gambar_admin/K912207963.jpg'),
(42, 'K912107963', '38d3d11b91ce91cc6b15d7797f028f42d9fbfc89', ' Fitria Wijayanti ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/34 K912107963.jpg'),
(43, 'P782200107', 'f22667f5e244d38530304f4fcc3754f753030dd3', 'Muliyadi', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/36 P782200107.jpg'),
(44, 'P802000051', '6f930406e1f573ae26c1c45f5ec45da61d4da5ed', 'Agus Savutra', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/37 P802000051.jpg'),
(45, 'P842100083', 'b30b9a82b2576072284ecf157eeb46887c7319fb', 'Fauzan Afriyanto', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/38 P842100083.jpg'),
(46, 'P801900038', 'ced06bb60bfd6a4aeb9490d15734c721459e0945', 'Reki Jaya Putra', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/39 P801900038.jpg'),
(47, 'P812000060', 'd89e4f51ba40cb8356ac6cde24e7e1265c00cbe4', 'Yohanda Prayoga', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/40 P812000060.jpg'),
(48, 'K872207962', '8177db297ceda6936c8a521b8ec53d438647fc17', 'Jeldi Mandalika', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/41 K872207962.jpg'),
(49, 'P872300111', '7f6bd7410930f5eb59b39ddeac97858d890bd289', 'Yoga Anugrah', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/42 P872300111.jpg'),
(50, 'P672000062', '611772425f14dc291eacfae5df355da1796a8957', 'Firdiansyah', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../admin/gambar_admin/P672000062.jpg'),
(51, 'P772000061', '1eacd5018f33408e28978b14bc5141dcdfba6d09', 'Muh. Nurassalam. A', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/44 P772000061.jpg'),
(52, 'P822200099', '0e64ff6e26289b88966a0775770f8a8f41906f97', 'Rahmat Ali ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/45 P822200099.jpg'),
(53, 'K812107962', '9e6ad1b104e4765363f7e921f841a218c0438dfe', 'Edo Widodo', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/46 K812107962.jpg'),
(54, 'P822200088', 'b2d112707eb7351b580ffb2eaaf54eb35cc9b2d5', 'Rico Ferdian Imam ', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/47 P822200088.jpg'),
(55, 'K862108999', '353c3e79a24794cdbe8677af971dce46611c412b', 'Muh. Noor', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../peserta/foto_peserta/50 K862108999.jpg'),
(56, 'P891900039', '47c8ba18ed6dd7b958c92624d13b0743a2ecb4a6', 'Asrul', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'user', '../admin/gambar_admin/P891900039.jpg'),
(57, 'P932000054', '14367dc198cb7bfff633818265952d6fc1e51fdb', 'Juniarto Parlindungan Sinaga', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'officer', '../peserta/foto_peserta/53 P932000054.jpg'),
(58, 'K992107962', '030210a3e381223bf2844f105ddce710044d2503', 'Kiranastari Asoka Sumantri', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'admin', '../admin/gambar_admin/K992107962.jpg'),
(59, 'K932000046', 'b620f10dd0685cf96a8e5c3d318bd0c8316b665d', 'Yuda Gunawan', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'admin', '../admin/gambar_admin/K932000046.jpg'),
(60, 'P881900005', '010111bf1f43ed31afebd7360d72a7ca41fd4a4b', 'Doddy Kurnia Putra', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'officer', '../peserta/foto_peserta/59 P881900005.jpg'),
(61, 'K902107963', '3b9deb464a99f83b02f3be34b88d197827ab9ad4', 'Ari Wiguna', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'officer', '../peserta/foto_peserta/58 K902107963.jpg'),
(62, 'P891900050', '3b7ff7b8088f0ef52f025c321483fef24777abaf', 'Zulfikar Rizki', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'officer', '../peserta/foto_peserta/52 P891900050.jpg'),
(63, 'K932207962', 'ef6475c6c3953a128d7868bbf4eef2d8dd49361b', 'Hana Ragil Ayu Asmara', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'officer', '../peserta/foto_peserta/57 K932207962.jpg'),
(64, 'P922100077', 'e39040a15f4aff8b246af2d01dee9406a81f27de', 'Syamsul Jauhari', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2022', 'officer', '../peserta/foto_peserta/54 P922100077.jpg'),
(66, 'officer', 'cf0bc3fad4fca248937233cd4f854d7384cd478b', 'OFFICER - PANITIA', '', 'officer', '../admin/gambar_admin/officer.png'),
(67, 'user', '16daa5e095d9e74795fe7c7269deddb196ab96ef', 'Tes User gambar 2', '', 'user', '../admin/gambar_admin/user.jpg'),
(69, 'tes1', '1b9e2d3c190b73fe5ffa5e9aad0c964c3cef12d1', 'TES 1', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'admin', '../admin/gambar_admin/c59.jpg'),
(70, 'tes2', '05c6595636de343199dbf9231858cebd67c91394', 'TES 2', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'officer', '../admin/gambar_admin/avatar5.png'),
(71, 'K952207964', '25190b41512ca9580c24dfedaa852a264e8f4aa1', 'R. Eka Prasetya', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'user', '../peserta/foto_peserta/15 K952207964.jpg'),
(72, 'K932207975', 'caed81f9880aeeb39deca5d112fca1476d41fd8d', 'Erni Sumiati', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'user', '../peserta/foto_peserta/27 K932207975.jpg'),
(73, 'K912207981', '6d3d6ba0af8784f7d78e2209202a89372a8cab28', 'Aristyo', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'user', '../peserta/foto_peserta/28 K912207981.jpg'),
(74, 'K942207990', '2fe9d9116c31f9d38c4d67508cd70c0899b5038e', 'Rilia Nur Suci Oktafiani', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'user', '../peserta/foto_peserta/35 K942207990.jpg'),
(75, 'K782207979', '18f0d09287cbc4bc66a684523c137e031d5a54b0', 'Robby Tjipto Adjie W', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'user', '../peserta/foto_peserta/43 K782207979.jpg'),
(76, 'K862207989', '086d8d9c6270ae43ae80cdb61e0dd8aa01bbf5ee', 'Candra Widiatmoko', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'user', '../peserta/foto_peserta/48 K862207989.jpg'),
(77, 'K882207988', '5bc9a90914d7306fcae77a7543e33afbfe65b0ed', 'Dekky Febrianto M', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'user', '../peserta/foto_peserta/49 K882207988.jpg'),
(78, 'P892100078', 'bb06f361591509e866e5a1da47188bc3d119d77a', 'Mochamad Nurhadi', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'officer', '../peserta/foto_peserta/55 P892100078.jpg'),
(79, 'P932200108', 'e720337aff3e07fec23662a90c0e5973e8f0714b', 'Ricki Mardianto', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'officer', '../peserta/foto_peserta/56 P932200108.jpg'),
(80, 'P861900015', '5637a5caff3c979007e2f3f0f0cd8a3ab2f2b172', 'Agustinus Tomi Aditya', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'officer', '../peserta/foto_peserta/60 P861900015.jpg'),
(81, 'P80028', '4f5ff95dffcd6f18e948e853f0535e2f7dfd8d11', 'A. Sigit Agung Wibowo', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'user', '../peserta/foto_peserta/7 P80028.jpg'),
(82, 'K902308028', 'b464c5235845664ec7dad30aa91d6c059975bddb', '33 Adi Baskara Perwira', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'user', '../peserta/foto_peserta/33 K902308028.jpg'),
(83, 'K892208005', 'deb20e4d16e72eabc95198add4cde0619ec39bbc', 'Yonas Adu', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'user', '../peserta/foto_peserta/51 K892208005.jpg'),
(84, 'tes9912', '21d92b008a943b70bb3d644e36e096e18dad08ff', 'tes user99', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'officer', '../admin/gambar_admin/odoo.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id` int(10) NOT NULL,
  `nama_event` varchar(255) NOT NULL,
  `tanggal` text NOT NULL,
  `lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id`, `nama_event`, `tanggal`, `lokasi`) VALUES
(1, 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Senin s/d Jumat | 06 s/d 10 Februari 2023', 'Hotel Santika Premiere Semarang, Jl. Pandanaran No.116-120, Pekunden, Kec.Semarang Tengah, Kota Semarang, Jawa Tengah 50241');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `type_kamar` varchar(50) DEFAULT NULL,
  `no_kamar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `departemen`, `type_kamar`, `no_kamar`) VALUES
('11111', 'TES', 'Administration', '', 0),
('112', 'tes lg', 'Staff keuangan', '2', 2),
('1144', 'tes2', 'Staff keuangan', '0', 0),
('222112', '33', 'BISNIS OUTSOURCING', '0', 0),
('22222', 'TES22', 'BISNIS OUTSOURCING', '', 0),
('22223', '23', 'Administration', '0', 0),
('2323', '232', 'Administration', NULL, NULL),
('32111', 'INI TES', 'Administration', '0', 0),
('3232', 'tes', 'DIVISI BISNIS RENTAL', '0', 0),
('32323', '22', 'BISNIS OUTSOURCING', NULL, NULL),
('3333', 'TES 32', 'Administration', '', 0),
('4332', 'tes', 'DIVISI BISNIS RENTAL & USAHA LAIN', '0', 0),
('9922', 'tes9922', 'DIVISI BISNIS RENTAL', '', 0),
('K772107962', 'Andy Wijaya', 'MANAGER Bisnis Rental & Usla', 'Twin', 2127),
('K782009238', 'Muliyadi', 'Manager Area Banda Aceh', 'Twin', 2310),
('K812107962', 'Edo Widodo', 'Manager Area Jakarta', 'Twin', 2121),
('K822000007', 'Rahmat Ali ', 'Manager Area Gorontalo', 'Twin', 2318),
('K822010000', 'Rico Ferdian Imam ', 'Manager Area Surabaya', 'Twin', 2121),
('K832107962', ' Yuardi Hendrastiawan ', 'Regional Manager Surabaya', 'Twin', 2208),
('K862108999', 'Muh. Noor', 'Manager Area Ampenan', 'Twin', 504),
('K862207962', 'Mohammad Ruli Kusumaputra', 'Asmen SPI', 'Twin', 2128),
('K872107936', 'Yoga Anugrah', 'Manager Area Banjarmasin', 'Twin', 2315),
('K872207962', 'Jeldi Mandalika', 'Manager Area Manado', 'Twin', 2312),
('K872207963', ' Aurapurify  ', 'Marketing Eksekutif Makassar', 'Twin', 2212),
('K902107963', 'Ari Wiguna', 'Staff Bisnis Rental & Usla', 'Twin', 2326),
('K912107963', ' Fitria Wijayanti ', 'Marketing Eksekutif Surabaya', 'Twin', 2309),
('K912207963', ' Pungki Miladi  ', 'Marketing Eksekutif Semarang', 'Twin', 2309),
('K932000046', 'Yuda Gunawan', 'Staff Bisnis OJP', 'Twin', 2325),
('K932107963', ' Muhammad Sholeh ', 'Marketing Eksekutif Pekanbaru', 'Twin', 2209),
('K932109238', ' Dessy Lina Rachmawati ', 'Marketing Eksekutif Balikpapan', 'Twin', 2211),
('K932207962', 'Hana Ragil Ayu Asmara', 'Sekretaris ', 'Twin', 2330),
('K942107962', ' Phamella Patrycia Monangin ', 'Marketing Eksekutif Manado', 'Twin', 2211),
('K972207963', ' Anak Agung Istri Widya ', 'Marketing Eksekutif Denpasar', 'Twin', 2212),
('K982109238', ' Theresia Yulinar Lumban Gaol ', 'Marketing Eksekutif Medan', 'Twin', 2209),
('K992107962', 'Kiranastari Asoka Sumantri', 'Staff Bisnis Rental & Usla', 'Twin', 2323),
('P672000062', 'Firdiansyah', 'Manager Area Pontianak', 'Twin', 2315),
('P721900016', ' Zulfahmi ', 'Regional Manager Pekanbaru', 'Twin', 2138),
('P721900028', ' Yusransyah ', 'Regional Manager Balikpapan', 'Twin', 2202),
('P721900032', 'Novian Indra Jaya', 'GM Outs & JP', 'Queen Single', 2007),
('P741900033', 'Uus Yuswandhika', 'MANAGER SDM', 'Twin', 2327),
('P771900014', ' Achmad Sad Priyo Widodo ', 'Regional Manager Semarang', 'Twin', 2208),
('P772000061', 'Muh. Nurassalam. A', 'Manager Area Palu', 'Twin', 2318),
('P77267', 'Lucia Retna Widarti', 'GM SDM & Log', 'Queen Single', 2003),
('P782000065', ' Bobby Riskhana St ', 'Regional Manager Denpasar', 'Twin', 2207),
('P78581', 'Dodik Sugeng H', 'GM Rental & USLA', 'Queen Single', 2004),
('P78622', 'Yul Afian', 'Direktur ', 'Suite', 2216),
('P791900025', 'Antonius Eka Wibowo', 'MANAGER Logistik', 'Twin', 2327),
('P80021', 'Agus Priyabodo', 'Direktur Utama', 'Suite', 2215),
('P80064', 'I Wayan Sukerata', 'GM Keuangan & TI', 'Queen Single', 2136),
('P801900038', 'Reki Jaya Putra', 'Manager Area Jambi', 'Twin', 2311),
('P802000051', 'Agus Savutra', 'Manager Area Padang', 'Twin', 2310),
('P802100079', ' Martupa Sinaga ', 'Regional Manager Palembang', 'Twin', 2202),
('P80906', 'Andi Pangeran', 'Kepala SPI', 'Queen Single', 2326),
('P811900022', ' Duhi Harto ', 'Regional Manager Makassar', 'Twin', 2205),
('P812000060', 'Yohanda Prayoga', 'Manager Area Lampung', 'Twin', 2312),
('P821900034', 'Andri Prayogo', 'DIVISI KEUANGAN & T.I', 'Twin', 2127),
('P841900002', 'Damar Wicaksono', 'MANAGER Outs & JP', 'Twin', 2119),
('P842000072', ' Agus Sudrajat  ', 'Regional Manager Jakarta', 'Twin', 2128),
('P842100083', 'Fauzan Afriyanto', 'Manager Area Batam', 'Twin', 2311),
('P861900044', 'Sariffudin', 'MANAGER Keuangan', 'Twin', 2119),
('P862000064', ' Paskalis Kevin Lumi ', 'Regional Manager Manado', 'Twin', 2205),
('P881900005', 'Doddy Kurnia Putra', 'Staff SDM', 'Twin', 2325),
('P882000053', ' Muhammad Rizal Jayadiwangsa ', 'Regional Manager Bandung', 'Twin', 2207),
('P891900039', 'Asrul', 'Manager Area Kendari', 'Twin', 2323),
('P891900050', 'Zulfikar Rizki', 'Staff keuangan', 'Twin', 2326),
('P911900048', ' Imam Setiawan ', 'Regional Manager Medan', 'Twin', 2138),
('P922100077', 'Syamsul Jauhari', 'Staff Bisnis OJP', 'Twin', 2330),
('P932000054', 'Juniarto Parlindungan Sinaga', 'Staff keuangan', 'Twin', 2323);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `no` int(10) NOT NULL,
  `nik` varchar(10) CHARACTER SET latin1 NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `event` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` enum('Tidak Hadir','Hadir') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`no`, `nik`, `tanggal`, `waktu`, `event`, `status`) VALUES
(195, 'K902207962', '2023-01-24', '16:59:53', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(196, 'K902207962', '2023-01-26', '11:01:46', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(199, 'K952207964', '2023-01-30', '10:23:08', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(200, 'K862108999', '2023-02-01', '09:09:26', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(201, 'K902207962', '2023-02-02', '09:20:12', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(202, 'P77267', '2023-02-02', '09:31:42', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(203, 'P78622', '2023-02-02', '09:31:50', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(204, 'P80021', '2023-02-02', '09:32:02', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(205, 'K862108999', '2023-02-02', '13:59:54', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(209, 'K902207962', '2023-01-28', '10:02:42', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(210, 'K952207964', '2023-01-28', '10:05:12', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(218, 'K902207962', '2023-01-29', '10:23:25', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(219, 'P881900005', '2023-02-06', '19:45:41', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(220, 'K912207981', '2023-02-06', '19:53:39', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(221, 'K952207964', '2023-02-06', '19:58:41', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(222, 'P892100078', '2023-02-06', '20:00:09', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(223, 'P842000072', '2023-02-06', '20:05:34', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(224, 'K812107962', '2023-02-06', '20:05:40', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(225, 'P922100077', '2023-02-06', '20:07:53', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(226, 'P932200108', '2023-02-06', '20:08:33', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(227, 'P882000053', '2023-02-06', '20:09:23', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(228, 'K942207990', '2023-02-06', '20:10:02', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(229, 'K932207962', '2023-02-06', '20:11:29', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(230, 'P801900038', '2023-02-06', '20:13:45', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(231, 'P812000060', '2023-02-06', '20:13:56', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(232, 'P821900034', '2023-02-06', '20:14:47', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(233, 'K892208005', '2023-02-06', '20:17:25', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(234, 'P841900002', '2023-02-06', '20:17:31', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(235, 'P832200109', '2023-02-06', '20:17:49', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(236, 'K782207979', '2023-02-06', '20:18:26', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(237, 'K872207962', '2023-02-06', '20:18:37', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(238, 'P822200099', '2023-02-06', '20:18:52', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(239, 'P782000065', '2023-02-06', '20:18:59', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(240, 'P772000061', '2023-02-06', '20:19:16', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(241, 'K862108999', '2023-02-06', '20:19:27', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(242, 'P811900022', '2023-02-06', '20:20:00', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(243, 'P861900044', '2023-02-06', '20:20:11', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(244, 'P741900033', '2023-02-06', '20:20:37', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(245, 'P802100079', '2023-02-06', '20:20:56', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(246, 'P862300110', '2023-02-06', '20:21:03', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(247, 'K772107962', '2023-02-06', '20:21:18', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(248, 'K862207989', '2023-02-06', '20:21:29', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(249, 'P932000054', '2023-02-06', '20:21:57', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(250, 'P842100083', '2023-02-06', '20:22:01', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(251, 'K912107963', '2023-02-06', '20:22:05', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(252, 'P822200088', '2023-02-06', '20:22:10', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(253, 'P802000051', '2023-02-06', '20:22:15', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(254, 'K882207988', '2023-02-06', '20:22:24', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(255, 'K932107963', '2023-02-06', '20:23:09', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(256, 'P78581', '2023-02-06', '20:23:16', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(257, 'P891900050', '2023-02-06', '20:24:10', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(258, 'P721900032', '2023-02-06', '20:24:16', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(259, 'P791900025', '2023-02-06', '20:24:52', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(260, 'K902107963', '2023-02-06', '20:25:10', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(261, 'P80064', '2023-02-06', '20:27:13', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(262, 'K972207963', '2023-02-06', '20:27:35', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(263, 'P861900015', '2023-02-06', '20:27:41', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(264, 'P942200096', '2023-02-06', '20:28:10', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(265, 'P911900048', '2023-02-06', '20:28:58', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(266, 'P782200107', '2023-02-06', '20:29:57', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(267, 'K982109238', '2023-02-06', '20:30:18', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(268, 'K902107963', '2023-02-07', '07:12:52', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(269, 'P791900025', '2023-02-07', '07:15:36', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(270, 'P78581', '2023-02-07', '07:18:00', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(271, 'P741900033', '2023-02-07', '07:18:18', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(272, 'P721900032', '2023-02-07', '07:18:28', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(273, 'P881900005', '2023-02-07', '07:18:31', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(274, 'K952207964', '2023-02-07', '07:18:32', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(275, 'P861900015', '2023-02-07', '07:19:04', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(276, 'P932200108', '2023-02-07', '07:19:13', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(277, 'K812107962', '2023-02-07', '07:19:17', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(278, 'P922100077', '2023-02-07', '07:19:18', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(279, 'P80064', '2023-02-07', '07:19:56', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(280, 'K772107962', '2023-02-07', '07:20:03', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(281, 'P841900002', '2023-02-07', '07:20:18', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(282, 'P721900016', '2023-02-07', '07:23:10', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(283, 'P721900028', '2023-02-07', '07:23:20', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(284, 'P862000064', '2023-02-07', '07:23:24', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(285, 'P932000054', '2023-02-07', '07:23:45', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(286, 'P771900014', '2023-02-07', '07:27:34', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(287, 'P882000053', '2023-02-07', '07:27:44', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(288, 'P77267', '2023-02-07', '07:28:21', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(289, 'P80028', '2023-02-07', '07:30:01', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(290, 'P861900044', '2023-02-07', '07:30:39', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(291, 'K862108999', '2023-02-07', '07:30:47', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(292, 'P832200109', '2023-02-07', '07:31:58', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(293, 'P801900038', '2023-02-07', '07:32:44', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(294, 'P812000060', '2023-02-07', '07:32:50', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(295, 'K872207962', '2023-02-07', '07:33:23', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(296, 'P911900048', '2023-02-07', '07:35:38', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(297, 'P782000065', '2023-02-07', '07:36:08', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(298, 'P822200099', '2023-02-07', '07:36:14', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(299, 'P782200107', '2023-02-07', '07:36:20', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(300, 'P821900034', '2023-02-07', '07:37:04', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(301, 'P772000061', '2023-02-07', '07:39:48', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(302, 'K782207979', '2023-02-07', '07:39:55', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(303, 'K932207962', '2023-02-07', '07:40:03', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(304, 'K932207975', '2023-02-07', '07:40:13', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(305, 'P811900022', '2023-02-07', '07:41:34', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(306, 'K932107963', '2023-02-07', '07:42:56', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(307, 'K912207981', '2023-02-07', '07:43:04', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(308, 'P842100083', '2023-02-07', '07:44:53', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(309, 'P842000072', '2023-02-07', '07:45:00', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(310, 'P802100079', '2023-02-07', '07:45:05', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(311, 'P802000051', '2023-02-07', '07:45:08', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(312, 'P862300110', '2023-02-07', '07:45:15', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(313, 'P822200088', '2023-02-07', '07:45:18', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(314, 'K862207989', '2023-02-07', '07:45:22', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(315, 'K892208005', '2023-02-07', '07:45:25', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(316, 'P942200096', '2023-02-07', '07:46:05', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(317, 'K982109238', '2023-02-07', '07:46:10', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(318, 'K972207963', '2023-02-07', '07:46:15', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(319, 'K912107963', '2023-02-07', '07:46:19', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(320, 'K942207990', '2023-02-07', '07:46:59', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(321, 'K902308028', '2023-02-07', '07:50:33', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(322, 'P922100077', '2023-02-08', '07:29:48', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(323, 'P771900014', '2023-02-08', '07:29:52', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(324, 'P741900033', '2023-02-08', '07:29:57', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(325, 'P882000053', '2023-02-08', '07:30:06', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(326, 'P881900005', '2023-02-08', '07:30:10', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(327, 'K902107963', '2023-02-08', '07:30:14', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(328, 'P721900032', '2023-02-08', '07:30:21', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(329, 'P77267', '2023-02-08', '07:30:25', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(330, 'P932200108', '2023-02-08', '07:30:31', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(331, 'K952207964', '2023-02-08', '07:30:38', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(332, 'P791900025', '2023-02-08', '07:30:46', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(333, 'P861900015', '2023-02-08', '07:31:02', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(334, 'P892100078', '2023-02-08', '07:31:11', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(335, 'K932107963', '2023-02-08', '07:36:10', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(336, 'K982109238', '2023-02-08', '07:42:08', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(337, 'K942207990', '2023-02-08', '07:42:14', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(338, 'P721900028', '2023-02-08', '07:43:28', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(339, 'P862000064', '2023-02-08', '07:43:34', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(340, 'K972207963', '2023-02-08', '07:43:47', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(341, 'P911900048', '2023-02-08', '07:44:22', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(342, 'K862207989', '2023-02-08', '07:44:27', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(343, 'P721900016', '2023-02-08', '07:44:39', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(344, 'P801900038', '2023-02-08', '07:44:48', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(345, 'P782000065', '2023-02-08', '07:44:51', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(346, 'P811900022', '2023-02-08', '07:44:55', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(347, 'K812107962', '2023-02-08', '07:45:01', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(348, 'P812000060', '2023-02-08', '07:45:05', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(349, 'P802100079', '2023-02-08', '07:45:38', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(350, 'P841900002', '2023-02-08', '07:45:46', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(351, 'K912107963', '2023-02-08', '07:46:04', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(352, 'P822200088', '2023-02-08', '07:48:26', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(353, 'P842000072', '2023-02-08', '07:49:10', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(354, 'K912207981', '2023-02-08', '07:49:18', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(355, 'P772000061', '2023-02-08', '07:49:51', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(356, 'K902308028', '2023-02-08', '07:51:18', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(357, 'K862108999', '2023-02-08', '07:51:25', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(358, 'K882207988', '2023-02-08', '07:51:30', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(359, 'P872300111', '2023-02-08', '07:51:37', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(360, 'K932207962', '2023-02-08', '07:51:43', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(361, 'K782207979', '2023-02-08', '07:52:00', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(362, 'K892208005', '2023-02-08', '07:52:06', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(363, 'P942200096', '2023-02-08', '07:52:19', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(364, 'P821900034', '2023-02-08', '07:54:32', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(365, 'K932207975', '2023-02-08', '07:55:36', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(366, 'P861900044', '2023-02-08', '07:56:39', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(367, 'P832200109', '2023-02-08', '07:56:47', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(368, 'P78581', '2023-02-08', '07:56:51', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(369, 'P822200099', '2023-02-08', '07:57:09', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(370, 'P802000051', '2023-02-08', '07:57:12', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(371, 'P782200107', '2023-02-08', '07:57:15', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(372, 'P842100083', '2023-02-08', '07:57:19', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(373, 'P862300110', '2023-02-08', '07:57:23', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(374, 'K872207962', '2023-02-08', '07:57:27', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(375, 'P932000054', '2023-02-08', '07:57:30', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(376, 'P891900050', '2023-02-08', '07:57:35', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(377, 'P80064', '2023-02-08', '07:57:53', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(378, 'P80028', '2023-02-08', '07:58:10', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir'),
(379, 'K772107962', '2023-02-08', '07:59:53', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi_event`
--

CREATE TABLE `materi_event` (
  `materi_id` int(10) NOT NULL,
  `nama_event` varchar(255) NOT NULL,
  `judul_materi` varchar(255) NOT NULL,
  `materi_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi_event`
--

INSERT INTO `materi_event` (`materi_id`, `nama_event`, `judul_materi`, `materi_file`) VALUES
(4, 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Materi Direktur - Rakernas 2023', '../admin/materi_event/Materi Direktur Rakernas 2023.pdf'),
(5, 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Materi Keuangan - Rakernas 2023', '../admin/materi_event/Materi Keuangan.pdf'),
(6, 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Materi Direktur Utama - Rakernas 2023', '../admin/materi_event/Materi Dirut.pdf'),
(8, 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Materi Divisi Bisnis Rental & Usla - Rakernas 2023', '../admin/materi_event/PROGRAM KERJA DIVISI BISNIS RENTAL & USLA RKAP 2023 NEW.pdf'),
(9, 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Materi Komisaris - Rakernas 2023', '../admin/materi_event/Rakernas POJ - 070223 OK.pdf'),
(10, 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Materi OJP - Rakernas 2023', '../admin/materi_event/Materi RAKERNAS OJP 2023 Semarang.pdf'),
(11, 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Materi Divisi SDM & Logistik - Rakernas 2023', '../admin/materi_event/007 Presentasi Divisi SDM & Logistik Tahun 2023 (4).pptx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merchandise`
--

CREATE TABLE `merchandise` (
  `no` int(10) NOT NULL,
  `nik` varchar(10) CHARACTER SET latin1 NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `event` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` enum('Belum Ambil','Sudah Ambil') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `merchandise`
--

INSERT INTO `merchandise` (`no`, `nik`, `tanggal`, `waktu`, `event`, `status`) VALUES
(27, 'K862108999', '2023-02-01', '09:12:21', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Sudah Ambil'),
(54, 'K902207962', '2023-01-28', '13:58:14', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Sudah Ambil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `nip` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` enum('DIREKTUR UTAMA','DIREKTUR','GENERAL MANAGER KEUANGAN & TI','GENERAL MANAGER SDM & LOGISTIK','GENERAL MANAGER OJP','GENERAL MANAGER RENTAL & USLA','KEPALA SPI','MANAGER TI','MANAGER KEUANGAN','MANAGER SDM','MANAGER LOGISTIK','MANAGER OJP','MANAGER RENTAL','ASISTEN MANAGER TI','ASISTEN MANAGER SPI','STAF','REGIONAL MANAGER','Plt REGIONAL MANAGER','MARKETING EXECUTIVE','AREA MANAGER') NOT NULL,
  `unit_kerja` enum('KANTOR PUSAT','PERWAKILAN MEDAN','PERWAKILAN BALIKPAPAN','PERWAKILAN BANDUNG','PERWAKILAN DENPASAR','PERWAKILAN JAKARTA 1','PERWAKILAN JAKARTA 2','PERWAKILAN MAKASSAR','PERWAKILAN MANADO','PERWAKILAN PALEMBANG','PERWAKILAN PEKANBARU','PERWAKILAN SEMARANG','PERWAKILAN SURABAYA','AREA BATAM','AREA LAMPUNG','AREA JAMBI','AREA JEMBER','AREA BANJARMASIN','REGIONAL JAKARTA','null') NOT NULL,
  `departemen` varchar(100) DEFAULT NULL,
  `sequence` int(10) DEFAULT NULL,
  `type_kamar` varchar(50) DEFAULT NULL,
  `no_kamar` int(10) DEFAULT NULL,
  `type_peserta` enum('PANITIA','PESERTA') NOT NULL,
  `jenis_kelamin` enum('pria','wanita','other') NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`id`, `nip`, `nama`, `jabatan`, `unit_kerja`, `departemen`, `sequence`, `type_kamar`, `no_kamar`, `type_peserta`, `jenis_kelamin`, `foto`) VALUES
(1, 'P80021', 'AGUS PRIYABODO', 'DIREKTUR UTAMA', 'KANTOR PUSAT', 'Direktur Utama', 1, 'Suite', 902, 'PESERTA', 'pria', '../peserta/foto_peserta/1 P80021.jpg'),
(2, 'P78622', 'YUL AFIAN', 'DIREKTUR', 'KANTOR PUSAT', 'Direktur ', 2, 'Suite', 903, 'PESERTA', 'pria', '../peserta/foto_peserta/2 P78622.jpg'),
(3, 'P80064', 'I WAYAN SUKERATA', 'GENERAL MANAGER KEUANGAN & TI', 'KANTOR PUSAT', 'GM Keuangan & TI', 3, 'Queen Single', 510, 'PESERTA', 'pria', '../peserta/foto_peserta/3 P80064.jpg'),
(4, 'P77267', 'LUCIA RETNA WIDARTI', 'GENERAL MANAGER SDM & LOGISTIK', 'KANTOR PUSAT', 'GM SDM & Log', 4, 'Queen Single', 803, 'PESERTA', 'wanita', '../peserta/foto_peserta/4 P77267.jpg'),
(5, 'P78581', 'DODIK SUGENG H', 'GENERAL MANAGER RENTAL & USLA', 'KANTOR PUSAT', 'GM Rental & USLA', 5, 'Queen Single', 410, 'PESERTA', 'pria', '../peserta/foto_peserta/5 P78581.jpg'),
(6, 'P721900032', 'NOVIAN INDRA JAYA', 'GENERAL MANAGER OJP', 'KANTOR PUSAT', 'GM Outs & JP', 6, 'Queen Single', 306, 'PESERTA', 'pria', '../peserta/foto_peserta/6 P721900032.jpg'),
(7, 'P80028', 'A. SIGIT AGUNG WIBOWO', 'KEPALA SPI', 'KANTOR PUSAT', 'Kepala SPI', 7, 'Queen Single', 502, 'PESERTA', 'pria', '../peserta/foto_peserta/7 P80028.jpg'),
(8, 'P841900002', 'DAMAR WICAKSONO', 'MANAGER OJP', 'KANTOR PUSAT', 'MANAGER Outs & JP', 8, 'Twin', 304, 'PESERTA', 'pria', '../peserta/foto_peserta/8 P841900002.jpg'),
(9, 'P861900044', 'SARIFFUDIN', 'MANAGER KEUANGAN', 'KANTOR PUSAT', 'MANAGER Keuangan', 9, 'Twin', 304, 'PESERTA', 'pria', '../peserta/foto_peserta/9 P861900044.jpg'),
(10, 'P791900025', 'ANTONIUS EKA WIBOWO', 'MANAGER LOGISTIK', 'KANTOR PUSAT', 'MANAGER Logistik', 10, 'Twin', 509, 'PESERTA', 'pria', '../peserta/foto_peserta/10 P791900025.jpg'),
(11, 'P741900033', 'UUS YUSWANDHIKA', 'MANAGER SDM', 'KANTOR PUSAT', 'MANAGER SDM', 11, 'Twin', 509, 'PESERTA', 'pria', '../peserta/foto_peserta/11 P741900033.jpg'),
(12, 'P821900034', 'ANDRI PRAYOGO', 'MANAGER TI', 'KANTOR PUSAT', 'DIVISI KEUANGAN & T.I', 12, 'Twin', 305, 'PESERTA', 'pria', '../peserta/foto_peserta/12 P821900034.jpg'),
(13, 'K772107962', 'ANDY WIJAYA', 'MANAGER RENTAL', 'KANTOR PUSAT', 'MANAGER Bisnis Rental & Usla', 13, 'Twin', 305, 'PESERTA', 'pria', '../peserta/foto_peserta/13 K772107962.jpg'),
(14, 'P862300110', 'MOHAMMAD RULI KUSUMAPUTRA', 'ASISTEN MANAGER SPI', 'KANTOR PUSAT', 'Asmen SPI', 14, 'Twin', 315, 'PESERTA', 'pria', '../peserta/foto_peserta/14 P862300110.jpg'),
(15, 'K952207964', 'R. EKA PRASETYA', 'ASISTEN MANAGER TI', 'KANTOR PUSAT', 'Asmen TI', 15, 'Twin', 315, 'PESERTA', 'pria', '../peserta/foto_peserta/15 K952207964.jpg'),
(16, 'P842000072', ' AGUS SUDRAJAT  ', 'REGIONAL MANAGER', 'KANTOR PUSAT', 'Regional Manager Jakarta', 16, 'Twin', 501, 'PESERTA', 'pria', '../peserta/foto_peserta/16 P842000072.jpg'),
(17, 'P911900048', ' IMAM SETIAWAN ', 'REGIONAL MANAGER', 'PERWAKILAN MEDAN', 'Regional Manager Medan', 17, 'Twin', 501, 'PESERTA', 'pria', '../peserta/foto_peserta/17 P911900048.jpg'),
(18, 'P721900016', ' ZULFAHMI ', 'REGIONAL MANAGER', 'PERWAKILAN PEKANBARU', 'Regional Manager Pekanbaru', 18, 'Twin', 707, 'PESERTA', 'pria', '../peserta/foto_peserta/18 P721900016.jpg'),
(19, 'P802100079', ' MARTUPA SINAGA ', 'Plt REGIONAL MANAGER', 'PERWAKILAN PALEMBANG', 'Regional Manager Palembang', 19, 'Twin', 707, 'PESERTA', 'pria', '../peserta/foto_peserta/19 P802100079.jpg'),
(20, 'P721900028', ' YUSRANSYAH ', 'Plt REGIONAL MANAGER', 'PERWAKILAN BALIKPAPAN', 'Regional Manager Balikpapan', 20, 'Twin', 503, 'PESERTA', 'pria', '../peserta/foto_peserta/20 P721900028.jpg'),
(21, 'P862000064', ' PASKALIS KEVIN LUMI ', 'Plt REGIONAL MANAGER', 'PERWAKILAN MANADO', 'Regional Manager Manado', 21, 'Twin', 503, 'PESERTA', 'pria', '../peserta/foto_peserta/21 P862000064.jpg'),
(22, 'P811900022', ' DUHI HARTO ', 'REGIONAL MANAGER', 'PERWAKILAN MAKASSAR', 'Regional Manager Makassar', 22, 'Twin', 1010, 'PESERTA', 'pria', '../peserta/foto_peserta/22 P811900022.jpg'),
(23, 'P782000065', ' BOBBY RISKHANA ST ', 'REGIONAL MANAGER', 'PERWAKILAN DENPASAR', 'Regional Manager Denpasar', 23, 'Twin', 1010, 'PESERTA', 'pria', '../peserta/foto_peserta/23 P782000065.jpg'),
(24, 'P882000053', ' MUHAMMAD RIZAL JAYADIWANGSA ', 'REGIONAL MANAGER', 'PERWAKILAN BANDUNG', 'Regional Manager Bandung', 24, 'Twin', 516, 'PESERTA', 'pria', '../peserta/foto_peserta/24 P882000053.jpg'),
(25, 'P771900014', ' ACHMAD SAD PRIYO WIDODO ', 'REGIONAL MANAGER', 'PERWAKILAN SEMARANG', 'Regional Manager Semarang', 25, 'Twin', 516, 'PESERTA', 'pria', '../peserta/foto_peserta/25 P771900014.jpg'),
(26, 'P832200109', ' YUARDI HENDRASTIAWAN ', 'REGIONAL MANAGER', 'PERWAKILAN SURABAYA', 'Regional Manager Surabaya', 26, 'Twin', 609, 'PESERTA', 'pria', '../peserta/foto_peserta/26 P832200109.jpg'),
(27, 'K932207975', 'ERNI SUMIATI', 'MARKETING EXECUTIVE', 'PERWAKILAN JAKARTA 2', 'Marketing Eksekutif Jakarta', 27, 'Twin', 1007, 'PESERTA', 'wanita', '../peserta/foto_peserta/27 K932207975.jpg'),
(28, 'K912207981', 'ARISTYO', 'MARKETING EXECUTIVE', 'PERWAKILAN JAKARTA 1', 'Marketing Eksekutif Jakarta', 28, 'Twin', 805, 'PESERTA', 'wanita', '../peserta/foto_peserta/28 K912207981.jpg'),
(29, 'K982109238', ' THERESIA YULINAR LUMBAN GAOL ', 'MARKETING EXECUTIVE', 'PERWAKILAN MEDAN', 'Marketing Eksekutif Medan', 29, 'Twin', 1003, 'PESERTA', 'wanita', '../peserta/foto_peserta/29 K982109238.jpg'),
(30, 'K932107963', ' MUHAMMAD SHOLEH ', 'MARKETING EXECUTIVE', 'PERWAKILAN PEKANBARU', 'Marketing Eksekutif Pekanbaru', 30, 'Twin', 805, 'PESERTA', 'pria', '../peserta/foto_peserta/30 K932107963.jpg'),
(31, 'P942200096', ' PHAMELLA PATRYCIA MONANGIN ', 'MARKETING EXECUTIVE', 'PERWAKILAN MANADO', 'Marketing Eksekutif Manado', 31, 'Twin', 1001, 'PESERTA', 'wanita', '../peserta/foto_peserta/31 P942200096.jpg'),
(32, 'K972207963', ' ANAK AGUNG ISTRI WIDYA ', 'MARKETING EXECUTIVE', 'PERWAKILAN DENPASAR', 'Marketing Eksekutif Denpasar', 32, 'Twin', 1001, 'PESERTA', 'wanita', '../peserta/foto_peserta/32 K972207963.jpg'),
(33, 'K902308028', 'ADI BASKARA PERWIRA', 'MARKETING EXECUTIVE', 'PERWAKILAN SEMARANG', 'Marketing Eksekutif Semarang', 33, 'Twin', 807, 'PESERTA', 'pria', '../peserta/foto_peserta/33 K902308028.jpg'),
(34, 'K912107963', ' FITRIA WIJAYANTI ', 'MARKETING EXECUTIVE', 'PERWAKILAN SURABAYA', 'Marketing Eksekutif Surabaya', 34, 'Twin', 1002, 'PESERTA', 'wanita', '../peserta/foto_peserta/34 K912107963.jpg'),
(35, 'K942207990', 'RILIA NUR SUCI OKTAFIANI', 'MARKETING EXECUTIVE', 'PERWAKILAN BANDUNG', 'Marketing Eksekutif Bandung', 35, 'Twin', 1002, 'PESERTA', 'wanita', '../peserta/foto_peserta/35 K942207990.jpg'),
(36, 'P782200107', 'MULIYADI', 'AREA MANAGER', 'PERWAKILAN MEDAN', 'Manager Area Banda Aceh', 36, 'Twin', 807, 'PESERTA', 'pria', '../peserta/foto_peserta/36 P782200107.jpg'),
(37, 'P802000051', 'AGUS SAVUTRA', 'AREA MANAGER', 'PERWAKILAN PEKANBARU', 'Manager Area Padang', 37, 'Twin', 303, 'PESERTA', 'pria', '../peserta/foto_peserta/37 P802000051.jpg'),
(38, 'P842100083', 'FAUZAN AFRIYANTO', 'AREA MANAGER', 'PERWAKILAN PEKANBARU', 'Manager Area Batam', 38, 'Twin', 303, 'PESERTA', 'pria', '../peserta/foto_peserta/38 P842100083.jpg'),
(39, 'P801900038', 'REKI JAYA PUTRA', 'AREA MANAGER', 'PERWAKILAN PALEMBANG', 'Manager Area Jambi', 39, 'Twin', 704, 'PESERTA', 'pria', '../peserta/foto_peserta/39 P801900038.jpg'),
(40, 'P812000060', 'YOHANDA PRAYOGA', 'AREA MANAGER', 'PERWAKILAN PALEMBANG', 'Manager Area Lampung', 40, 'Twin', 704, 'PESERTA', 'pria', '../peserta/foto_peserta/40 P812000060.jpg'),
(41, 'K872207962', 'JELDI MANDALIKA', 'AREA MANAGER', 'PERWAKILAN MANADO', 'Manager Area Manado', 41, 'Twin', 1016, 'PESERTA', 'pria', '../peserta/foto_peserta/41 K872207962.jpg'),
(42, 'P872300111', 'YOGA ANUGRAH', 'AREA MANAGER', 'PERWAKILAN BALIKPAPAN', 'Manager Area Banjarmasin', 42, 'Twin', 1016, 'PESERTA', 'pria', '../peserta/foto_peserta/42 P872300111.jpg'),
(43, 'K782207979', 'ROBBY TJIPTO ADJIE W', 'AREA MANAGER', 'PERWAKILAN BALIKPAPAN', 'Manager Area Pontianak', 43, 'Twin', 409, 'PESERTA', 'pria', '../peserta/foto_peserta/43 K782207979.jpg'),
(44, 'P772000061', 'MUH. NURASSALAM. A', 'AREA MANAGER', 'PERWAKILAN MANADO', 'Manager Area Palu', 44, 'Twin', 409, 'PESERTA', 'pria', '../peserta/foto_peserta/44 P772000061.jpg'),
(45, 'P822200099', 'RAHMAT ALI ', 'AREA MANAGER', 'PERWAKILAN MANADO', 'Manager Area Gorontalo', 45, 'Twin', 403, 'PESERTA', 'pria', '../peserta/foto_peserta/45 P822200099.jpg'),
(46, 'K812107962', 'EDO WIDODO', 'AREA MANAGER', 'KANTOR PUSAT', 'Manager Area Jakarta', 46, 'Twin', 403, 'PESERTA', 'pria', '../peserta/foto_peserta/46 K812107962.jpg'),
(47, 'P822200088', 'RICO FERDIAN IMAM ', 'AREA MANAGER', 'PERWAKILAN SURABAYA', 'Manager Area Surabaya', 47, 'Twin', 404, 'PESERTA', 'pria', '../peserta/foto_peserta/47 P822200088.jpg'),
(48, 'K862207989', 'CANDRA WIDIATMOKO', 'AREA MANAGER', 'PERWAKILAN SURABAYA', 'Manager Area Malang', 48, 'Twin', 404, 'PESERTA', 'pria', '../peserta/foto_peserta/48 K862207989.jpg'),
(49, 'K882207988', 'DEKKY FEBRIANTO M', 'AREA MANAGER', 'PERWAKILAN SEMARANG', 'Manager Area Jogya', 49, 'Twin', 504, 'PESERTA', 'pria', '../peserta/foto_peserta/49 K882207988.jpg'),
(50, 'K862108999', 'MUH. NOOR', 'AREA MANAGER', 'PERWAKILAN DENPASAR', 'Manager Area Ampenan', 50, 'Twin', 504, 'PESERTA', 'pria', '../peserta/foto_peserta/50 K862108999.jpg'),
(51, 'K892208005', 'YONAS ADU', 'AREA MANAGER', 'PERWAKILAN DENPASAR', 'Manager Area Kupang', 51, 'Twin', 609, 'PESERTA', 'pria', '../peserta/foto_peserta/51 K892208005.jpg'),
(52, 'P891900050', 'ZULFIKAR RIZKI', 'STAF', 'KANTOR PUSAT', 'Staf keuangan', 52, 'Twin', 605, 'PANITIA', 'pria', '../peserta/foto_peserta/52 P891900050.jpg'),
(53, 'P932000054', 'JUNIARTO PARLINDUNGAN SINAGA', 'STAF', 'KANTOR PUSAT', 'Staf keuangan', 53, 'Twin', 605, 'PANITIA', 'pria', '../peserta/foto_peserta/53 P932000054.jpg'),
(54, 'P922100077', 'SYAMSUL JAUHARI', 'STAF', 'KANTOR PUSAT', 'Staf Bisnis OJP', 54, 'Twin', 711, 'PANITIA', 'pria', '../peserta/foto_peserta/54 P922100077.jpg'),
(55, 'P892100078', 'MOCHAMAD NURHADI', 'STAF', 'KANTOR PUSAT', 'Staf Rental & Usla', 55, 'Twin', 711, 'PANITIA', 'pria', '../peserta/foto_peserta/55 P892100078.jpg'),
(56, 'P932200108', 'RICKI MARDIANTO', 'STAF', 'KANTOR PUSAT', 'Staf Bisnis Rental & Usla', 56, 'Twin', 415, 'PANITIA', 'pria', '../peserta/foto_peserta/56 P932200108.jpg'),
(57, 'K932207962', 'HANA RAGIL AYU ASMARA', 'STAF', 'KANTOR PUSAT', 'Sekretaris ', 57, 'Twin', 1007, 'PANITIA', 'wanita', '../peserta/foto_peserta/57 K932207962.jpg'),
(58, 'K902107963', 'ARI WIGUNA', 'STAF', 'KANTOR PUSAT', 'Staf Bisnis Rental & Usla', 58, 'Twin', 804, 'PANITIA', 'pria', '../peserta/foto_peserta/58 K902107963.jpg'),
(59, 'P881900005', 'DODDY KURNIA PUTRA', 'STAF', 'KANTOR PUSAT', 'Staf SDM', 59, 'Twin', 804, 'PANITIA', 'pria', '../peserta/foto_peserta/59 P881900005.jpg'),
(60, 'P861900015', 'AGUSTINUS TOMI ADITYA', 'STAF', 'PERWAKILAN SEMARANG', 'Staf Perwakilan Semarang', 60, 'Twin', 415, 'PANITIA', 'pria', '../peserta/foto_peserta/60 P861900015.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta_old`
--

CREATE TABLE `peserta_old` (
  `nip` varchar(16) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `no` int(11) NOT NULL,
  `type_kamar` varchar(50) NOT NULL,
  `no_kamar` int(11) NOT NULL,
  `type_peserta` enum('PANITIA','PESERTA') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peserta_old`
--

INSERT INTO `peserta_old` (`nip`, `nama`, `departemen`, `no`, `type_kamar`, `no_kamar`, `type_peserta`) VALUES
('111', 'tes1', 'Administration', 0, '', 0, 'PANITIA'),
('1111', 'tes2', 'Administration', 0, '', 0, 'PANITIA'),
('222', 'tes2', 'Administration', 0, '', 0, 'PANITIA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `uang_saku`
--

CREATE TABLE `uang_saku` (
  `no` int(10) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `event` varchar(255) NOT NULL,
  `status` enum('Belum Ambil','Sudah Ambil') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `uang_saku`
--

INSERT INTO `uang_saku` (`no`, `nik`, `tanggal`, `waktu`, `event`, `status`) VALUES
(5, 'K862108999', '2023-02-01', '09:16:14', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Sudah Ambil'),
(6, 'K902207962', '2023-01-28', '16:10:13', 'Rakernas PT PESONNA OPTIMA JASA Tahun 2023', 'Sudah Ambil');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `materi_event`
--
ALTER TABLE `materi_event`
  ADD PRIMARY KEY (`materi_id`);

--
-- Indeks untuk tabel `merchandise`
--
ALTER TABLE `merchandise`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indeks untuk tabel `peserta_old`
--
ALTER TABLE `peserta_old`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `uang_saku`
--
ALTER TABLE `uang_saku`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT untuk tabel `materi_event`
--
ALTER TABLE `materi_event`
  MODIFY `materi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `merchandise`
--
ALTER TABLE `merchandise`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `uang_saku`
--
ALTER TABLE `uang_saku`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
