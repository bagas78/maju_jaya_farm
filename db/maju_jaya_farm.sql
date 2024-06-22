-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 09:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maju_jaya_farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_absen`
--

CREATE TABLE `t_absen` (
  `absen_id` int(11) NOT NULL,
  `absen_karyawan` int(11) DEFAULT NULL,
  `absen_upah` text DEFAULT NULL,
  `absen_jam` time DEFAULT NULL,
  `absen_tanggal` date DEFAULT NULL,
  `absen_status` enum('masuk','tidak') DEFAULT NULL,
  `absen_bayar` enum('sudah','belum') DEFAULT 'belum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_absen`
--

INSERT INTO `t_absen` (`absen_id`, `absen_karyawan`, `absen_upah`, `absen_jam`, `absen_tanggal`, `absen_status`, `absen_bayar`) VALUES
(29, 7, '80000', '02:14:32', '2024-06-23', 'masuk', 'sudah'),
(30, 6, '70000', '02:14:40', '2024-06-23', 'masuk', 'belum'),
(31, 5, '0', '02:14:43', '2024-06-23', 'tidak', 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `t_bank`
--

CREATE TABLE `t_bank` (
  `bank_id` int(11) NOT NULL,
  `bank_kode` text NOT NULL,
  `bank_nama` text NOT NULL,
  `bank_tanggal` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_bank`
--

INSERT INTO `t_bank` (`bank_id`, `bank_kode`, `bank_nama`, `bank_tanggal`) VALUES
(1, '002', 'BANK BRI', '2022-11-30'),
(2, '003', 'BANK EKSPOR INDONESIA', '2022-11-30'),
(3, '008', 'BANK MANDIRI', '2022-11-30'),
(4, '009', 'BANK BNI', '2022-11-30'),
(5, '427', 'BANK BNI SYARIAH', '2022-11-30'),
(6, '011', 'BANK DANAMON', '2022-11-30'),
(7, '013', 'PERMATA BANK', '2022-11-30'),
(8, '014', 'BANK BCA', '2022-11-30'),
(9, '016', 'BANK BII', '2022-11-30'),
(10, '019', 'BANK PANIN', '2022-11-30'),
(11, '020', 'BANK ARTA NIAGA KENCANA', '2022-11-30'),
(12, '022', 'BANK NIAGA', '2022-11-30'),
(13, '023', 'BANK BUANA IND', '2022-11-30'),
(14, '026', 'BANK LIPPO', '2022-11-30'),
(15, '028', 'BANK NISP', '2022-11-30'),
(16, '030', 'AMERICAN EXPRESS BANK LTD', '2022-11-30'),
(17, '031', 'CITIBANK N.A.', '2022-11-30'),
(18, '032', 'JP. MORGAN CHASE BANK, N.A.', '2022-11-30'),
(19, '033', 'BANK OF AMERICA, N.A', '2022-11-30'),
(20, '034', 'ING INDONESIA BANK', '2022-11-30'),
(21, '036', 'BANK MULTICOR TBK.', '2022-11-30'),
(22, '037', 'BANK ARTHA GRAHA', '2022-11-30'),
(23, '039', 'BANK CREDIT AGRICOLE INDOSUEZ', '2022-11-30'),
(24, '040', 'THE BANGKOK BANK COMP. LTD', '2022-11-30'),
(25, '041', 'THE HONGKONG & SHANGHAI B.C.', '2022-11-30'),
(26, '042', 'THE BANK OF TOKYO MITSUBISHI UFJ LTD', '2022-11-30'),
(27, '045', 'BANK SUMITOMO MITSUI INDONESIA', '2022-11-30'),
(28, '046', 'BANK DBS INDONESIA', '2022-11-30'),
(29, '047', 'BANK RESONA PERDANIA', '2022-11-30'),
(30, '048', 'BANK MIZUHO INDONESIA', '2022-11-30'),
(31, '050', 'STANDARD CHARTERED BANK', '2022-11-30'),
(32, '052', 'BANK ABN AMRO', '2022-11-30'),
(33, '053', 'BANK KEPPEL TATLEE BUANA', '2022-11-30'),
(34, '054', 'BANK CAPITAL INDONESIA, TBK.', '2022-11-30'),
(35, '057', 'BANK BNP PARIBAS INDONESIA', '2022-11-30'),
(36, '058', 'BANK UOB INDONESIA', '2022-11-30'),
(37, '059', 'KOREA EXCHANGE BANK DANAMON', '2022-11-30'),
(38, '060', 'RABOBANK INTERNASIONAL INDONESIA', '2022-11-30'),
(39, '061', 'ANZ PANIN BANK', '2022-11-30'),
(40, '067', 'DEUTSCHE BANK AG.', '2022-11-30'),
(41, '068', 'BANK WOORI INDONESIA', '2022-11-30'),
(42, '069', 'BANK OF CHINA LIMITED', '2022-11-30'),
(43, '076', 'BANK BUMI ARTA', '2022-11-30'),
(44, '087', 'BANK EKONOMI', '2022-11-30'),
(45, '088', 'BANK ANTARDAERAH', '2022-11-30'),
(46, '089', 'BANK HAGA', '2022-11-30'),
(47, '093', 'BANK IFI', '2022-11-30'),
(48, '095', 'BANK CENTURY, TBK.', '2022-11-30'),
(49, '097', 'BANK MAYAPADA', '2022-11-30'),
(50, '110', 'BANK JABAR', '2022-11-30'),
(51, '111', 'BANK DKI', '2022-11-30'),
(52, '112', 'BPD DIY', '2022-11-30'),
(53, '113', 'BANK JATENG', '2022-11-30'),
(54, '114', 'BANK JATIM', '2022-11-30'),
(55, '115', 'BPD JAMBI', '2022-11-30'),
(56, '116', 'BPD ACEH', '2022-11-30'),
(57, '117', 'BANK SUMUT', '2022-11-30'),
(58, '118', 'BANK NAGARI', '2022-11-30'),
(59, '119', 'BANK RIAU', '2022-11-30'),
(60, '120', 'BANK SUMSEL', '2022-11-30'),
(61, '121', 'BANK LAMPUNG', '2022-11-30'),
(62, '122', 'BPD KALSEL', '2022-11-30'),
(63, '123', 'BPD KALIMANTAN BARAT', '2022-11-30'),
(64, '124', 'BPD KALTIM', '2022-11-30'),
(65, '125', 'BPD KALTENG', '2022-11-30'),
(66, '126', 'BPD SULSEL', '2022-11-30'),
(67, '127', 'BANK SULUT', '2022-11-30'),
(68, '128', 'BPD NTB', '2022-11-30'),
(69, '129', 'BPD BALI', '2022-11-30'),
(70, '130', 'BANK NTT', '2022-11-30'),
(71, '131', 'BANK MALUKU', '2022-11-30'),
(72, '132', 'BPD PAPUA', '2022-11-30'),
(73, '133', 'BANK BENGKULU', '2022-11-30'),
(74, '134', 'BPD SULAWESI TENGAH', '2022-11-30'),
(75, '135', 'BANK SULTRA', '2022-11-30'),
(76, '145', 'BANK NUSANTARA PARAHYANGAN', '2022-11-30'),
(77, '146', 'BANK SWADESI', '2022-11-30'),
(78, '147', 'BANK MUAMALAT', '2022-11-30'),
(79, '151', 'BANK MESTIKA', '2022-11-30'),
(80, '152', 'BANK METRO EXPRESS', '2022-11-30'),
(81, '153', 'BANK SHINTA INDONESIA', '2022-11-30'),
(82, '157', 'BANK MASPION', '2022-11-30'),
(83, '159', 'BANK HAGAKITA', '2022-11-30'),
(84, '161', 'BANK GANESHA', '2022-11-30'),
(85, '162', 'BANK WINDU KENTJANA', '2022-11-30'),
(86, '164', 'HALIM INDONESIA BANK', '2022-11-30'),
(87, '166', 'BANK HARMONI INTERNATIONAL', '2022-11-30'),
(88, '167', 'BANK KESAWAN', '2022-11-30'),
(89, '200', 'BANK TABUNGAN NEGARA (PERSERO)', '2022-11-30'),
(90, '212', 'BANK HIMPUNAN SAUDARA 1906, TBK .', '2022-11-30'),
(91, '213', 'BANK TABUNGAN PENSIUNAN NASIONAL', '2022-11-30'),
(92, '405', 'BANK SWAGUNA', '2022-11-30'),
(93, '422', 'BANK JASA ARTA', '2022-11-30'),
(94, '426', 'BANK MEGA', '2022-11-30'),
(95, '427', 'BANK JASA JAKARTA', '2022-11-30'),
(96, '441', 'BANK BUKOPIN', '2022-11-30'),
(97, '451', 'BANK SYARIAH MANDIRI', '2022-11-30'),
(98, '459', 'BANK BISNIS INTERNASIONAL', '2022-11-30'),
(99, '466', 'BANK SRI PARTHA', '2022-11-30'),
(100, '472', 'BANK JASA JAKARTA', '2022-11-30'),
(101, '484', 'BANK BINTANG MANUNGGAL', '2022-11-30'),
(102, '485', 'BANK BUMIPUTERA', '2022-11-30'),
(103, '490', 'BANK YUDHA BHAKTI', '2022-11-30'),
(104, '491', 'BANK MITRANIAGA', '2022-11-30'),
(105, '494', 'BANK AGRO NIAGA', '2022-11-30'),
(106, '498', 'BANK INDOMONEX', '2022-11-30'),
(107, '501', 'BANK ROYAL INDONESIA', '2022-11-30'),
(108, '503', 'BANK ALFINDO', '2022-11-30'),
(109, '506', 'BANK SYARIAH MEGA', '2022-11-30'),
(110, '513', 'BANK INA PERDANA', '2022-11-30'),
(111, '517', 'BANK HARFA', '2022-11-30'),
(112, '520', 'PRIMA MASTER BANK', '2022-11-30'),
(113, '521', 'BANK PERSYARIKATAN INDONESIA', '2022-11-30'),
(114, '525', 'BANK AKITA', '2022-11-30'),
(115, '526', 'LIMAN INTERNATIONAL BANK', '2022-11-30'),
(116, '531', 'ANGLOMAS INTERNASIONAL BANK', '2022-11-30'),
(117, '523', 'BANK DIPO INTERNATIONAL', '2022-11-30'),
(118, '535', 'BANK KESEJAHTERAAN EKONOMI', '2022-11-30'),
(119, '536', 'BANK UIB', '2022-11-30'),
(120, '542', 'BANK ARTOS IND', '2022-11-30'),
(121, '547', 'BANK PURBA DANARTA', '2022-11-30'),
(122, '548', 'BANK MULTI ARTA SENTOSA', '2022-11-30'),
(123, '553', 'BANK MAYORA', '2022-11-30'),
(124, '555', 'BANK INDEX SELINDO', '2022-11-30'),
(125, '566', 'BANK VICTORIA INTERNATIONAL', '2022-11-30'),
(126, '558', 'BANK EKSEKUTIF', '2022-11-30'),
(127, '559', 'CENTRATAMA NASIONAL BANK', '2022-11-30'),
(128, '562', 'BANK FAMA INTERNASIONAL', '2022-11-30'),
(129, '564', 'BANK SINAR HARAPAN BALI', '2022-11-30'),
(130, '567', 'BANK HARDA', '2022-11-30'),
(131, '945', 'BANK FINCONESIA', '2022-11-30'),
(132, '946', 'BANK MERINCORP', '2022-11-30'),
(133, '947', 'BANK MAYBANK INDOCORP', '2022-11-30'),
(134, '948', 'BANK OCBC – INDONESIA', '2022-11-30'),
(135, '949', 'BANK CHINA TRUST INDONESIA', '2022-11-30'),
(136, '950', 'BANK COMMONWEALTH', '2022-11-30'),
(137, '425', 'BANK BJB SYARIAH', '2022-11-30'),
(138, '688', 'BPR KS (KARYAJATNIKA SEDAYA)', '2022-11-30'),
(139, '789', 'INDOSAT DOMPETKU', '2022-11-30'),
(140, '911', 'TELKOMSEL TCASH', '2022-11-30'),
(141, '911', 'LINKAJA', '2022-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `t_barang`
--

CREATE TABLE `t_barang` (
  `barang_id` int(11) NOT NULL,
  `barang_kode` text NOT NULL,
  `barang_kategori` text NOT NULL,
  `barang_stok` text NOT NULL DEFAULT '0',
  `barang_nama` text NOT NULL,
  `barang_satuan` enum('kg','ekor','pcs','tray') NOT NULL,
  `barang_tanggal` date NOT NULL DEFAULT curdate(),
  `barang_hapus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_barang`
--

INSERT INTO `t_barang` (`barang_id`, `barang_kode`, `barang_kategori`, `barang_stok`, `barang_nama`, `barang_satuan`, `barang_tanggal`, `barang_hapus`) VALUES
(31, 'KB0017', '3', '5', 'BETTERZYM', 'pcs', '2023-07-27', 0),
(32, 'KB0018', '3', '5', 'MEDIVAC CORYZA', 'pcs', '2023-07-27', 0),
(33, 'KB0019', '3', '0', 'EGG STIMULANT', 'pcs', '2023-07-29', 0),
(34, 'KB0020', '3', '0', 'CYPROTIL PLUS', 'pcs', '2023-07-29', 0),
(36, 'KB0022', '3', '0', 'TOLTRADEX', 'pcs', '2023-07-29', 0),
(38, 'KB0024', '3', '0', 'ENDOMIX', 'pcs', '2023-07-29', 0),
(39, 'KB0025', '3', '0', 'MEDIVAC ND-IB', 'pcs', '2023-07-29', 0),
(40, 'KB0026', '3', '0', 'LD BOTOL ', 'pcs', '2023-07-29', 0),
(41, 'KB0027', '3', '0', 'MULTIIC HC', 'pcs', '2023-07-29', 0),
(42, 'KB0028', '3', '0', 'SUP ELEKTOLIT', 'pcs', '2023-07-29', 0),
(43, 'KB0029', '3', '0', 'MDCP', 'pcs', '2023-07-29', 0),
(44, 'KB0030', '3', '0', 'PITABLOCK', 'pcs', '2023-07-29', 0),
(68, 'KB0054', '2', '20', 'JAGUNG PAK HUSEN', 'kg', '2023-08-05', 0),
(69, 'KB0055', '2', '0', 'JAGUNG', 'kg', '2023-08-05', 0),
(70, 'KB0056', '2', '5', 'KATUL', 'kg', '2023-08-05', 0),
(71, 'KB0057', '2', '0', 'BKK', 'kg', '2023-08-05', 0),
(72, 'KB0058', '2', '0', 'MBM', 'kg', '2023-08-05', 0),
(73, 'KB0059', '2', '0', 'MENIR BATU', 'kg', '2023-08-05', 0),
(78, 'KB0064', '1', '90', 'TELUR MERAH', 'tray', '2023-08-05', 0),
(134, 'KB00120', '2', '0', 'GANDUM', 'kg', '2023-11-21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_barang_kategori`
--

CREATE TABLE `t_barang_kategori` (
  `barang_kategori_id` int(11) NOT NULL,
  `barang_kategori_nama` text NOT NULL,
  `barang_kategori_satuan` enum('kg','ekor','pcs','tray') NOT NULL,
  `barang_kategori_tanggal` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_barang_kategori`
--

INSERT INTO `t_barang_kategori` (`barang_kategori_id`, `barang_kategori_nama`, `barang_kategori_satuan`, `barang_kategori_tanggal`) VALUES
(1, 'telur', 'tray', '2023-02-27'),
(2, 'pakan', 'kg', '2023-02-27'),
(3, 'obat', 'pcs', '2023-02-27');

-- --------------------------------------------------------

--
-- Table structure for table `t_detail_user`
--

CREATE TABLE `t_detail_user` (
  `detail_id` int(11) NOT NULL,
  `detail_id_user` int(11) DEFAULT NULL,
  `detail_jabatan` varchar(50) DEFAULT NULL,
  `detail_pendidikan` text DEFAULT NULL,
  `detail_alamat` text DEFAULT NULL,
  `detail_biodata` text DEFAULT NULL,
  `detail_hapus` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_detail_user`
--

INSERT INTO `t_detail_user` (`detail_id`, `detail_id_user`, `detail_jabatan`, `detail_pendidikan`, `detail_alamat`, `detail_biodata`, `detail_hapus`) VALUES
(1, 2, 'BOS', '-', 'Pandanarum ', '-', 0),
(12, 3, NULL, NULL, NULL, NULL, 0),
(13, 4, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_gaji`
--

CREATE TABLE `t_gaji` (
  `gaji_id` int(11) NOT NULL,
  `gaji_karyawan` text NOT NULL,
  `gaji_nominal` text DEFAULT NULL,
  `gaji_keterangan` text DEFAULT NULL,
  `gaji_tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_gaji`
--

INSERT INTO `t_gaji` (`gaji_id`, `gaji_karyawan`, `gaji_nominal`, `gaji_keterangan`, `gaji_tanggal`) VALUES
(4, '4', '70000', 'Ambil butuh uang', '2023-03-30'),
(5, '3', '70000', 'Waktunya bayaran', '2023-03-30'),
(6, '4', '140000', '-', '2023-05-13'),
(7, '7', '80000', 'di bayar', '2024-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `t_hutang`
--

CREATE TABLE `t_hutang` (
  `hutang_id` int(11) NOT NULL,
  `hutang_nomor` text DEFAULT NULL,
  `hutang_keterangan` text DEFAULT NULL,
  `hutang_tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_hutang`
--

INSERT INTO `t_hutang` (`hutang_id`, `hutang_nomor`, `hutang_keterangan`, `hutang_tanggal`) VALUES
(130, 'PB-220624-3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_karyawan`
--

CREATE TABLE `t_karyawan` (
  `karyawan_id` int(11) NOT NULL,
  `karyawan_kode` text NOT NULL,
  `karyawan_nama` text NOT NULL,
  `karyawan_alamat` text NOT NULL,
  `karyawan_telp` text NOT NULL,
  `karyawan_upah` text NOT NULL,
  `karyawan_tanggal` date NOT NULL DEFAULT curdate(),
  `karyawan_hapus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_karyawan`
--

INSERT INTO `t_karyawan` (`karyawan_id`, `karyawan_kode`, `karyawan_nama`, `karyawan_alamat`, `karyawan_telp`, `karyawan_upah`, `karyawan_tanggal`, `karyawan_hapus`) VALUES
(2, 'KR001', 'David latumahina', '-', '085855011542', '55000', '2023-02-25', 1),
(3, 'KR002', 'Mario dandi satrio', '-', '085234567890', '70000', '2023-02-25', 1),
(4, 'KR003', 'Agnes gracia haryanto', '-', '085676443232', '70000', '2023-02-26', 1),
(5, 'KR004', 'Patrik star', 'Bikini Bottom', '085653887625', '70000', '2024-06-22', 0),
(6, 'KR005', 'Spongebob Squarepants', 'Bikini Bottom', '087265625789', '70000', '2024-06-22', 0),
(7, 'KR006', 'Squidward Tentacles', 'Bikini Bottom', '081123567432', '80000', '2024-06-22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_kontak`
--

CREATE TABLE `t_kontak` (
  `kontak_id` int(11) NOT NULL,
  `kontak_jenis` set('s','p') NOT NULL DEFAULT '',
  `kontak_kode` text NOT NULL,
  `kontak_nama` text NOT NULL,
  `kontak_alamat` text NOT NULL,
  `kontak_tlp` text NOT NULL,
  `kontak_bank` text NOT NULL,
  `kontak_rek` text NOT NULL,
  `kontak_tanggal` date NOT NULL DEFAULT curdate(),
  `kontak_hapus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_kontak`
--

INSERT INTO `t_kontak` (`kontak_id`, `kontak_jenis`, `kontak_kode`, `kontak_nama`, `kontak_alamat`, `kontak_tlp`, `kontak_bank`, `kontak_rek`, `kontak_tanggal`, `kontak_hapus`) VALUES
(7, 's', 'SP003', 'MEDION ARDHIKA PRATAMA', 'BLITAR', '000', '8', '0083806777', '2023-07-27', 0),
(8, 's', 'SP004', 'PT.SARANA VETERINARIA JAYA ABADI', 'TAMAN TEKNO BSD SEKTOR XI BLOK J2/5 TANGGERANG SELATAN', '02175880369', '8', '8990301612', '2023-07-29', 0),
(9, 's', 'SP005', 'PT MULTIFARMA SATWA MAJU', 'JL.AYA PAUNG PAMJANG NO.81 LEGO-TANGGERANG', '0215979876', '8', '000', '2023-07-29', 0),
(10, 's', 'SP006', 'MULTI EDITAS UTAMA', 'JL.PERINTIS KEMERDEKAAN KOMMP.RUKO PERTAMA BORDI TEXTILL CENTRE BLOK A-4 TASIKMALAYA ', '026532794', '8', '0540401888', '2023-07-29', 0),
(11, 's', 'SP007', 'AHMAD LUDOYO', 'LUDOYO', '000', '8', '0901314399', '2023-07-29', 0),
(12, 's', 'SP008', 'PT.AGRINUSA JAYA SENTOSA', 'JL.RAYA JUANDA SEDATIAGUNG.SIDOARJO', '0318671623', '8', '000', '2023-07-29', 0),
(13, 's', 'SP009', 'PT.LEWI MANUNGGAL', 'BLITAR', '000', '8', '000', '2023-07-29', 0),
(15, 's', 'SP0011', 'PT.BCAF', 'BLITAR', '000', '8', '000', '2023-08-01', 0),
(16, 's', 'SP0012', 'PAK KHUSEN', 'BLITAR', '00', '8', '00', '2023-08-05', 0),
(17, 's', 'SP0013', 'PA NOR', 'BLITAR', '00', '8', '00', '2023-08-05', 0),
(28, 'p', 'PL004', 'JUM', 'BLITAR', '00', '1', '00', '2023-09-06', 0),
(29, 'p', 'PL005', 'HERI', 'BLITAR', '00', '1', '00', '2023-09-06', 0),
(30, 'p', 'PL006', 'SODERI', 'BLITAR', '00', '1', '00', '2023-09-06', 0),
(31, 'p', 'PL007', 'MIMING', 'BLITAR', '00', '1', '00', '2023-09-06', 0),
(33, 'p', 'PL008', 'JUMA', 'BLITAR', '000', '8', '000', '2023-09-13', 0),
(46, 'p', 'PL009', 'PAK NANANG', 'BLITAR', '000', '8', '000', '2023-11-08', 0),
(48, 'p', 'PL0010', 'MBAK ARI', 'BLITAR', '000', '8', '000', '2023-11-09', 0),
(49, 'p', 'PL0011', 'PAK LINGGA', 'BLITAR', '000', '8', '000', '2023-11-13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_level`
--

CREATE TABLE `t_level` (
  `level_id` int(11) NOT NULL,
  `level_nama` text NOT NULL,
  `level_doc` text NOT NULL,
  `level_telur` text DEFAULT '0',
  `level_ayam` text DEFAULT '0',
  `level_pakan` text DEFAULT '0',
  `level_obat` text DEFAULT '0',
  `level_hapus` int(11) DEFAULT 0,
  `level_tanggal` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_level`
--

INSERT INTO `t_level` (`level_id`, `level_nama`, `level_doc`, `level_telur`, `level_ayam`, `level_pakan`, `level_obat`, `level_hapus`, `level_tanggal`) VALUES
(1, 'Admin', '1', '1', '1', '1', '1', 0, '2023-05-13');

-- --------------------------------------------------------

--
-- Table structure for table `t_pembelian`
--

CREATE TABLE `t_pembelian` (
  `pembelian_id` int(11) NOT NULL,
  `pembelian_user` int(11) DEFAULT NULL,
  `pembelian_nomor` text DEFAULT NULL,
  `pembelian_kontak` int(11) DEFAULT NULL,
  `pembelian_sales` text DEFAULT NULL,
  `pembelian_status` enum('lunas','belum') DEFAULT NULL,
  `pembelian_jatuh_tempo` date DEFAULT NULL,
  `pembelian_keterangan` text DEFAULT NULL,
  `pembelian_qty` text DEFAULT NULL,
  `pembelian_ppn` text DEFAULT NULL,
  `pembelian_total` text DEFAULT NULL,
  `pembelian_tanggal` date DEFAULT curdate(),
  `pembelian_hapus` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_pembelian`
--

INSERT INTO `t_pembelian` (`pembelian_id`, `pembelian_user`, `pembelian_nomor`, `pembelian_kontak`, `pembelian_sales`, `pembelian_status`, `pembelian_jatuh_tempo`, `pembelian_keterangan`, `pembelian_qty`, `pembelian_ppn`, `pembelian_total`, `pembelian_tanggal`, `pembelian_hapus`) VALUES
(197, 2, 'PB-220624-1', 7, 'Pegi alias perong', 'lunas', '2024-06-22', 'Pembelian pakan', '30', '0', '280000', '2024-06-22', 0),
(198, 2, 'PB-220624-2', 7, 'Pegi alias perong', 'lunas', '2024-06-22', 'pembelian obat', '15', '0', '155000', '2024-06-22', 0),
(200, 2, 'PB-220624-3', 7, 'Mas Bro', 'belum', '2024-06-22', 'Hutang', '10', '0', '100000', '2024-06-22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_pembelian_barang`
--

CREATE TABLE `t_pembelian_barang` (
  `pembelian_barang_id` int(11) NOT NULL,
  `pembelian_barang_nomor` text DEFAULT NULL,
  `pembelian_barang_kategori` text DEFAULT NULL,
  `pembelian_barang_barang` text DEFAULT NULL,
  `pembelian_barang_harga` text DEFAULT NULL,
  `pembelian_barang_diskon` text DEFAULT NULL,
  `pembelian_barang_qty` text DEFAULT NULL,
  `pembelian_barang_subtotal` text DEFAULT NULL,
  `pembelian_barang_tanggal` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_pembelian_barang`
--

INSERT INTO `t_pembelian_barang` (`pembelian_barang_id`, `pembelian_barang_nomor`, `pembelian_barang_kategori`, `pembelian_barang_barang`, `pembelian_barang_harga`, `pembelian_barang_diskon`, `pembelian_barang_qty`, `pembelian_barang_subtotal`, `pembelian_barang_tanggal`) VALUES
(243, 'PB-220624-1', '2', '70', '8000', '0', '10', '80000', '2024-06-22'),
(244, 'PB-220624-1', '2', '68', '10000', '0', '20', '200000', '2024-06-22'),
(245, 'PB-220624-2', '3', '32', '12000', '0', '10', '120000', '2024-06-22'),
(246, 'PB-220624-2', '3', '31', '7000', '0', '5', '35000', '2024-06-22'),
(249, 'PB-220624-3', '3', '31', '12000', '0', '5', '60000', '2024-06-22'),
(250, 'PB-220624-3', '2', '68', '8000', '0', '5', '40000', '2024-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan`
--

CREATE TABLE `t_penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `penjualan_user` int(11) DEFAULT NULL,
  `penjualan_kontak` text DEFAULT NULL,
  `penjualan_nomor` text DEFAULT NULL,
  `penjualan_status` enum('lunas','belum') DEFAULT NULL,
  `penjualan_jatuh_tempo` text DEFAULT NULL,
  `penjualan_keterangan` text DEFAULT NULL,
  `penjualan_qty` text DEFAULT NULL,
  `penjualan_ppn` int(11) DEFAULT NULL,
  `penjualan_total` text DEFAULT NULL,
  `penjualan_tanggal` date DEFAULT curdate(),
  `penjualan_hapus` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_penjualan`
--

INSERT INTO `t_penjualan` (`penjualan_id`, `penjualan_user`, `penjualan_kontak`, `penjualan_nomor`, `penjualan_status`, `penjualan_jatuh_tempo`, `penjualan_keterangan`, `penjualan_qty`, `penjualan_ppn`, `penjualan_total`, `penjualan_tanggal`, `penjualan_hapus`) VALUES
(34, 2, '28', 'PJ-230624-1', 'lunas', '2024-06-23', 'lunas', '10', 0, '300000', '2024-06-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan_barang`
--

CREATE TABLE `t_penjualan_barang` (
  `penjualan_barang_id` int(11) NOT NULL,
  `penjualan_barang_nomor` text NOT NULL,
  `penjualan_barang_barang` text NOT NULL,
  `penjualan_barang_harga` text NOT NULL,
  `penjualan_barang_diskon` text NOT NULL,
  `penjualan_barang_stok` text NOT NULL,
  `penjualan_barang_qty` text NOT NULL,
  `penjualan_barang_subtotal` text NOT NULL,
  `penjualan_barang_tanggal` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_penjualan_barang`
--

INSERT INTO `t_penjualan_barang` (`penjualan_barang_id`, `penjualan_barang_nomor`, `penjualan_barang_barang`, `penjualan_barang_harga`, `penjualan_barang_diskon`, `penjualan_barang_stok`, `penjualan_barang_qty`, `penjualan_barang_subtotal`, `penjualan_barang_tanggal`) VALUES
(39, 'PJ-230624-1', '78', '30000', '0', '  100', '10', '300000', '2024-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `t_piutang`
--

CREATE TABLE `t_piutang` (
  `piutang_id` int(11) NOT NULL,
  `piutang_nomor` text DEFAULT NULL,
  `piutang_keterangan` text DEFAULT NULL,
  `piutang_tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_recording`
--

CREATE TABLE `t_recording` (
  `recording_id` int(11) NOT NULL,
  `recording_nomor` text NOT NULL,
  `recording_user` text NOT NULL,
  `recording_tanggal` date DEFAULT NULL,
  `recording_bobot` text NOT NULL,
  `recording_populasi` text NOT NULL,
  `recording_keterangan` text NOT NULL,
  `recording_hapus` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_recording`
--

INSERT INTO `t_recording` (`recording_id`, `recording_nomor`, `recording_user`, `recording_tanggal`, `recording_bobot`, `recording_populasi`, `recording_keterangan`, `recording_hapus`) VALUES
(280, 'RC-230624-1', '2', '2024-06-23', '2', '1000', 'recoding hari minggu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_recording_barang`
--

CREATE TABLE `t_recording_barang` (
  `recording_barang_id` int(11) NOT NULL,
  `recording_barang_nomor` text DEFAULT NULL,
  `recording_barang_barang` text DEFAULT '0',
  `recording_barang_stok` text DEFAULT '0',
  `recording_barang_jumlah` text DEFAULT '0',
  `recording_barang_kategori` set('telur','pakan','obat') DEFAULT NULL,
  `recording_barang_tanggal` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_recording_barang`
--

INSERT INTO `t_recording_barang` (`recording_barang_id`, `recording_barang_nomor`, `recording_barang_barang`, `recording_barang_stok`, `recording_barang_jumlah`, `recording_barang_kategori`, `recording_barang_tanggal`) VALUES
(535, 'RC-230624-1', '78', '0', '100', 'telur', '2024-06-23'),
(536, 'RC-230624-1', '70', '10', '5', 'pakan', '2024-06-23'),
(537, 'RC-230624-1', '68', '25', '5', 'pakan', '2024-06-23'),
(538, 'RC-230624-1', '32', '10', '5', 'obat', '2024-06-23'),
(539, 'RC-230624-1', '31', '10', '5', 'obat', '2024-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_nama` text DEFAULT NULL,
  `user_email` text DEFAULT NULL,
  `user_password` text DEFAULT NULL,
  `user_level` int(11) DEFAULT 1,
  `user_foto` text DEFAULT NULL,
  `user_hapus` int(11) DEFAULT 0,
  `user_tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`user_id`, `user_nama`, `user_email`, `user_password`, `user_level`, `user_foto`, `user_hapus`, `user_tanggal`) VALUES
(2, 'Admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 1, '728b1793940f5ea980454e5ace4eee3a.jpg', 0, '2020-05-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_absen`
--
ALTER TABLE `t_absen`
  ADD PRIMARY KEY (`absen_id`);

--
-- Indexes for table `t_bank`
--
ALTER TABLE `t_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `t_barang`
--
ALTER TABLE `t_barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `t_barang_kategori`
--
ALTER TABLE `t_barang_kategori`
  ADD PRIMARY KEY (`barang_kategori_id`);

--
-- Indexes for table `t_detail_user`
--
ALTER TABLE `t_detail_user`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `t_gaji`
--
ALTER TABLE `t_gaji`
  ADD PRIMARY KEY (`gaji_id`);

--
-- Indexes for table `t_hutang`
--
ALTER TABLE `t_hutang`
  ADD PRIMARY KEY (`hutang_id`);

--
-- Indexes for table `t_karyawan`
--
ALTER TABLE `t_karyawan`
  ADD PRIMARY KEY (`karyawan_id`);

--
-- Indexes for table `t_kontak`
--
ALTER TABLE `t_kontak`
  ADD PRIMARY KEY (`kontak_id`);

--
-- Indexes for table `t_level`
--
ALTER TABLE `t_level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `t_pembelian`
--
ALTER TABLE `t_pembelian`
  ADD PRIMARY KEY (`pembelian_id`);

--
-- Indexes for table `t_pembelian_barang`
--
ALTER TABLE `t_pembelian_barang`
  ADD PRIMARY KEY (`pembelian_barang_id`);

--
-- Indexes for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD PRIMARY KEY (`penjualan_id`);

--
-- Indexes for table `t_penjualan_barang`
--
ALTER TABLE `t_penjualan_barang`
  ADD PRIMARY KEY (`penjualan_barang_id`);

--
-- Indexes for table `t_piutang`
--
ALTER TABLE `t_piutang`
  ADD PRIMARY KEY (`piutang_id`);

--
-- Indexes for table `t_recording`
--
ALTER TABLE `t_recording`
  ADD PRIMARY KEY (`recording_id`);

--
-- Indexes for table `t_recording_barang`
--
ALTER TABLE `t_recording_barang`
  ADD PRIMARY KEY (`recording_barang_id`) USING BTREE;

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_absen`
--
ALTER TABLE `t_absen`
  MODIFY `absen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `t_bank`
--
ALTER TABLE `t_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `t_barang`
--
ALTER TABLE `t_barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `t_barang_kategori`
--
ALTER TABLE `t_barang_kategori`
  MODIFY `barang_kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_detail_user`
--
ALTER TABLE `t_detail_user`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `t_gaji`
--
ALTER TABLE `t_gaji`
  MODIFY `gaji_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_hutang`
--
ALTER TABLE `t_hutang`
  MODIFY `hutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `t_karyawan`
--
ALTER TABLE `t_karyawan`
  MODIFY `karyawan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_kontak`
--
ALTER TABLE `t_kontak`
  MODIFY `kontak_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `t_level`
--
ALTER TABLE `t_level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_pembelian`
--
ALTER TABLE `t_pembelian`
  MODIFY `pembelian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `t_pembelian_barang`
--
ALTER TABLE `t_pembelian_barang`
  MODIFY `pembelian_barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `t_penjualan_barang`
--
ALTER TABLE `t_penjualan_barang`
  MODIFY `penjualan_barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `t_piutang`
--
ALTER TABLE `t_piutang`
  MODIFY `piutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_recording`
--
ALTER TABLE `t_recording`
  MODIFY `recording_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `t_recording_barang`
--
ALTER TABLE `t_recording_barang`
  MODIFY `recording_barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
