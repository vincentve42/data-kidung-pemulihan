-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2026 at 05:44 AM
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
-- Database: `kidung_pemulihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `suplemen`
--

CREATE TABLE `suplemen` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `judul_asli` text NOT NULL,
  `chord` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suplemen`
--

INSERT INTO `suplemen` (`id`, `judul`, `isi`, `judul_asli`, `chord`) VALUES
(13, 'S. 001', 'Memuji Tuhan\n\n1. Bila kita memuji, Tuhan dapat mulia; Kita memuji nyaring, malaikat bersorak!\nKitalah kesaksian-Nya, biar dunia paham; Gemetar laskar Iblis, kabur tunggang langgang.\n\n2. Tutup mulut \'kan kalah, Iblis pun cemoohkan; Mari bangun serentak, usir Iblis jahat!\nSembahkan \"kurban pujian\", sorak kemenangan! Buang s\'mua tipis muka, membara bagi-Nya!\n\n3. Dunia tak pernah bantu persembahkan puji; Muliakan nama Tuhan, bersyukur abadi.\nMari puji selalu, tak perlulah izin, Sorak! Bebaskan rohmu! Kurnia-Nya tak terp\'ri!\n\n4. Saudara jangan diam! Saudari pun sorak! Siar kemenangan-Nya ke penjuru dunia!\nKini saat memuja, harus b\'rani korban! Girang kar\'na kurnia-Nya, seru, \"Haleluya!\"', '', ''),
(14, 'S. 002', 'Sandar Dia Itu Bahagia\n\n1. Tengok, s\'mua bangsa berkumpul, reka-reka yang sia-sia; Raja serta bawahannya, sekata lawan Tuhan.\n\"Putuskan semua belenggu, tali ikatan juga;\" Raja dunia menantang Allah dan Sang Terurap.\n\n2. Dia yang duduk di surga, menertawai m\'reka; Dalam murka Dia bersabda, terkejutlah mereka.\nDi Sion, gunung yang kudus, Allah melantik Raja, Ini ketetapan Allah, p\'ringatan bagi m\'reka.\n\n3. Kini Kristus Sang Terurap, siarkan murad Allah; \"Kau Anak-Ku, hari ini Kau telah Kulahirkan.\nBangsa-bangsa Kuberikan jadi milik pusaka; Menggunakan tongkat besi, Kau remukkan mereka.\"\n\n4. \"Berhikmatlah, raja-raja! B\'lajarlah hakim-hakim! Ibadahlah kepada-Nya dengan takut dan gentar.\nCium kaki-Nya d\'ngan gentar agar kau tak binasa, Yang sandar Dia bahagia!\" Mari kita bergita!\n\n5. O, puji Dia, kita nampak, Sang Terurap nan tunggal; Berpaling dari yang hampa, cium Putra tersayang.\n\"Sandar Dia, bahagia!\" Bukan \"berpegang taurat\"; Beriman pada Sang Bangkit, berkat kekal tak sudah.', '', ''),
(15, '3', 'Di Bentala Nama Yehova Terelok\n\n1. Di bentala, ya Yehova, eloklah nama-Mu! Bangsa-bangsa di mana jua, masyhurkan nama-Mu.\nMulut bayi semuanya, memuji nama-Mu; Musuh-musuh terbungkamlah, kubunya pun hancur.\n\n2. Ketika ku tengok pada jagat karya Tuhan, Surya, bulan, dan s\'mua bintang, kisahkan hikmat-Mu.\nManusia terbilang apa, Tuhan jaga \'tiasa? Dalam rencana-Mu kekal, Kau b\'rikan kurnia-Mu!\n\n3. Tuhan Yesus, Kau-lah Allah baur d\'ngan manusia, Mengenakan tubuh daging dan rendahkan diri.\nKini Kau-lah Sang Penguasa, bermahkota mulia, Demi Tubuh-Mu berdaulat, s\'mua takluklah kini!\n\n4. Firman menjelma manusia, mati, bangkit, t\'rangkat; Kuasa, Tubuh, Kerajaan, s\'mua t\'lah Kau genapkan.\nD\'ngan pekerjaan ilahi Kau bangun pujian; Girang luap hati kami, puji Kau yang layak.\n\n5. O, hari bah\'gia s\'gra tiba, s\'mua mulut bergita! Tapi kini dalam g\'reja, nikmatnya ku rasa.\nO, eloklah di bentala, nama-Mu Yehova! Biar bangsa-bangsa di dunia, siar nama-Mu indah!', '', ''),
(16, '4', 'Kasih Karunia-Mu Sepanjang Usia\n\nAmarah-Mu sekejap mata b\'laka; Karunia-Mu sepanjang usia. Semalam ratap sedu, pagi sorak riang.', '', ''),
(17, '5', 'Kau Ikat Dengan Sukacita\n\nRatapku Kau ubah menjadi tarian, kain kabungku Kau lepas, Ratapku Kau ubah menjadi tarian, Kau beri sukacita.\nGirang, rohku memuji-Mu, tak bersudah TUHAN ALLAH-ku. Ya Allah-ku, syukur pada-Mu, hingga kekal!', '', ''),
(18, '6', 'Luapkan Kata-Kata Indah\n\n1. Hatiku meluapkan kata-kata indah; Aku hendak sampaikan sajak pada Raja.\nLidahku bagai pena juru tulis pintar, Elok, Mempelai Laki, ku cinta, ku sayang.\n\n2. Elok-Mu, Tuhan Yesus, lampaui segala; Bajik-Mu tiada tara, lampaui s\'mua insan.\nMulut-Mu mencurahkan, kemurahan limpah, Allah berkati \'tiasa, selama-lamanya.\n\n3. Kau Perwira perkasa, melaju d\'ngan gagah; Mulia, menang mutlak, semarak, wibawa.\nSemua bangsa rebah, siapa bisa halang? Panah-Mu tajam, tepat, tembus jantung lawan.\n\n4. O, takhta-Mu ya, Allah, kekal selamanya; Kuasa dan K\'rajaan-Mu, lurus pun sempurna.\nAllah, yakni Allah-Mu, urapi diri-Mu, Melebihi mitra-Mu, Engkau sungguh patut!\n\n5. Mur, kemenyan, dan teja, aroma jubah-Mul; Wafat-Mu dan bangkit-Mu, \'nyatakan karya-Mu.\nDari gereja lokal, pujian membubung, Pujian tambah syukur, puaslah hati-Mu.', '', ''),
(19, '7', 'Gereja Yang Mulia Dan Raja Yang Mulia\n\n1. Ratu berhias \'mas Ofir, di sisi kanan-Mu; Putri Raja, diapit, para putri sanjung.\nG\'reja mulia sepadan dengan Raja mulia; Genap putri (kaum saleh), tampilkan mulia-Mu.\n\n2. Lihatlah, wahai putri, sendengkan t\'lingamu; Lupakanlah bangsamu dan rumah ayahmu.\nCantikmu pasti muncul, menarik Rajamu; Sujudlah kepada-Nya, kar\'na Dia Tuanmu!\n\n3. Putri bejubah indah, bersulamkan emas; Dalam mahligai Raja, s\'marak tiada tara!\nKemuliaan Allah, jadi busananya; Hidup dan p\'rilakunya, menampilkan Allah.\n\n4. Bawa ke depan Raja, pakaian bersulam; Lenan putih nan indah, tampil kebenaran.\nRoh Kudus menyulamkan Kristus ke atasnya; Kenakan jubah mulia, diperkenan Raja.\n\n5. Tampak Raja rupawan, betapa senangnya! Mari memuji lantang, gita riang kekal.\nMenyembah pada Raja, ratu pun megahlah; Dalam segala nikmat, s\'mua mulia bagi-Nya.', '', ''),
(20, '8', 'Di Gunung Kudus-Nya\n\nMaha agung, dalam neg\'ri Allah. Di gunung kudus-Nya, patutlah memuji lantang!\nGunung Sion di utara, menjulang permai indah, Kegirangan seluruh bumi, kota Raja Besar, Kegirangan seluruh bumi, kota Raja Besar.', '', ''),
(21, '9', 'Allah Bangkit Musuh Terserak\n\n1. Dia bangkit, musuh terserak, pembenci-Nya larilah; Luluh lantak orang jahat, depan hadirat Allah.\nGiranglah orang benar, sorak menang semarak, Nyanyi puji, sorak lantang, tinggikan nama-Nya.\n\n2. Lintas padang pedati-Nya, bebaskan kaum papa, Yatim piatu dirawat, janda diperhatikan.\nDalam ruang kudus-Nya, kurnia mengagumkan! Haleluya, haleluya, haleluya, amin!\n\n3. Orang yang sebatang kara, menemukan rumahnya; Yang tertawan lepas sudah, nikmat berkat tak batas.\nBagi kawanan domba, berkat, rahmat, sedia! Haleluya, haleluya, haleluya, amin!\n\n4. Tuhan kini menang megah, sebarkan kejayaan; Kaum wanita siarkan, \"Semburat raja lawan!\"\nTanpa peluh dan lelah, bagi-bagi jarahan! Haleluya, haleluya, haleluya, amin!  \n\n5. Tengok, Kristus t\'rangkat sudah, bawa banyak tawanan; Itulah pemberian-Nya, bagi Allah dan insan.\nKita semua adalah tawanan yang terubah! Haleluya, haleluya, haleluya, amin!\n\n6. Puji syukur sampai kekal, suplai indah tak kurang; Dia-lah Allah Penyelamat, suara pujian meluas!\nBerwisata ke barzakh, kepala musuh pecah! Haleluya, haleluya, haleluya, amin!\n\n7. Allah, kami telah nampak, di ruang kudus - Kau jalan; Parade nan menang, jaya, serta musik iringan.\nSuara pujian di depan, panjat ulang-berulang, Haleluya, haleluya, haleluya, amin!\n\n8. Bungsu - Benyamin di depan, Yehuda menyusulnya; Putra duka di kanan-Nya, singa pemegang kuasa.\nZebulon dan Naftali, warta kabar gembira: Haleluya, haleluya, haleluya, amin!\n\n9. Hai, umat-Nya, kekuatanmu dari bait nan mulia; Mohon Allah menguatkan, sampai kami tergenap.\nPuji syukur tak henti, bergema ujung bumi; Haleluya, haleluya, haleluya, amin!', '', ''),
(22, '10', 'Mari Bersorak Memuji Tuhan\n\nBersorak-sorak bagi TUHAN, hai seluruh bumi! Dengan rela layani TUHAN, datanglah, bersorak!\nKenallah Dia-lah Allah, kitalah ciptaan-Nya, juga milik-Nya; Kita umat juga kawanan domba-Nya.\nSambil syukur masuk gerbang-Nya, ke dalam halaman-Nya. Bersyukurlah kepada Dia, junjung nama-Nya;\nDia-lah Sang Bijak, kekal cinta kemurahan-Nya, Setia-Nya pada kita hingga kekal.', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `suplemen`
--
ALTER TABLE `suplemen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `suplemen`
--
ALTER TABLE `suplemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
