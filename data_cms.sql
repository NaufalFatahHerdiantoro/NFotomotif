-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 11:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `caraousel`
--

CREATE TABLE `caraousel` (
  `id_caraousel` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caraousel`
--

INSERT INTO `caraousel` (`id_caraousel`, `judul`, `foto`) VALUES
(4, '2', '20241123091158.jpg'),
(6, '1', '20241123115306.jpg'),
(7, '3', '20241210235750.jpg'),
(8, 'Drifting', '20241210235759.jpg'),
(9, 'mobil', '20241210235809.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Sejarah'),
(2, 'Body Kit'),
(3, 'Mobil'),
(4, 'Teknik');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `judul_website` varchar(200) NOT NULL,
  `profil_website` text NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_wa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `facebook`, `email`, `alamat`, `no_wa`) VALUES
(1, 'NFotomotif', 'Beginner', 'https://www.instagram.com/jakarta.keras', 'https://www.facebook.com/Adolf Wind', 'saikik737@gmail.com', 'karanganyar', '085187084248');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`) VALUES
(3, 'Drifting', 'Drifting adalah olahraga otomotif yang menuntut pengemudi untuk mengendarai mobil dengan kecepatan tinggi sambil melakukan teknik berkendara yang sangat baik. Artikel ini memberikan pengertian, sejarah, dan teknik dasar drifting.\r\n\r\nDrifting adalah teknik mengemudi ekstrim yang melibatkan melaju dengan posisi miring. Sejarahnya berasal dari Jepang pada tahun 1960-an. Teknik dasarnya melibatkan slip ban belakang untuk menciptakan posisi miring.\r\n\r\nMenjadi salah satu olahraga otomotif yang cukup banyak diminati, Drifting tengah menjadi pembicaraan saat ini. Olahraga yang mengharuskan pada pengemudinya melajukan kendaraan dengan kecepatan tinggi namun tetap menggunakan teknik berkendara dengan sangat baik.\r\n\r\nTentu ini menjadi kesulitan tersendiri dari cabang olahraga yang mengharapkan pesertanya melaku dalam posisi miring.\r\n\r\nKompetisi olahraga drifting memang lazim diselenggarakan di berbagai Negara, tak terkecuali Indonesia. Dengan penekanan pada teknik yang sempurna, kompetisi olahraga ini sengaja memberikan hiburan tersendiri pada para pecintanya.\r\n\r\nNamun sudahkan Anda mengetahui beberapa informasi mengenai difting mobil, terutama pada pengertian drifting mobil.\r\n\r\nTeknik drift pertama kali dipopulerkan oleh Kunimitsu Takahashi pada era 1970-an. Hal ini membuatnya meraih banyak piala kejuaraan dan diikuti banyak fans yang suka melihat asap tebal keluar dari ban saat menikung.\r\n\r\nKeiichi Tsuchiya, yang dijuluki dengan Drift King, tertarik dengan teknik ciptaan Takahashi ini. Tsuchiya pun mulai berlatih di jalanan pegunungan di Jepang. Dengan cepat, dia pun meraih reputasi yang baik di dunia balap. Pada tahun 1988, Tsuchiya akhirnya membuat pertandingan drifting yang disebut dengan D1 Grand Prix.\r\n\r\nDari sini, berkembanglah pertandingan drift hingga ke luar negeri, termasuk Indonesia. Mulai dari Irish Drift Championship (Irlandia), World Drift GP, British Drift Championship (Inggris), World Drift Series (Cina), Formula Drift Asia (Asia Tenggara), NZ Drift Series (Selandia Baru), Australian Drifting Grand Prix (Australia), dan Greek Drift Championship (Yunani).', '20241007154259.jpg', 'Drifting', '4', '2024-12-10', 'admin'),
(7, 'HKS', 'Bodykit HKS\r\nBodykit HKS dirancang untuk meningkatkan performa kendaraan, terutama dari segi aerodinamika dan efisiensi. Desainnya modern dan sporty, cocok untuk penggemar performa tinggi.\r\n\r\nKelebihan:\r\n\r\nFokus pada peningkatan aerodinamika.\r\nMaterial berkualitas tinggi yang ringan dan tahan lama.\r\nCocok untuk pengendara yang mengutamakan performa dan kecepatan.\r\nKekurangan:\r\n\r\nDesain cenderung lebih minimalis dibandingkan Rocket Bunny.\r\nHarga premium, lebih mahal dibanding beberapa bodykit lain.\r\nTipe Paling Populer:\r\nHKS Kansai, digunakan pada mobil seperti Nissan GT-R dan Toyota Supra, yang mengedepankan performa aerodinamika tinggi.\r\n\r\n', '20241211064659.jpg', 'HKS', '2', '2024-12-12', 'admin'),
(8, 'Rocket Bunny', 'Bodykit Rocket Bunny\r\nBodykit Rocket Bunny dikenal dengan desain widebody yang dramatis dan overfender khas, memberikan kesan unik dan futuristik. Cocok untuk mereka yang ingin mobilnya tampil standout di jalanan atau event otomotif.\r\n\r\nKelebihan:\r\n\r\nDesain yang sangat mencolok dan unik.\r\nPilihan yang fleksibel untuk berbagai jenis mobil.\r\nMembawa gaya modern yang estetis dengan sentuhan street-race.\r\nKekurangan:\r\n\r\nTidak selalu meningkatkan performa aerodinamika secara signifikan.\r\nInstalasi kompleks, membutuhkan modifikasi bodi tambahan.\r\nTipe Paling Populer:\r\nRocket Bunny V2 untuk Toyota GT86 atau Subaru BRZ, dengan overfender lebar dan tampilan agresif yang menjadi ciri khasnya.', '20241211065023.jpg', 'Rocket-Bunny', '2', '2024-12-11', 'admin'),
(9, 'Apa itu JDM', 'Kisah mobil JDM dimulai pada tahun-tahun awal industri otomotif Jepang, ketika negara ini mulai membangun dan mengembangkan kendaraan sendiri. Pada masa itu, mobil-mobil produksi Jepang dirancang untuk memenuhi kebutuhan domestik, dengan pertimbangan kondisi jalan, regulasi, dan preferensi konsumen setempat. Ini menciptakan fondasi konsep Japanese Domestic Market yang kemudian menjadi landasan bagi mobil-mobil JDM.\r\nTidak dapat disangkal bahwa era 80-an hingga awal 2000-an merupakan puncak kejayaan mobil JDM. Pada periode ini, mobil-mobil JDM seperti Toyota Supra, Nissan Skyline GT-R, dan Mazda RX-7 menjadi bintang di jalanan dan sirkuit balap. Mereka menawarkan desain futuristik, teknologi inovatif, dan performa yang menggebrak. Namun, yang membuat mereka benar-benar istimewa adalah kemampuan modifikasi yang tak tertandingi. Banyak penggemar otomotif menemukan gairah dalam memodifikasi mobil-mobil JDM untuk meningkatkan kinerja dan gaya.\r\nMobil JDM terkenal dengan performa mesinnya yang bertenaga dan handling yang gesit. Hal ini dikarenakan pabrikan jepang fokus pada pengembangan teknologi mesin dan desain yang berorientasi pada performa.\r\nMobil JDM memiliki desain yang unik dan menarik, berbeda dengan mobil mainstream yang cenderung monoton. Desain ini sering terinspirasi dari budaya pop jepang dan anime, yang membuatnya semakin digemari.\r\nKarena hanya diproduksi untuk pasar Jepang, Mobil JDM menjadi langka di luar Jepang. Hal ini meningkatkan nilai koleksinya dan membuatnya semakin diminati oleh para pecinta otomotif.', '20241211065239.jpg', 'Apa-itu-JDM', '1', '2024-12-11', 'admin'),
(11, 'Mitsubishi Lancer Evo VI ', 'Mitsubishi Lancer Evolution VI (CP9A) \r\n\r\nMitsubishi Lancer Evolution VI, atau biasa disebut \"Evo VI,\" adalah salah satu model ikonik dalam jajaran Lancer Evolution. Diproduksi pada 1999 hingga 2001, mobil ini dirancang sebagai kendaraan reli yang juga legal di jalan raya. Berikut adalah deskripsi spesifikasi utamanya:  \r\n\r\n- Mesin:  \r\n  - Tipe: 4G63T 2.0L DOHC Inline-4 turbocharged  \r\n  - Tenaga: 276 hp (280 PS) 6500 rpm  \r\n  - Torsi: 373 Nm 3000 rpm  \r\n  - Sistem turbo: Turbocharger dengan intercooler  \r\n\r\n- Transmisi:  \r\n  - Manual 5-percepatan  \r\n  - Sistem penggerak AWD (All-Wheel Drive)  \r\n\r\n- Suspensi dan Handling:  \r\n  - Suspensi depan dan belakang: Independent MacPherson strut  \r\n  - Active Yaw Control (AYC) untuk pengendalian optimal di tikungan  \r\n  - Limited Slip Differential (LSD)  \r\n\r\n- Dimensi dan Berat:  \r\n  - Panjang: 4350 mm  \r\n  - Lebar: 1770 mm  \r\n  - Tinggi: 1415 mm  \r\n  - Wheelbase: 2510 mm  \r\n  - Berat: Sekitar 1360 kg  \r\n\r\n- Kelebihan:  \r\n  - Performa tinggi dengan akselerasi cepat dan handling tajam.  \r\n  - Teknologi Active Yaw Control memberikan kestabilan luar biasa saat bermanuver.  \r\n  - Desain agresif dengan bodykit aerodinamis khas reli.  \r\n\r\n- Kekurangan:  \r\n  - Konsumsi bahan bakar relatif boros untuk pemakaian harian.  \r\n  - Kabin terasa sederhana dibandingkan mobil modern.  \r\n\r\n- Varian Spesial:  \r\n  - RS: Versi ringan untuk kebutuhan reli.  \r\n  - Tommi Makinen Edition (TME): Edisi spesial dengan peningkatan pada suspensi, eksterior, dan interior, dibuat untuk menghormati juara reli dunia Tommi Mäkinen.  \r\n\r\nEvo VI menjadi salah satu generasi yang paling dikenang oleh penggemar otomotif karena kombinasi performa, reliabilitas, dan warisannya di dunia reli.', '20241211070426.jpg', 'Mitsubishi-Lancer-Evo-VI-', '3', '2024-12-11', 'admin'),
(13, 'Toyota Supra MK4', 'Toyota Supra MK4 (A80)\r\nToyota Supra MK4, atau A80, adalah salah satu mobil sport legendaris yang diproduksi antara tahun 1993 hingga 2002. Mobil ini terkenal berkat mesinnya yang luar biasa, yakni 2JZ-GTE 3.0L Inline-6 twin-turbocharged, yang mampu menghasilkan tenaga hingga 276 hp (standar Jepang) dan mudah dimodifikasi hingga ratusan tenaga kuda tambahan. Supra MK4 hadir dengan pilihan transmisi manual 6-percepatan Getrag atau otomatis 4-percepatan.\r\n\r\nMobil ini dirancang untuk menawarkan performa yang tinggi dengan aerodinamika canggih, seperti spoiler belakang besar yang ikonik untuk menjaga downforce. Suspensi independen dengan double-wishbone di keempat roda memberikan pengendalian yang presisi, membuatnya menjadi pilihan utama dalam dunia balap, termasuk drag race dan sirkuit. Popularitasnya semakin meningkat berkat kemunculannya di film The Fast and the Furious. Kekurangannya, Supra MK4 memiliki harga yang semakin melambung di pasar kolektor, dan konsumsi bahan bakarnya tergolong tinggi.\r\n\r\n', '20241211071147.jpg', 'Toyota-Supra-MK4', '3', '2024-12-11', 'admin'),
(14, 'Mazda Rx-7', 'Mazda RX-7 (FD3S)\r\nMazda RX-7 FD3S, diproduksi antara tahun 1992 hingga 2002, adalah mobil sport yang terkenal karena menggunakan mesin rotary 13B-REW twin-turbocharged, mesin ringan yang unik dengan suara khas. Mesin ini mampu menghasilkan tenaga 276 hp (standar Jepang) dengan bobot mobil hanya sekitar 1.250 kg, memberikan rasio power-to-weight yang mengesankan dan handling yang tajam.\r\n\r\nDesain RX-7 menonjolkan siluet aerodinamis dengan lampu pop-up yang ikonik, memberikan kesan futuristik dan sporty. Sistem suspensi multilink serta distribusi berat 50:50 membuatnya sangat lincah di tikungan, menjadikannya favorit di balap sirkuit dan drift. Namun, mesin rotary dikenal membutuhkan perawatan intensif dan memiliki konsumsi bahan bakar yang kurang efisien. Popularitas RX-7 juga melonjak berkat kemunculannya di berbagai media, termasuk seri anime dan film.\r\n\r\n', '20241211071557.jpg', 'Mazda-Rx-7', '3', '2024-12-12', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`) VALUES
(1, 'admin', 'admin', '12345', 'Admin'),
(2, 'user', 'user', '2024', 'Kontributor'),
(7, 'anonim', 'welcome', '2333', 'Admin'),
(8, 'npc', 'alone', '1111', 'Kontributor'),
(12, 'fal', 'coba', '123', 'Admin'),
(13, 'saya3', 'coba', '123', 'User'),
(14, 'sayaaa', 'aku', '113', 'User'),
(15, 'aku2', 'aku', '123', 'User'),
(16, 'aku2', 'aku', '555', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caraousel`
--
ALTER TABLE `caraousel`
  ADD PRIMARY KEY (`id_caraousel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caraousel`
--
ALTER TABLE `caraousel`
  MODIFY `id_caraousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
