/*
 Navicat Premium Data Transfer

 Source Server         : LocalHost
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : sikebut

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 02/05/2024 07:37:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agamas
-- ----------------------------
DROP TABLE IF EXISTS `agamas`;
CREATE TABLE `agamas`  (
  `agama_id` int NOT NULL AUTO_INCREMENT,
  `agama_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`agama_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agamas
-- ----------------------------
INSERT INTO `agamas` VALUES (1, 'Islam');
INSERT INTO `agamas` VALUES (2, 'Kristen');
INSERT INTO `agamas` VALUES (3, 'Katholik');
INSERT INTO `agamas` VALUES (4, 'Hindu');
INSERT INTO `agamas` VALUES (5, 'Budha');
INSERT INTO `agamas` VALUES (6, 'Konghucu');

-- ----------------------------
-- Table structure for berkas
-- ----------------------------
DROP TABLE IF EXISTS `berkas`;
CREATE TABLE `berkas`  (
  `berkas_id` int NOT NULL AUTO_INCREMENT,
  `berkas_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`berkas_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of berkas
-- ----------------------------
INSERT INTO `berkas` VALUES (1, 'SK CPNS');
INSERT INTO `berkas` VALUES (2, 'SK PNS');
INSERT INTO `berkas` VALUES (3, 'Ijasah Terakhir');
INSERT INTO `berkas` VALUES (4, 'Transkrip Nilai Terakhir');
INSERT INTO `berkas` VALUES (5, 'SKP');
INSERT INTO `berkas` VALUES (6, 'Kartu Keluarga');
INSERT INTO `berkas` VALUES (7, 'Kenaikan Gaji Berkala Terakhir');
INSERT INTO `berkas` VALUES (8, 'SK Kenaikan Pangkat Terakhir');
INSERT INTO `berkas` VALUES (9, 'Akta Nikah');
INSERT INTO `berkas` VALUES (10, 'Akta Anak');
INSERT INTO `berkas` VALUES (11, 'SK Jabatan Terakhir');
INSERT INTO `berkas` VALUES (12, 'SK Jabatan Fungsional Terakhir');
INSERT INTO `berkas` VALUES (13, 'PAK');
INSERT INTO `berkas` VALUES (14, 'Daftar Riwayat Jabatan');
INSERT INTO `berkas` VALUES (15, 'Ijin Belajar');
INSERT INTO `berkas` VALUES (16, 'STILUD');
INSERT INTO `berkas` VALUES (17, 'Uraian Tugas');
INSERT INTO `berkas` VALUES (18, 'Tugas Belajar');
INSERT INTO `berkas` VALUES (19, 'SK PIM');
INSERT INTO `berkas` VALUES (20, 'Data Perorangan Calon Penerima Pensiun (DPCP)');
INSERT INTO `berkas` VALUES (21, 'Pas Photo 3 x 4');
INSERT INTO `berkas` VALUES (22, 'Surat Pernyataan Tidak Pernah Dijatuhi Hukuman Disiplin Selama 1 Tahun');
INSERT INTO `berkas` VALUES (23, 'SK Kematian dari suami/istri yang dibuat oleh Kelurahan/Desa/Kecamatan');
INSERT INTO `berkas` VALUES (24, 'SK Peninjauan Masa Kerja');
INSERT INTO `berkas` VALUES (25, 'Surat Keterangan');
INSERT INTO `berkas` VALUES (26, 'Sertifikat Pendidik');
INSERT INTO `berkas` VALUES (27, 'NUKP');
INSERT INTO `berkas` VALUES (28, 'SK Mutasi');
INSERT INTO `berkas` VALUES (29, 'Surat Permohonan Berhenti atas Permintaan Sendiri');
INSERT INTO `berkas` VALUES (30, 'SK Pemberhentian PNS');
INSERT INTO `berkas` VALUES (31, 'Kartu Istri');
INSERT INTO `berkas` VALUES (32, 'Kartu Suami');
INSERT INTO `berkas` VALUES (33, 'Kartu Pegawai');
INSERT INTO `berkas` VALUES (34, 'Surat Tanda Tamat Pelatihan (Prajab, Diklatsar)');
INSERT INTO `berkas` VALUES (35, 'Akta Cerai');
INSERT INTO `berkas` VALUES (36, 'SK Hukuman Disiplin');
INSERT INTO `berkas` VALUES (37, 'Dokumen Berita Acara Sumpah PNS');
INSERT INTO `berkas` VALUES (38, 'Lainnya');

-- ----------------------------
-- Table structure for dasarkgb
-- ----------------------------
DROP TABLE IF EXISTS `dasarkgb`;
CREATE TABLE `dasarkgb`  (
  `dasarkgb_id` int NOT NULL AUTO_INCREMENT,
  `dasarkgb_dari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dasarkgb_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dasarkgb_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dasarkgb
-- ----------------------------
INSERT INTO `dasarkgb` VALUES (1, 'Pangkat', 'Bupati Situbondo');
INSERT INTO `dasarkgb` VALUES (2, 'KGB Sebelumnya', 'Bupati Situbondo');
INSERT INTO `dasarkgb` VALUES (3, 'Pangkat', 'Gubernur Jawa Timur');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for golrus
-- ----------------------------
DROP TABLE IF EXISTS `golrus`;
CREATE TABLE `golrus`  (
  `golru_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `golru_numb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `golru_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `golru_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`golru_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of golrus
-- ----------------------------
INSERT INTO `golrus` VALUES (1, '11', 'I/a', 'Juru Muda', NULL, NULL);
INSERT INTO `golrus` VALUES (2, '12', 'I/b', 'Juru Muda Tk. I', NULL, NULL);
INSERT INTO `golrus` VALUES (3, '13', 'I/c', 'Juru', NULL, NULL);
INSERT INTO `golrus` VALUES (4, '14', 'I/d', 'Juru Tingkat I', NULL, NULL);
INSERT INTO `golrus` VALUES (5, '21', 'II/a', 'Pengatur Muda', NULL, NULL);
INSERT INTO `golrus` VALUES (6, '22', 'II/b', 'Pengatur Muda Tk. I', NULL, NULL);
INSERT INTO `golrus` VALUES (7, '23', 'II/c', 'Pengatur', NULL, NULL);
INSERT INTO `golrus` VALUES (8, '24', 'II/d', 'Pengatur Tingkat I', NULL, NULL);
INSERT INTO `golrus` VALUES (9, '31', 'III/a', 'Penata Muda', NULL, NULL);
INSERT INTO `golrus` VALUES (10, '32', 'III/b', 'Penata Muda Tk. I', NULL, NULL);
INSERT INTO `golrus` VALUES (11, '33', 'III/c', 'Penata', NULL, NULL);
INSERT INTO `golrus` VALUES (12, '34', 'III/d', 'Penata Tingkat I', NULL, NULL);
INSERT INTO `golrus` VALUES (13, '41', 'IV/a', 'Pembina', NULL, NULL);
INSERT INTO `golrus` VALUES (14, '42', 'IV/b', 'Pembina Tingkat I', NULL, NULL);
INSERT INTO `golrus` VALUES (15, '43', 'IV/c', 'Pembina Utama Muda', NULL, NULL);
INSERT INTO `golrus` VALUES (16, '44', 'IV/d', 'Pembina Utama Madya', NULL, NULL);
INSERT INTO `golrus` VALUES (17, '45', 'IV/e', 'Pembina Utama', NULL, NULL);

-- ----------------------------
-- Table structure for jabatans
-- ----------------------------
DROP TABLE IF EXISTS `jabatans`;
CREATE TABLE `jabatans`  (
  `jabatan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `jabatan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`jabatan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jabatans
-- ----------------------------
INSERT INTO `jabatans` VALUES (1, 'Kepala Dinas ', NULL, NULL);
INSERT INTO `jabatans` VALUES (2, 'Sekretaris Dinas', NULL, NULL);
INSERT INTO `jabatans` VALUES (3, 'Kepala Sub Bagian Umum dan Kepegawaian', NULL, NULL);
INSERT INTO `jabatans` VALUES (4, 'Penyusun Rencana Kebutuhan Sarana dan Prasarana', NULL, NULL);
INSERT INTO `jabatans` VALUES (5, 'Pengelola Kepegawaian', NULL, NULL);
INSERT INTO `jabatans` VALUES (6, 'Perencana Ahli Muda', NULL, NULL);
INSERT INTO `jabatans` VALUES (7, 'Bendahara', NULL, NULL);
INSERT INTO `jabatans` VALUES (8, 'Verifikator Keuangan', NULL, NULL);
INSERT INTO `jabatans` VALUES (9, 'Penata Laporan Keuangan', NULL, NULL);
INSERT INTO `jabatans` VALUES (10, 'Penelaah Teknis Kebijakan', NULL, NULL);
INSERT INTO `jabatans` VALUES (11, 'Pengelola Permodalan dan Investasi', NULL, NULL);
INSERT INTO `jabatans` VALUES (12, 'Analis Kebijakan Ahli Madya', NULL, NULL);
INSERT INTO `jabatans` VALUES (13, 'Analis Kebijakan Ahli Muda', NULL, NULL);
INSERT INTO `jabatans` VALUES (14, 'Analis Kebijakan Ahli Muda', NULL, NULL);
INSERT INTO `jabatans` VALUES (15, 'Analis Dokumen Perizinan', NULL, NULL);
INSERT INTO `jabatans` VALUES (16, 'Pengadministrasi Perizinan', NULL, NULL);
INSERT INTO `jabatans` VALUES (17, 'Pengelola Data Administrasi dan Verifikasi', NULL, NULL);
INSERT INTO `jabatans` VALUES (18, 'Pranata Komputer Terampil', NULL, NULL);
INSERT INTO `jabatans` VALUES (19, 'Orientasi IPDN', NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_03_26_152427_create_paperlesses_table', 1);
INSERT INTO `migrations` VALUES (6, '2024_03_26_163346_create_pegawais_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_03_26_163356_create_jabatans_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_03_26_163414_create_opds_table', 1);
INSERT INTO `migrations` VALUES (9, '2024_03_26_163701_create_golrus_table', 1);
INSERT INTO `migrations` VALUES (10, '2024_03_26_163740_create_type_jabatans_table', 1);

-- ----------------------------
-- Table structure for opds
-- ----------------------------
DROP TABLE IF EXISTS `opds`;
CREATE TABLE `opds`  (
  `opd_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `opd_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`opd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of opds
-- ----------------------------
INSERT INTO `opds` VALUES (1, 'DPMPTSP', '2024-04-22 11:29:52', '2024-04-22 11:29:55');

-- ----------------------------
-- Table structure for paperlesses
-- ----------------------------
DROP TABLE IF EXISTS `paperlesses`;
CREATE TABLE `paperlesses`  (
  `paperless_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `berkas_id` int NULL DEFAULT NULL,
  `pegawai_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paperless_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paperless_ket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`paperless_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paperlesses
-- ----------------------------
INSERT INTO `paperlesses` VALUES (1, 5, '1', 'skp.pdf', 'SKP 2022', NULL, NULL);
INSERT INTO `paperlesses` VALUES (2, 5, '1', 'skp.pdf', 'SKP 2022', NULL, NULL);
INSERT INTO `paperlesses` VALUES (3, 1, '1', 'skp.pdf', 'CPNS', NULL, NULL);
INSERT INTO `paperlesses` VALUES (4, 2, '1', 'skp.pdf', 'PNS', NULL, NULL);
INSERT INTO `paperlesses` VALUES (5, 5, '1', 'skp.pdf', 'SKP 2022', NULL, NULL);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pegawais
-- ----------------------------
DROP TABLE IF EXISTS `pegawais`;
CREATE TABLE `pegawais`  (
  `pegawai_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `opd_id` int NOT NULL,
  `jabatan_id` int NOT NULL,
  `golru_id` int NULL DEFAULT NULL,
  `pegawai_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai_nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pegawai_nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomorhp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jeniskelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `agama_id` int NULL DEFAULT NULL,
  `foto_pegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pegawai_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pegawais
-- ----------------------------
INSERT INTO `pegawais` VALUES (1, 1, 1, 15, 'Ir. QURATUL AINI, M.Si', '3512085108670002', '196708111999012001', '085257655908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (2, 1, 2, 14, 'IDDHA ARUM BAWANA, S.STP, M.Si.', '3512060512750001', '197512051996021003', '082142361857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (3, 1, 3, 11, 'MELLY AGUSTINA, S.H., M.H.', '3512084208780004', '197808022007012011', '082334205000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (4, 1, 4, 9, 'EKO ANDY WIDARTO, S.T.', '3512060501780003', '197801052008011011', '08123197497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (5, 1, 5, 8, 'BADRUR ROCHIM', '3512070504850004', '198504052006041011', '085257624386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (6, 1, 6, 11, 'AGUS BUDIYANTO, S.H.', '3512081408850006', '198508142006041003', '085233114433', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (7, 1, 7, 9, 'NANANG WAHYUDI, S.E.', '3512071405830002', '198305142010011002', '082141379693', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (8, 1, 8, 8, 'FOMA WEDI KARTIKA', '3512061504770001', '197704152009031001', '085236536311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (9, 1, 9, 9, 'NUR ULFA APRILIA, S.E.', '3512086004990001', '199904202022042001', '082340048300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (10, 1, 10, 12, 'NURHASANAH, S.Sos.', '3512135012800002', '198012102007012010', '085313920763', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (11, 1, 11, 8, 'AMIR MAHFUD', '\"3512072402720001', '197202242007011006', '085204861614', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (12, 1, 12, 12, 'ZAINUL ARIFIN, S.P.', '\"3514132002790003', '197902202009031004', '082330719718', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (13, 1, 13, 12, 'SUWIGNYO AFANDI, S.Sos.', '3512081306710002', '197106131992111001', '08123485361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (14, 1, 14, 12, 'SITI SANIYAH, S.Sos.', '3512074505660001', '196605051990032013', '081357356034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (15, 1, 15, 9, 'RIZAL BAHRONI, S.Tr.IP.', '3512101108980001', '199808112022081001', '085258313202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (16, 1, 16, 9, 'SONY NOVAYANTO, S.H.', '\"3512051711820001', '198211172010011001', '085336035463', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (17, 1, 17, 8, 'NURAHMAD', '3512050101730008', '197301012009031001', '082332609811', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (18, 1, 18, 7, 'ZENDY ROBI JUNIANTO, A.Md.Kom.', '3512072106950001', '199506212020121009', '085257500090', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (19, 1, 19, 9, 'BERLIANA EKA YORINDA, S.Tr.IP.', NULL, '199904272023082001', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for t_cuti
-- ----------------------------
DROP TABLE IF EXISTS `t_cuti`;
CREATE TABLE `t_cuti`  (
  `cuti_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int NULL DEFAULT NULL,
  `haricuti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggalmulai` date NULL DEFAULT NULL,
  `tanggalakhir` date NULL DEFAULT NULL,
  `tipe_cuti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alasan_cuti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_cuti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telepon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ttdcuti` int NULL DEFAULT NULL,
  `tanggal_sk` date NULL DEFAULT NULL,
  `nomor_sk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cuti_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_cuti
-- ----------------------------
INSERT INTO `t_cuti` VALUES (1, 1, '1', '2024-04-29', '2024-04-29', '1', '1', '1', '1', 1, '2024-04-30', '851/220/431.315.1.1/2024');

-- ----------------------------
-- Table structure for t_kariskarsu
-- ----------------------------
DROP TABLE IF EXISTS `t_kariskarsu`;
CREATE TABLE `t_kariskarsu`  (
  `kariskarsu_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int NULL DEFAULT NULL,
  `tanggalnikah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nikahdi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `namaistri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nikistri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pangkatgolru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `satuanorganisasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `instansi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempatlahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggallahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jeniskelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ttdpegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kariskarsu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_kariskarsu
-- ----------------------------

-- ----------------------------
-- Table structure for t_kgb
-- ----------------------------
DROP TABLE IF EXISTS `t_kgb`;
CREATE TABLE `t_kgb`  (
  `kgb_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int NULL DEFAULT NULL,
  `dasarkgb_id` int NULL DEFAULT NULL,
  `tanggalsk_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomorsk_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tmtsk_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `blnsk_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `thnsk_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ppsk_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mkth_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mkbl_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gajilama_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `selisihtahun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mkth_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mkbl_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gajibaru_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tmtbl_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tmtth_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tmtkgb_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tahunsk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pp_lama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pp_baru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomorsurat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kgb_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_kgb
-- ----------------------------

-- ----------------------------
-- Table structure for t_pensiun
-- ----------------------------
DROP TABLE IF EXISTS `t_pensiun`;
CREATE TABLE `t_pensiun`  (
  `pensiun_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ttdpegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pensiun_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pensiun
-- ----------------------------

-- ----------------------------
-- Table structure for t_tugasbelajar
-- ----------------------------
DROP TABLE IF EXISTS `t_tugasbelajar`;
CREATE TABLE `t_tugasbelajar`  (
  `tugasbelajar_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ttdpegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tugasbelajar_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tugasbelajar
-- ----------------------------

-- ----------------------------
-- Table structure for type_jabatans
-- ----------------------------
DROP TABLE IF EXISTS `type_jabatans`;
CREATE TABLE `type_jabatans`  (
  `typejab_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `typejab_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`typejab_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_jabatans
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'a', 'a@gmail.com', NULL, '$2y$10$aCq9LPvYHHjxJjg/.MH7ueSKaUeKAhR/UB5ns1RQ2iASb68eMaQAW', NULL, '2024-04-22 03:46:09', '2024-04-22 03:46:09');

-- ----------------------------
-- View structure for v_cuti
-- ----------------------------
DROP VIEW IF EXISTS `v_cuti`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_cuti` AS SELECT
	pegawais.pegawai_name, 
	pegawaisttd.pegawai_id AS pegawai_idttd, 
	pegawaisttd.pegawai_name AS pegawai_namettd, 
	pegawaisttd.pegawai_nip AS pegawai_nipttd, 
	t_cuti.*, 
	golrus.golru_name
FROM
	t_cuti
	LEFT JOIN
	pegawais
	ON 
		t_cuti.pegawai_id = pegawais.pegawai_id
	LEFT JOIN
	pegawais AS pegawaisttd
	ON 
		t_cuti.ttdcuti = pegawais.pegawai_id AND
		t_cuti.ttdcuti = pegawaisttd.pegawai_id
	INNER JOIN
	golrus
	ON 
		pegawaisttd.golru_id = golrus.golru_id ;

-- ----------------------------
-- View structure for v_paperless
-- ----------------------------
DROP VIEW IF EXISTS `v_paperless`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_paperless` AS SELECT
	paperlesses.*, 
	pegawais.pegawai_nip, 
	pegawais.pegawai_name, 
	berkas.berkas_name
FROM
	paperlesses
	LEFT JOIN
	pegawais
	ON 
		paperlesses.pegawai_id = pegawais.pegawai_id
	LEFT JOIN
	berkas
	ON 
		paperlesses.berkas_id = berkas.berkas_id
ORDER BY
	berkas.berkas_id ASC ;

-- ----------------------------
-- View structure for v_pegawai
-- ----------------------------
DROP VIEW IF EXISTS `v_pegawai`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_pegawai` AS SELECT
	pegawais.*, 
	golrus.golru_numb, 
	golrus.golru_code, 
	golrus.golru_name, 
	jabatans.jabatan_name, 
	opds.opd_name, 
	agamas.agama_name
FROM
	pegawais
	LEFT JOIN
	golrus
	ON 
		pegawais.golru_id = golrus.golru_id
	LEFT JOIN
	jabatans
	ON 
		pegawais.jabatan_id = jabatans.jabatan_id
	LEFT JOIN
	opds
	ON 
		pegawais.opd_id = opds.opd_id
	LEFT JOIN
	agamas
	ON 
		pegawais.agama_id = agamas.agama_id ;

SET FOREIGN_KEY_CHECKS = 1;
