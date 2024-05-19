/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : sikebut

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 20/05/2024 00:19:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agamas
-- ----------------------------
DROP TABLE IF EXISTS `agamas`;
CREATE TABLE `agamas` (
  `agama_id` int NOT NULL AUTO_INCREMENT,
  `agama_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`agama_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of agamas
-- ----------------------------
BEGIN;
INSERT INTO `agamas` VALUES (1, 'Islam');
INSERT INTO `agamas` VALUES (2, 'Kristen');
INSERT INTO `agamas` VALUES (3, 'Katholik');
INSERT INTO `agamas` VALUES (4, 'Hindu');
INSERT INTO `agamas` VALUES (5, 'Budha');
INSERT INTO `agamas` VALUES (6, 'Konghucu');
COMMIT;

-- ----------------------------
-- Table structure for berkas
-- ----------------------------
DROP TABLE IF EXISTS `berkas`;
CREATE TABLE `berkas` (
  `berkas_id` int NOT NULL AUTO_INCREMENT,
  `berkas_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`berkas_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of berkas
-- ----------------------------
BEGIN;
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
COMMIT;

-- ----------------------------
-- Table structure for dasarkgb
-- ----------------------------
DROP TABLE IF EXISTS `dasarkgb`;
CREATE TABLE `dasarkgb` (
  `dasarkgb_id` int NOT NULL AUTO_INCREMENT,
  `dasarkgb_dari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dasarkgb_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`dasarkgb_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dasarkgb
-- ----------------------------
BEGIN;
INSERT INTO `dasarkgb` VALUES (1, 'Pangkat', 'Bupati Situbondo');
INSERT INTO `dasarkgb` VALUES (2, 'KGB Sebelumnya', 'Bupati Situbondo');
INSERT INTO `dasarkgb` VALUES (3, 'Pangkat', 'Gubernur Jawa Timur');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gajis
-- ----------------------------
DROP TABLE IF EXISTS `gajis`;
CREATE TABLE `gajis` (
  `gaji_id` int NOT NULL AUTO_INCREMENT,
  `gaji_code` varchar(255) DEFAULT NULL,
  `gaji_tahun` varchar(255) DEFAULT NULL,
  `gaji_rupiah` varchar(255) DEFAULT NULL,
  `gaji_pp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gaji_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1055 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of gajis
-- ----------------------------
BEGIN;
INSERT INTO `gajis` VALUES (1, '1100', '2019', '1560800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (2, '1101', '2019', '1560800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (3, '1102', '2019', '1610000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (4, '1103', '2019', '1610000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (5, '1104', '2019', '1660700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (6, '1105', '2019', '1660700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (7, '1106', '2019', '1713000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (8, '1107', '2019', '1713000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (9, '1108', '2019', '1766900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (10, '1109', '2019', '1766900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (11, '1110', '2019', '1822600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (12, '1111', '2019', '1822600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (13, '1112', '2019', '1880000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (14, '1113', '2019', '1880000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (15, '1114', '2019', '1939200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (16, '1115', '2019', '1939200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (17, '1116', '2019', '2000300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (18, '1117', '2019', '2000300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (19, '1118', '2019', '2063300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (20, '1119', '2019', '2063300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (21, '1120', '2019', '2128300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (22, '1121', '2019', '2128300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (23, '1122', '2019', '2195300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (24, '1123', '2019', '2195300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (25, '1124', '2019', '2264400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (26, '1125', '2019', '2264400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (27, '1126', '2019', '2335800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (28, '1127', '2019', '2335800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (29, '1203', '2019', '1704500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (30, '1204', '2019', '1704500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (31, '1205', '2019', '1758200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (32, '1206', '2019', '1758200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (33, '1207', '2019', '1813600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (34, '1208', '2019', '1813600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (35, '1209', '2019', '1870700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (36, '1210', '2019', '1870700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (37, '1211', '2019', '1929600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (38, '1212', '2019', '1929600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (39, '1213', '2019', '1990400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (40, '1214', '2019', '1990400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (41, '1215', '2019', '2053100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (42, '1216', '2019', '2053100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (43, '1217', '2019', '2117700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (44, '1218', '2019', '2117700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (45, '1219', '2019', '2184400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (46, '1220', '2019', '2184400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (47, '1221', '2019', '2253200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (48, '1222', '2019', '2253200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (49, '1223', '2019', '2324200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (50, '1224', '2019', '2324200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (51, '1225', '2019', '2397400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (52, '1226', '2019', '2397400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (53, '1227', '2019', '2472900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (54, '1303', '2019', '1776600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (55, '1304', '2019', '1776600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (56, '1305', '2019', '1832600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (57, '1306', '2019', '1832600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (58, '1307', '2019', '1890300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (59, '1308', '2019', '1890300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (60, '1309', '2019', '1949800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (61, '1310', '2019', '1949800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (62, '1311', '2019', '2011200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (63, '1312', '2019', '2011200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (64, '1313', '2019', '2074600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (65, '1314', '2019', '2074600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (66, '1315', '2019', '2139900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (67, '1316', '2019', '2139900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (68, '1317', '2019', '2207300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (69, '1318', '2019', '2207300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (70, '1319', '2019', '2276800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (71, '1320', '2019', '2276800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (72, '1321', '2019', '2348500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (73, '1322', '2019', '2348500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (74, '1323', '2019', '2422500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (75, '1324', '2019', '2422500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (76, '1325', '2019', '2498800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (77, '1326', '2019', '2498800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (78, '1327', '2019', '2577500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (79, '1403', '2019', '1851800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (80, '1404', '2019', '1851800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (81, '1405', '2019', '1910100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (82, '1406', '2019', '1910100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (83, '1407', '2019', '1970200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (84, '1408', '2019', '1970200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (85, '1409', '2019', '2032300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (86, '1410', '2019', '2032300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (87, '1411', '2019', '2096300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (88, '1412', '2019', '2096300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (89, '1413', '2019', '2162300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (90, '1414', '2019', '2162300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (91, '1415', '2019', '2230400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (92, '1416', '2019', '2230400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (93, '1417', '2019', '2300700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (94, '1418', '2019', '2300700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (95, '1419', '2019', '2373100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (96, '1420', '2019', '2373100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (97, '1421', '2019', '2447900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (98, '1422', '2019', '2447900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (99, '1423', '2019', '2525000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (100, '1424', '2019', '2525000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (101, '1425', '2019', '2604500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (102, '1426', '2019', '2604500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (103, '1427', '2019', '2686500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (104, '2100', '2019', '2022200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (105, '2101', '2019', '2054100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (106, '2102', '2019', '2054100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (107, '2103', '2019', '2118800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (108, '2104', '2019', '2118800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (109, '2105', '2019', '2185500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (110, '2106', '2019', '2185500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (111, '2107', '2019', '2254300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (112, '2108', '2019', '2254300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (113, '2109', '2019', '2325300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (114, '2110', '2019', '2325300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (115, '2111', '2019', '2398600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (116, '2112', '2019', '2398600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (117, '2113', '2019', '2474100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (118, '2114', '2019', '2474100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (119, '2115', '2019', '2552000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (120, '2116', '2019', '2552000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (121, '2117', '2019', '2632400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (122, '2118', '2019', '2632400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (123, '2119', '2019', '2715300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (124, '2120', '2019', '2715300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (125, '2121', '2019', '2800800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (126, '2122', '2019', '2800800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (127, '2123', '2019', '2889100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (128, '2124', '2019', '2889100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (129, '2125', '2019', '2980000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (130, '2126', '2019', '2980000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (131, '2127', '2019', '3073900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (132, '2128', '2019', '3073900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (133, '2129', '2019', '3170700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (134, '2130', '2019', '3170700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (135, '2131', '2019', '3270600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (136, '2132', '2019', '3270600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (137, '2133', '2019', '3373600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (138, '2203', '2019', '2208400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (139, '2204', '2019', '2208400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (140, '2205', '2019', '2277900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (141, '2206', '2019', '2277900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (142, '2207', '2019', '2349700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (143, '2208', '2019', '2349700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (144, '2209', '2019', '2432700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (145, '2210', '2019', '2432700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (146, '2211', '2019', '2500000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (147, '2212', '2019', '2500000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (148, '2213', '2019', '2578800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (149, '2214', '2019', '2578800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (150, '2215', '2019', '2660000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (151, '2216', '2019', '2660000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (152, '2217', '2019', '2743800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (153, '2218', '2019', '2743800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (154, '2219', '2019', '2830200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (155, '2220', '2019', '2830200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (156, '2221', '2019', '2919300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (157, '2222', '2019', '2919300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (158, '2223', '2019', '3011300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (159, '2224', '2019', '3011300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (160, '2225', '2019', '3106100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (161, '2226', '2019', '3106100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (162, '2227', '2019', '3203900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (163, '2228', '2019', '3203900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (164, '2229', '2019', '3304800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (165, '2230', '2019', '3304800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (166, '2231', '2019', '3408900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (167, '2232', '2019', '3408900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (168, '2233', '2019', '3516300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (169, '2303', '2019', '2301800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (170, '2304', '2019', '2301800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (171, '2305', '2019', '2374300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (172, '2306', '2019', '2374300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (173, '2307', '2019', '2449100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (174, '2308', '2019', '2449100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (175, '2309', '2019', '2526200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (176, '2310', '2019', '2526200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (177, '2311', '2019', '2605800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (178, '2312', '2019', '2605800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (179, '2313', '2019', '2687800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (180, '2314', '2019', '2687800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (181, '2315', '2019', '2772500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (182, '2316', '2019', '2772500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (183, '2317', '2019', '2859800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (184, '2318', '2019', '2859800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (185, '2319', '2019', '2949900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (186, '2320', '2019', '2949900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (187, '2321', '2019', '3042800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (188, '2322', '2019', '3042800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (189, '2323', '2019', '3138600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (190, '2324', '2019', '3138600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (191, '2325', '2019', '3237500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (192, '2326', '2019', '3237500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (193, '2327', '2019', '3339400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (194, '2328', '2019', '3339400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (195, '2329', '2019', '3444600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (196, '2330', '2019', '3444600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (197, '2331', '2019', '3553100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (198, '2332', '2019', '3553100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (199, '2333', '2019', '3665000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (200, '2403', '2019', '2399200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (201, '2404', '2019', '2399200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (202, '2405', '2019', '2474700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (203, '2406', '2019', '2474700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (204, '2407', '2019', '2552700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (205, '2408', '2019', '2552700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (206, '2409', '2019', '2633100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (207, '2410', '2019', '2633100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (208, '2411', '2019', '2716000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (209, '2412', '2019', '2716000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (210, '2413', '2019', '2801500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (211, '2414', '2019', '2801500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (212, '2415', '2019', '2889800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (213, '2416', '2019', '2889800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (214, '2417', '2019', '2980800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (215, '2418', '2019', '2980800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (216, '2419', '2019', '3074700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (217, '2420', '2019', '3074700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (218, '2421', '2019', '3171500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (219, '2422', '2019', '3171500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (220, '2423', '2019', '3271400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (221, '2424', '2019', '3271400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (222, '2425', '2019', '3374400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (223, '2426', '2019', '3374400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (224, '2427', '2019', '3480700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (225, '2428', '2019', '3480700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (226, '2429', '2019', '3590300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (227, '2430', '2019', '3590300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (228, '2431', '2019', '3703400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (229, '2432', '2019', '3703400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (230, '2433', '2019', '3820000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (231, '3100', '2019', '2579400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (232, '3101', '2019', '2579400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (233, '3102', '2019', '2660700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (234, '3103', '2019', '2660700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (235, '3104', '2019', '2744500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (236, '3105', '2019', '2744500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (237, '3106', '2019', '2830900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (238, '3107', '2019', '2830900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (239, '3108', '2019', '2920100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (240, '3109', '2019', '2920100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (241, '3110', '2019', '3012000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (242, '3111', '2019', '3012000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (243, '3112', '2019', '3106900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (244, '3113', '2019', '3106900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (245, '3114', '2019', '3204700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (246, '3115', '2019', '3204700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (247, '3116', '2019', '3305700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (248, '3117', '2019', '3305700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (249, '3118', '2019', '3409800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (250, '3119', '2019', '3409800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (251, '3120', '2019', '3517200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (252, '3121', '2019', '3517200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (253, '3122', '2019', '3627900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (254, '3123', '2019', '3627900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (255, '3124', '2019', '3742200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (256, '3125', '2019', '3742200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (257, '3126', '2019', '3860100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (258, '3127', '2019', '3860100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (259, '3128', '2019', '3981600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (260, '3129', '2019', '3981600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (261, '3130', '2019', '4107000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (262, '3131', '2019', '4107000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (263, '3132', '2019', '4236400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (264, '3200', '2019', '2688500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (265, '3201', '2019', '2688500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (266, '3202', '2019', '2773200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (267, '3203', '2019', '2773200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (268, '3204', '2019', '2860500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (269, '3205', '2019', '2860500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (270, '3206', '2019', '2950600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (271, '3207', '2019', '2950600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (272, '3208', '2019', '3043600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (273, '3209', '2019', '3043600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (274, '3210', '2019', '3139400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (275, '3211', '2019', '3139400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (276, '3212', '2019', '3238300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (277, '3213', '2019', '3238300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (278, '3214', '2019', '3340300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (279, '3215', '2019', '3340300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (280, '3216', '2019', '3445500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (281, '3217', '2019', '3445500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (282, '3218', '2019', '3554000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (283, '3219', '2019', '3554000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (284, '3220', '2019', '3665900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (285, '3221', '2019', '3665900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (286, '3222', '2019', '3781400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (287, '3223', '2019', '3781400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (288, '3224', '2019', '3900500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (289, '3225', '2019', '3900500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (290, '3226', '2019', '4023300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (291, '3227', '2019', '4023300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (292, '3228', '2019', '4150100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (293, '3229', '2019', '4150100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (294, '3230', '2019', '4280800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (295, '3231', '2019', '4280800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (296, '3232', '2019', '4415600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (297, '3300', '2019', '2802300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (298, '3301', '2019', '2802300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (299, '3302', '2019', '2890500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (300, '3303', '2019', '2890500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (301, '3304', '2019', '2981500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (302, '3305', '2019', '2981500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (303, '3306', '2019', '3075500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (304, '3307', '2019', '3075500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (305, '3308', '2019', '3172300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (306, '3309', '2019', '3172300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (307, '3310', '2019', '3272200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (308, '3311', '2019', '3272200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (309, '3312', '2019', '3375300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (310, '3313', '2019', '3375300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (311, '3314', '2019', '3481600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (312, '3315', '2019', '3481600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (313, '3316', '2019', '3591200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (314, '3317', '2019', '3591200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (315, '3318', '2019', '3704300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (316, '3319', '2019', '3704300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (317, '3320', '2019', '3821000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (318, '3321', '2019', '3821000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (319, '3322', '2019', '3941400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (320, '3323', '2019', '3941400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (321, '3324', '2019', '4065500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (322, '3325', '2019', '4065500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (323, '3326', '2019', '4193500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (324, '3327', '2019', '4193500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (325, '3328', '2019', '4325600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (326, '3329', '2019', '4325600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (327, '3330', '2019', '4461800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (328, '3331', '2019', '4461800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (329, '3332', '2019', '4602400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (330, '3400', '2019', '2920800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (331, '3401', '2019', '2920800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (332, '3402', '2019', '3012800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (333, '3403', '2019', '3012800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (334, '3404', '2019', '3107700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (335, '3405', '2019', '3107700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (336, '3406', '2019', '3205500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (337, '3407', '2019', '3205500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (338, '3408', '2019', '3306500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (339, '3409', '2019', '3306500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (340, '3410', '2019', '3410600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (341, '3411', '2019', '3410600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (342, '3412', '2019', '3518100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (343, '3413', '2019', '3518100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (344, '3414', '2019', '3628900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (345, '3415', '2019', '3628900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (346, '3416', '2019', '3743100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (347, '3417', '2019', '3743100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (348, '3418', '2019', '3861000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (349, '3419', '2019', '3861000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (350, '3420', '2019', '3982600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (351, '3421', '2019', '3982600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (352, '3422', '2019', '4108100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (353, '3423', '2019', '4108100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (354, '3424', '2019', '4237500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (355, '3425', '2019', '4237500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (356, '3426', '2019', '4370900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (357, '3427', '2019', '4370900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (358, '3428', '2019', '4508600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (359, '3429', '2019', '4508600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (360, '3430', '2019', '4650600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (361, '3431', '2019', '4650600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (362, '3432', '2019', '4797000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (363, '4100', '2019', '3044300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (364, '4101', '2019', '3044300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (365, '4102', '2019', '3140200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (366, '4103', '2019', '3140200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (367, '4104', '2019', '3239100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (368, '4105', '2019', '3239100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (369, '4106', '2019', '3341100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (370, '4107', '2019', '3341100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (371, '4108', '2019', '3446400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (372, '4109', '2019', '3446400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (373, '4110', '2019', '3554900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (374, '4111', '2019', '3554900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (375, '4112', '2019', '3666900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (376, '4113', '2019', '3666900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (377, '4114', '2019', '3782400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (378, '4115', '2019', '3782400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (379, '4116', '2019', '3901500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (380, '4117', '2019', '3901500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (381, '4118', '2019', '4024400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (382, '4119', '2019', '4024400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (383, '4120', '2019', '4151100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (384, '4121', '2019', '4151100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (385, '4122', '2019', '4281800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (386, '4123', '2019', '4281800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (387, '4124', '2019', '4416700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (388, '4125', '2019', '4416700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (389, '4126', '2019', '4555800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (390, '4127', '2019', '4555800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (391, '4128', '2019', '4699300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (392, '4129', '2019', '4699300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (393, '4130', '2019', '4847300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (394, '4131', '2019', '4847300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (395, '4132', '2019', '5000000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (396, '4200', '2019', '3173100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (397, '4201', '2019', '3173100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (398, '4202', '2019', '3273100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (399, '4203', '2019', '3273100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (400, '4204', '2019', '3376100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (401, '4205', '2019', '3376100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (402, '4206', '2019', '3482500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (403, '4207', '2019', '3482500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (404, '4208', '2019', '3592100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (405, '4209', '2019', '3592100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (406, '4210', '2019', '3705300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (407, '4211', '2019', '3705300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (408, '4212', '2019', '3822000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (409, '4213', '2019', '3822000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (410, '4214', '2019', '3942400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (411, '4215', '2019', '3942400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (412, '4216', '2019', '4066500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (413, '4217', '2019', '4066500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (414, '4218', '2019', '4194600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (415, '4219', '2019', '4194600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (416, '4220', '2019', '4326700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (417, '4221', '2019', '4326700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (418, '4222', '2019', '4463000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (419, '4223', '2019', '4463000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (420, '4224', '2019', '4603500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (421, '4225', '2019', '4603500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (422, '4226', '2019', '4748500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (423, '4227', '2019', '4748500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (424, '4228', '2019', '4898100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (425, '4229', '2019', '4898100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (426, '4230', '2019', '5052300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (427, '4231', '2019', '5052300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (428, '4232', '2019', '5211500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (429, '4300', '2019', '3307300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (430, '4301', '2019', '3307300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (431, '4302', '2019', '3411500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (432, '4303', '2019', '3411500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (433, '4304', '2019', '3518900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (434, '4305', '2019', '3518900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (435, '4306', '2019', '3629800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (436, '4307', '2019', '3629800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (437, '4308', '2019', '3744100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (438, '4309', '2019', '3744100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (439, '4310', '2019', '3862000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (440, '4311', '2019', '3862000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (441, '4312', '2019', '3983600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (442, '4313', '2019', '3983600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (443, '4314', '2019', '4109100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (444, '4315', '2019', '4109100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (445, '4316', '2019', '4238500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (446, '4317', '2019', '4238500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (447, '4318', '2019', '4372000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (448, '4319', '2019', '4372000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (449, '4320', '2019', '4509700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (450, '4321', '2019', '4509700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (451, '4322', '2019', '4651800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (452, '4323', '2019', '4651800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (453, '4324', '2019', '4798300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (454, '4325', '2019', '4798300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (455, '4326', '2019', '4949400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (456, '4327', '2019', '4949400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (457, '4328', '2019', '5105300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (458, '4329', '2019', '5105300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (459, '4330', '2019', '5266100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (460, '4331', '2019', '5266100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (461, '4332', '2019', '5431900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (462, '4400', '2019', '3447200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (463, '4401', '2019', '3447200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (464, '4402', '2019', '3555800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (465, '4403', '2019', '3555800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (466, '4404', '2019', '3667800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (467, '4405', '2019', '3667800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (468, '4406', '2019', '3783300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (469, '4407', '2019', '3783300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (470, '4408', '2019', '3902500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (471, '4409', '2019', '3902500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (472, '4410', '2019', '4025400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (473, '4411', '2019', '4025400\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (474, '4412', '2019', '4152200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (475, '4413', '2019', '4152200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (476, '4414', '2019', '4282900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (477, '4415', '2019', '4282900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (478, '4416', '2019', '4417800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (479, '4417', '2019', '4417800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (480, '4418', '2019', '4557000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (481, '4419', '2019', '4557000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (482, '4420', '2019', '4700500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (483, '4421', '2019', '4700500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (484, '4422', '2019', '4848500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (485, '4423', '2019', '4848500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (486, '4424', '2019', '5001200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (487, '4425', '2019', '5001200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (488, '4426', '2019', '5158700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (489, '4427', '2019', '5158700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (490, '4428', '2019', '5321200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (491, '4429', '2019', '5321200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (492, '4430', '2019', '5488800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (493, '4431', '2019', '5488800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (494, '4432', '2019', '5661700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (495, '4500', '2019', '3593100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (496, '4501', '2019', '3593100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (497, '4502', '2019', '3706200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (498, '4503', '2019', '3706200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (499, '4504', '2019', '3822900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (500, '4505', '2019', '3822900\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (501, '4506', '2019', '3943300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (502, '4507', '2019', '3943300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (503, '4508', '2019', '4067500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (504, '4509', '2019', '4067500\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (505, '4510', '2019', '4195700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (506, '4511', '2019', '4195700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (507, '4512', '2019', '4327800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (508, '4513', '2019', '4327800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (509, '4514', '2019', '4464100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (510, '4515', '2019', '4464100\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (511, '4516', '2019', '4604700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (512, '4517', '2019', '4604700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (513, '4518', '2019', '4749700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (514, '4519', '2019', '4749700\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (515, '4520', '2019', '4899300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (516, '4521', '2019', '4899300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (517, '4522', '2019', '5053600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (518, '4523', '2019', '5053600\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (519, '4524', '2019', '5212800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (520, '4525', '2019', '5212800\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (521, '4526', '2019', '5377000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (522, '4527', '2019', '5377000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (523, '4528', '2019', '5546300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (524, '4529', '2019', '5546300\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (525, '4530', '2019', '5721000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (526, '4531', '2019', '5721000\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (527, '4532', '2019', '5901200\r', '15 Tahun 2019');
INSERT INTO `gajis` VALUES (528, '1100', '2024', '1685700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (529, '1101', '2024', '1685700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (530, '1102', '2024', '1738800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (531, '1103', '2024', '1738800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (532, '1104', '2024', '1793500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (533, '1105', '2024', '1793500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (534, '1106', '2024', '1850000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (535, '1107', '2024', '1850000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (536, '1108', '2024', '1908300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (537, '1109', '2024', '1908300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (538, '1110', '2024', '1968400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (539, '1111', '2024', '1968400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (540, '1112', '2024', '2030400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (541, '1113', '2024', '2030400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (542, '1114', '2024', '2094300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (543, '1115', '2024', '2094300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (544, '1116', '2024', '2160300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (545, '1117', '2024', '2160300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (546, '1118', '2024', '2228300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (547, '1119', '2024', '2228300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (548, '1120', '2024', '2298500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (549, '1121', '2024', '2298500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (550, '1122', '2024', '2370900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (551, '1123', '2024', '2370900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (552, '1124', '2024', '2445500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (553, '1125', '2024', '2445500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (554, '1126', '2024', '2522600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (555, '1127', '2024', '2522600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (556, '1203', '2024', '1840800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (557, '1204', '2024', '1840800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (558, '1205', '2024', '1898800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (559, '1206', '2024', '1898800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (560, '1207', '2024', '1958600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (561, '1208', '2024', '1958600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (562, '1209', '2024', '2020300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (563, '1210', '2024', '2020300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (564, '1211', '2024', '2083900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (565, '1212', '2024', '2083900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (566, '1213', '2024', '2149600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (567, '1214', '2024', '2149600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (568, '1215', '2024', '2217300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (569, '1216', '2024', '2217300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (570, '1217', '2024', '2287100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (571, '1218', '2024', '2287100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (572, '1219', '2024', '2359100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (573, '1220', '2024', '2359100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (574, '1221', '2024', '2433400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (575, '1222', '2024', '2433400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (576, '1223', '2024', '2510100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (577, '1224', '2024', '2510100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (578, '1225', '2024', '2589100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (579, '1226', '2024', '2589100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (580, '1227', '2024', '2670700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (581, '1303', '2024', '1918700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (582, '1304', '2024', '1918700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (583, '1305', '2024', '1979100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (584, '1306', '2024', '1979100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (585, '1307', '2024', '2041500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (586, '1308', '2024', '2041500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (587, '1309', '2024', '2105800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (588, '1310', '2024', '2105800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (589, '1311', '2024', '2172100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (590, '1312', '2024', '2172100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (591, '1313', '2024', '2240500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (592, '1314', '2024', '2240500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (593, '1315', '2024', '2311100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (594, '1316', '2024', '2311100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (595, '1317', '2024', '2383900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (596, '1318', '2024', '2383900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (597, '1319', '2024', '2458900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (598, '1320', '2024', '2458900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (599, '1321', '2024', '2536400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (600, '1322', '2024', '2536400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (601, '1323', '2024', '2616300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (602, '1324', '2024', '2616300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (603, '1325', '2024', '2698700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (604, '1326', '2024', '2698700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (605, '1327', '2024', '2783700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (606, '1403', '2024', '1999900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (607, '1404', '2024', '1999900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (608, '1405', '2024', '2062900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (609, '1406', '2024', '2062900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (610, '1407', '2024', '2127800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (611, '1408', '2024', '2127800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (612, '1409', '2024', '2194800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (613, '1410', '2024', '2194800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (614, '1411', '2024', '2264000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (615, '1412', '2024', '2264000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (616, '1413', '2024', '2335300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (617, '1414', '2024', '2335300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (618, '1415', '2024', '2408800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (619, '1416', '2024', '2408800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (620, '1417', '2024', '2484700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (621, '1418', '2024', '2484700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (622, '1419', '2024', '2562900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (623, '1420', '2024', '2562900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (624, '1421', '2024', '2643700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (625, '1422', '2024', '2643700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (626, '1423', '2024', '2726900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (627, '1424', '2024', '2726900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (628, '1425', '2024', '2812800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (629, '1426', '2024', '2812800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (630, '1427', '2024', '2901400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (631, '2100', '2024', '2184000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (632, '2101', '2024', '2218400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (633, '2102', '2024', '2218400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (634, '2103', '2024', '2288200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (635, '2104', '2024', '2288200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (636, '2105', '2024', '2360300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (637, '2106', '2024', '2360300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (638, '2107', '2024', '2434600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (639, '2108', '2024', '2434600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (640, '2109', '2024', '2511300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (641, '2110', '2024', '2511300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (642, '2111', '2024', '2590400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (643, '2112', '2024', '2590400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (644, '2113', '2024', '2672000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (645, '2114', '2024', '2672000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (646, '2115', '2024', '2756200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (647, '2116', '2024', '2756200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (648, '2117', '2024', '2843000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (649, '2118', '2024', '2843000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (650, '2119', '2024', '2932500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (651, '2120', '2024', '2932500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (652, '2121', '2024', '3024900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (653, '2122', '2024', '3024900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (654, '2123', '2024', '3120100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (655, '2124', '2024', '3120100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (656, '2125', '2024', '3218400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (657, '2126', '2024', '3218400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (658, '2127', '2024', '3319800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (659, '2128', '2024', '3319800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (660, '2129', '2024', '3424300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (661, '2130', '2024', '3424300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (662, '2131', '2024', '3532200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (663, '2132', '2024', '3532200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (664, '2133', '2024', '3643400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (665, '2203', '2024', '2385000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (666, '2204', '2024', '2385000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (667, '2205', '2024', '2460100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (668, '2206', '2024', '2460100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (669, '2207', '2024', '2537600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (670, '2208', '2024', '2537600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (671, '2209', '2024', '2617500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (672, '2210', '2024', '2617500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (673, '2211', '2024', '2700000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (674, '2212', '2024', '2700000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (675, '2213', '2024', '2785000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (676, '2214', '2024', '2785000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (677, '2215', '2024', '2872700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (678, '2216', '2024', '2872700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (679, '2217', '2024', '2963200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (680, '2218', '2024', '2963200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (681, '2219', '2024', '3056500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (682, '2220', '2024', '3056500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (683, '2221', '2024', '3152800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (684, '2222', '2024', '3152800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (685, '2223', '2024', '3252100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (686, '2224', '2024', '3252100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (687, '2225', '2024', '3354500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (688, '2226', '2024', '3354500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (689, '2227', '2024', '3460200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (690, '2228', '2024', '3460200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (691, '2229', '2024', '3569200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (692, '2230', '2024', '3569200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (693, '2231', '2024', '3681600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (694, '2232', '2024', '3681600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (695, '2233', '2024', '3797500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (696, '2303', '2024', '2485900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (697, '2304', '2024', '2485900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (698, '2305', '2024', '2564200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (699, '2306', '2024', '2564200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (700, '2307', '2024', '2645000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (701, '2308', '2024', '2645000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (702, '2309', '2024', '2728300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (703, '2310', '2024', '2728300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (704, '2311', '2024', '2814200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (705, '2312', '2024', '2814200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (706, '2313', '2024', '2902800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (707, '2314', '2024', '2902800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (708, '2315', '2024', '2994300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (709, '2316', '2024', '2994300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (710, '2317', '2024', '3088600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (711, '2318', '2024', '3088600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (712, '2319', '2024', '3185800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (713, '2320', '2024', '3185800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (714, '2321', '2024', '3286200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (715, '2322', '2024', '3286200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (716, '2323', '2024', '3389700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (717, '2324', '2024', '3389700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (718, '2325', '2024', '3496400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (719, '2326', '2024', '3496400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (720, '2327', '2024', '3606500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (721, '2328', '2024', '3606500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (722, '2329', '2024', '3720100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (723, '2330', '2024', '3720100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (724, '2331', '2024', '3837300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (725, '2332', '2024', '3837300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (726, '2333', '2024', '3958200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (727, '2403', '2024', '2591100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (728, '2404', '2024', '2591100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (729, '2405', '2024', '2672700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (730, '2406', '2024', '2672700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (731, '2407', '2024', '2756800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (732, '2408', '2024', '2756800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (733, '2409', '2024', '2843700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (734, '2410', '2024', '2843700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (735, '2411', '2024', '2933200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (736, '2412', '2024', '2933200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (737, '2413', '2024', '3025600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (738, '2414', '2024', '3025600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (739, '2415', '2024', '3120900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (740, '2416', '2024', '3120900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (741, '2417', '2024', '3219200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (742, '2418', '2024', '3219200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (743, '2419', '2024', '3320600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (744, '2420', '2024', '3320600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (745, '2421', '2024', '3425200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (746, '2422', '2024', '3425200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (747, '2423', '2024', '3533100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (748, '2424', '2024', '3533100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (749, '2425', '2024', '3644300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (750, '2426', '2024', '3644300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (751, '2427', '2024', '3759100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (752, '2428', '2024', '3759100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (753, '2429', '2024', '3877500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (754, '2430', '2024', '3877500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (755, '2431', '2024', '3999600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (756, '2432', '2024', '3999600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (757, '2433', '2024', '4125600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (758, '3100', '2024', '2785700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (759, '3101', '2024', '2785700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (760, '3102', '2024', '2873500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (761, '3103', '2024', '2873500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (762, '3104', '2024', '2873500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (763, '3105', '2024', '2873500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (764, '3106', '2024', '3057300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (765, '3107', '2024', '3057300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (766, '3108', '2024', '3153600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (767, '3109', '2024', '3153600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (768, '3110', '2024', '3252900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (769, '3111', '2024', '3252900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (770, '3112', '2024', '3355400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (771, '3113', '2024', '3355400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (772, '3114', '2024', '3461100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (773, '3115', '2024', '3461100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (774, '3116', '2024', '3570100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (775, '3117', '2024', '3570100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (776, '3118', '2024', '3682500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (777, '3119', '2024', '3682500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (778, '3120', '2024', '3798500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (779, '3121', '2024', '3798500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (780, '3122', '2024', '3918100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (781, '3123', '2024', '3918100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (782, '3124', '2024', '4041500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (783, '3125', '2024', '4041500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (784, '3126', '2024', '4168800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (785, '3127', '2024', '4168800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (786, '3128', '2024', '4300100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (787, '3129', '2024', '4300100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (788, '3130', '2024', '4435500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (789, '3131', '2024', '4435500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (790, '3132', '2024', '4575200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (791, '3200', '2024', '2903600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (792, '3201', '2024', '2903600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (793, '3202', '2024', '2995000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (794, '3203', '2024', '2995000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (795, '3204', '2024', '3089300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (796, '3205', '2024', '3089300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (797, '3206', '2024', '3186600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (798, '3207', '2024', '3186600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (799, '3208', '2024', '3287000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (800, '3209', '2024', '3287000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (801, '3210', '2024', '3390500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (802, '3211', '2024', '3390500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (803, '3212', '2024', '3497300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (804, '3213', '2024', '3497300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (805, '3214', '2024', '3607500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (806, '3215', '2024', '3607500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (807, '3216', '2024', '3721100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (808, '3217', '2024', '3721100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (809, '3218', '2024', '3838300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (810, '3219', '2024', '3838300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (811, '3220', '2024', '3959200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (812, '3221', '2024', '3959200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (813, '3222', '2024', '4083900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (814, '3223', '2024', '4083900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (815, '3224', '2024', '4212500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (816, '3225', '2024', '4212500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (817, '3226', '2024', '4345100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (818, '3227', '2024', '4345100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (819, '3228', '2024', '4482000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (820, '3229', '2024', '4482000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (821, '3230', '2024', '4623200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (822, '3231', '2024', '4623200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (823, '3232', '2024', '4768800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (824, '3300', '2024', '3026400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (825, '3301', '2024', '3026400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (826, '3302', '2024', '3121700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (827, '3303', '2024', '3121700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (828, '3304', '2024', '3220000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (829, '3305', '2024', '3220000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (830, '3306', '2024', '3321400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (831, '3307', '2024', '3321400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (832, '3308', '2024', '3426000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (833, '3309', '2024', '3426000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (834, '3310', '2024', '3533900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (835, '3311', '2024', '3533900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (836, '3312', '2024', '3645200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (837, '3313', '2024', '3645200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (838, '3314', '2024', '3760100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (839, '3315', '2024', '3760100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (840, '3316', '2024', '3878500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (841, '3317', '2024', '3878500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (842, '3318', '2024', '4000600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (843, '3319', '2024', '4000600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (844, '3320', '2024', '4126600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (845, '3321', '2024', '4126600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (846, '3322', '2024', '4256600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (847, '3323', '2024', '4256600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (848, '3324', '2024', '4390700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (849, '3325', '2024', '4390700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (850, '3326', '2024', '4528900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (851, '3327', '2024', '4528900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (852, '3328', '2024', '4671600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (853, '3329', '2024', '4671600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (854, '3330', '2024', '4818700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (855, '3331', '2024', '4818700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (856, '3332', '2024', '4970500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (857, '3400', '2024', '3154400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (858, '3401', '2024', '3154400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (859, '3402', '2024', '3253700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (860, '3403', '2024', '3253700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (861, '3404', '2024', '3356200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (862, '3405', '2024', '3356200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (863, '3406', '2024', '3461900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (864, '3407', '2024', '3461900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (865, '3408', '2024', '3571000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (866, '3409', '2024', '3571000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (867, '3410', '2024', '3683400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (868, '3411', '2024', '3683400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (869, '3412', '2024', '3799400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (870, '3413', '2024', '3799400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (871, '3414', '2024', '3919100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (872, '3415', '2024', '3919100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (873, '3416', '2024', '4042500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (874, '3417', '2024', '4042500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (875, '3418', '2024', '4169900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (876, '3419', '2024', '4169900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (877, '3420', '2024', '4301200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (878, '3421', '2024', '4301200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (879, '3422', '2024', '4436700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (880, '3423', '2024', '4436700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (881, '3424', '2024', '4576400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (882, '3425', '2024', '4576400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (883, '3426', '2024', '4720500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (884, '3427', '2024', '4720500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (885, '3428', '2024', '4869200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (886, '3429', '2024', '4869200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (887, '3430', '2024', '5022500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (888, '3431', '2024', '5022500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (889, '3432', '2024', '5180700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (890, '4100', '2024', '3287800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (891, '4101', '2024', '3287800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (892, '4102', '2024', '3391400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (893, '4103', '2024', '3391400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (894, '4104', '2024', '3498200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (895, '4105', '2024', '3498200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (896, '4106', '2024', '3608400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (897, '4107', '2024', '3608400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (898, '4108', '2024', '3722000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (899, '4109', '2024', '3722000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (900, '4110', '2024', '3839200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (901, '4111', '2024', '3839200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (902, '4112', '2024', '3960200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (903, '4113', '2024', '3960200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (904, '4114', '2024', '4084900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (905, '4115', '2024', '4084900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (906, '4116', '2024', '4213500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (907, '4117', '2024', '4213500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (908, '4118', '2024', '4346200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (909, '4119', '2024', '4346200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (910, '4120', '2024', '4483100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (911, '4121', '2024', '4483100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (912, '4122', '2024', '4624300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (913, '4123', '2024', '4624300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (914, '4124', '2024', '4770000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (915, '4125', '2024', '4770000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (916, '4126', '2024', '4920200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (917, '4127', '2024', '4920200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (918, '4128', '2024', '5075200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (919, '4129', '2024', '5075200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (920, '4130', '2024', '5235000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (921, '4131', '2024', '5235000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (922, '4132', '2024', '5399900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (923, '4200', '2024', '3426900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (924, '4201', '2024', '3426900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (925, '4202', '2024', '3534800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (926, '4203', '2024', '3534800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (927, '4204', '2024', '3646200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (928, '4205', '2024', '3646200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (929, '4206', '2024', '3761000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (930, '4207', '2024', '3761000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (931, '4208', '2024', '3879500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (932, '4209', '2024', '3879500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (933, '4210', '2024', '4001600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (934, '4211', '2024', '4001600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (935, '4212', '2024', '4127700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (936, '4213', '2024', '4127700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (937, '4214', '2024', '4257700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (938, '4215', '2024', '4257700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (939, '4216', '2024', '4391800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (940, '4217', '2024', '4391800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (941, '4218', '2024', '4530100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (942, '4219', '2024', '4530100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (943, '4220', '2024', '4672800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (944, '4221', '2024', '4672800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (945, '4222', '2024', '4819900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (946, '4223', '2024', '4819900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (947, '4224', '2024', '4971700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (948, '4225', '2024', '4971700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (949, '4226', '2024', '5128300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (950, '4227', '2024', '5128300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (951, '4228', '2024', '5289800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (952, '4229', '2024', '5289800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (953, '4230', '2024', '5456400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (954, '4231', '2024', '5456400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (955, '4232', '2024', '5628300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (956, '4300', '2024', '3571900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (957, '4301', '2024', '3571900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (958, '4302', '2024', '3684400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (959, '4303', '2024', '3684400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (960, '4304', '2024', '3800400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (961, '4305', '2024', '3800400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (962, '4306', '2024', '3920100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (963, '4307', '2024', '3920100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (964, '4308', '2024', '4043600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (965, '4309', '2024', '4043600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (966, '4310', '2024', '4170900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (967, '4311', '2024', '4170900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (968, '4312', '2024', '4302300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (969, '4313', '2024', '4302300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (970, '4314', '2024', '4437800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (971, '4315', '2024', '4437800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (972, '4316', '2024', '4577500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (973, '4317', '2024', '4577500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (974, '4318', '2024', '4721700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (975, '4319', '2024', '4721700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (976, '4320', '2024', '4870400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (977, '4321', '2024', '4870400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (978, '4322', '2024', '5023800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (979, '4323', '2024', '5023800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (980, '4324', '2024', '5182000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (981, '4325', '2024', '5182000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (982, '4326', '2024', '5345200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (983, '4327', '2024', '5345200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (984, '4328', '2024', '5513600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (985, '4329', '2024', '5513600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (986, '4330', '2024', '5687200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (987, '4331', '2024', '5687200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (988, '4332', '2024', '5866400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (989, '4400', '2024', '3723000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (990, '4401', '2024', '3723000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (991, '4402', '2024', '3840200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (992, '4403', '2024', '3840200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (993, '4404', '2024', '3961200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (994, '4405', '2024', '3961200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (995, '4406', '2024', '4085900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (996, '4407', '2024', '4085900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (997, '4408', '2024', '4214600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (998, '4409', '2024', '4214600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (999, '4410', '2024', '4347300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1000, '4411', '2024', '4347300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1001, '4412', '2024', '4484300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1002, '4413', '2024', '4484300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1003, '4414', '2024', '4625500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1004, '4415', '2024', '4625500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1005, '4416', '2024', '4771200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1006, '4417', '2024', '4771200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1007, '4418', '2024', '4921400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1008, '4419', '2024', '4921400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1009, '4420', '2024', '5076400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1010, '4421', '2024', '5076400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1011, '4422', '2024', '5236300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1012, '4423', '2024', '5236300\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1013, '4424', '2024', '5401200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1014, '4425', '2024', '5401200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1015, '4426', '2024', '5571400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1016, '4427', '2024', '5571400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1017, '4428', '2024', '5746800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1018, '4429', '2024', '5746800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1019, '4430', '2024', '5927800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1020, '4431', '2024', '5927800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1021, '4432', '2024', '6114500\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1022, '4500', '2024', '3880400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1023, '4501', '2024', '3880400\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1024, '4502', '2024', '4002700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1025, '4503', '2024', '4002700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1026, '4504', '2024', '4128700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1027, '4505', '2024', '4128700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1028, '4506', '2024', '4258700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1029, '4507', '2024', '4258700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1030, '4508', '2024', '4392900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1031, '4509', '2024', '4392900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1032, '4510', '2024', '4531200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1033, '4511', '2024', '4531200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1034, '4512', '2024', '4673000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1035, '4513', '2024', '4673000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1036, '4514', '2024', '4821100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1037, '4515', '2024', '4821100\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1038, '4516', '2024', '4973000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1039, '4517', '2024', '4973000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1040, '4518', '2024', '5129600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1041, '4519', '2024', '5129600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1042, '4520', '2024', '5291200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1043, '4521', '2024', '5291200\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1044, '4522', '2024', '5457800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1045, '4523', '2024', '5457800\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1046, '4524', '2024', '5629700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1047, '4525', '2024', '5629700\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1048, '4526', '2024', '5807000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1049, '4527', '2024', '5807000\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1050, '4528', '2024', '5989900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1051, '4529', '2024', '5989900\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1052, '4530', '2024', '6178600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1053, '4531', '2024', '6178600\r', '05 Tahun 2024');
INSERT INTO `gajis` VALUES (1054, '4532', '2024', '6373200', '05 Tahun 2024');
COMMIT;

-- ----------------------------
-- Table structure for golrus
-- ----------------------------
DROP TABLE IF EXISTS `golrus`;
CREATE TABLE `golrus` (
  `golru_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `golru_numb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `golru_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `golru_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`golru_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of golrus
-- ----------------------------
BEGIN;
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
COMMIT;

-- ----------------------------
-- Table structure for jabatans
-- ----------------------------
DROP TABLE IF EXISTS `jabatans`;
CREATE TABLE `jabatans` (
  `jabatan_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jabatan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`jabatan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jabatans
-- ----------------------------
BEGIN;
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
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
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
COMMIT;

-- ----------------------------
-- Table structure for opds
-- ----------------------------
DROP TABLE IF EXISTS `opds`;
CREATE TABLE `opds` (
  `opd_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `opd_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`opd_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of opds
-- ----------------------------
BEGIN;
INSERT INTO `opds` VALUES (1, 'DPMPTSP', '2024-04-22 11:29:52', '2024-04-22 11:29:55');
COMMIT;

-- ----------------------------
-- Table structure for paperlesses
-- ----------------------------
DROP TABLE IF EXISTS `paperlesses`;
CREATE TABLE `paperlesses` (
  `paperless_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `berkas_id` int DEFAULT NULL,
  `pegawai_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paperless_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paperless_ket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`paperless_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of paperlesses
-- ----------------------------
BEGIN;
INSERT INTO `paperlesses` VALUES (1, 5, '1', 'skp.pdf', 'SKP 2022', NULL, NULL);
INSERT INTO `paperlesses` VALUES (2, 5, '1', 'skp.pdf', 'SKP 2022', NULL, NULL);
INSERT INTO `paperlesses` VALUES (3, 1, '1', 'skp.pdf', 'CPNS', NULL, NULL);
INSERT INTO `paperlesses` VALUES (4, 2, '1', 'skp.pdf', 'PNS', NULL, NULL);
INSERT INTO `paperlesses` VALUES (5, 5, '1', 'skp.pdf', 'SKP 2022', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pegawais
-- ----------------------------
DROP TABLE IF EXISTS `pegawais`;
CREATE TABLE `pegawais` (
  `pegawai_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `opd_id` int NOT NULL,
  `jabatan_id` int NOT NULL,
  `golru_id` int DEFAULT NULL,
  `pegawai_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai_nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pegawai_nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomorhp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jeniskelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama_id` int DEFAULT NULL,
  `masa_kerja` int DEFAULT NULL,
  `foto_pegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pegawai_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pegawais
-- ----------------------------
BEGIN;
INSERT INTO `pegawais` VALUES (1, 1, 1, 15, 'Ir. QURATUL AINI, M.Si', '3512085108670002', '196708111999012001', '085257655908', '12321312', 'Perempuan', '12321312', '2024-05-06', 2, NULL, NULL, NULL, '2024-05-07 15:58:11');
INSERT INTO `pegawais` VALUES (2, 1, 2, 14, 'IDDHA ARUM BAWANA, S.STP, M.Si.', '3512060512750001', '197512051996021003', '082142361857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (3, 1, 3, 11, 'MELLY AGUSTINA, S.H., M.H.', '3512084208780004', '197808022007012011', '082334205000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (4, 1, 4, 9, 'EKO ANDY WIDARTO, S.T.', '3512060501780003', '197801052008011011', '08123197497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (5, 1, 5, 8, 'BADRUR ROCHIM', '3512070504850004', '198504052006041011', '085257624386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (6, 1, 6, 11, 'AGUS BUDIYANTO, S.H.', '3512081408850006', '198508142006041003', '085233114433', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (7, 1, 7, 9, 'NANANG WAHYUDI, S.E.', '3512071405830002', '198305142010011002', '082141379693', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (8, 1, 8, 8, 'FOMA WEDI KARTIKA', '3512061504770001', '197704152009031001', '085236536311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (9, 1, 9, 9, 'NUR ULFA APRILIA, S.E.', '3512086004990001', 'NUR ULFA APRILIA, S.E.', '085257500090', NULL, NULL, NULL, '2024-05-19', NULL, NULL, NULL, NULL, '2024-05-19 17:07:55');
INSERT INTO `pegawais` VALUES (10, 1, 10, 12, 'NURHASANAH, S.Sos.', '3512135012800002', '198012102007012010', '085313920763', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (11, 1, 11, 8, 'AMIR MAHFUD', '\"3512072402720001', '197202242007011006', '085204861614', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (12, 1, 12, 12, 'ZAINUL ARIFIN, S.P.', '\"3514132002790003', '197902202009031004', '082330719718', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (13, 1, 13, 12, 'SUWIGNYO AFANDI, S.Sos.', '3512081306710002', '197106131992111001', '08123485361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (14, 1, 14, 12, 'SITI SANIYAH, S.Sos.', '3512074505660001', '196605051990032013', '081357356034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (15, 1, 15, 9, 'RIZAL BAHRONI, S.Tr.IP.', '3512101108980001', '199808112022081001', '085258313202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (16, 1, 16, 9, 'SONY NOVAYANTO, S.H.', '\"3512051711820001', '198211172010011001', '085336035463', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (17, 1, 17, 8, 'NURAHMAD', '3512050101730008', '197301012009031001', '082332609811', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (18, 1, 18, 7, 'ZENDY ROBI JUNIANTO, A.Md.Kom.', '3512072106950001', '199506212020121009', '085257500090', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (19, 1, 19, 9, 'BERLIANA EKA YORINDA, S.Tr.IP.', NULL, '199904272023082001', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pegawais` VALUES (20, 1, 1, 1, '123', NULL, '321', '12321', '3123', 'Laki-laki', '21312', '2024-05-06', 2, NULL, NULL, '2024-05-06 14:12:23', '2024-05-06 14:12:23');
INSERT INTO `pegawais` VALUES (21, 1, 3, 2, '213213123', NULL, '213213123', '3213', '123', 'Laki-laki', '312321', '2024-05-07', 1, NULL, NULL, '2024-05-06 14:57:09', '2024-05-07 15:52:44');
INSERT INTO `pegawais` VALUES (22, 1, 5, 3, '312321', NULL, '312321', '312321', '12321', 'Laki-laki', '12321', '2020-12-01', 3, NULL, NULL, '2024-05-07 15:54:22', '2024-05-07 16:34:26');
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_cuti
-- ----------------------------
DROP TABLE IF EXISTS `t_cuti`;
CREATE TABLE `t_cuti` (
  `cuti_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT NULL,
  `haricuti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggalmulai` date DEFAULT NULL,
  `tanggalakhir` date DEFAULT NULL,
  `tipe_cuti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alasan_cuti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat_cuti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ttdcuti` int DEFAULT NULL,
  `tanggal_sk` date DEFAULT NULL,
  `nomor_sk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`cuti_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_cuti
-- ----------------------------
BEGIN;
INSERT INTO `t_cuti` VALUES (1, 14, '1', '2024-04-29', '2024-04-29', '1', '1', '1', 1, '2024-04-30', '851/220/431.315.1.1/2024', NULL, NULL);
INSERT INTO `t_cuti` VALUES (2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-07 16:50:23', '2024-05-07 16:50:23');
INSERT INTO `t_cuti` VALUES (3, 4, NULL, '2024-05-07', '2024-05-08', '1', 'Lempo', 'Jeru', 1, '2024-05-07', '851/221/431.315.1.1/2024', '2024-05-07 16:55:13', '2024-05-07 16:55:13');
INSERT INTO `t_cuti` VALUES (4, 4, NULL, '2024-05-07', '2024-05-08', '1', 'Lempo', 'Jeru', 1, '2024-05-07', '851/221/431.315.1.1/2024', '2024-05-07 16:56:49', '2024-05-07 16:56:49');
INSERT INTO `t_cuti` VALUES (5, 5, NULL, '2024-05-07', '2024-05-08', '1', 'Lempo', 'Wringin', 1, '2024-05-07', '851/222/431.315.1.1/2024', '2024-05-07 16:57:31', '2024-05-07 16:57:31');
INSERT INTO `t_cuti` VALUES (6, 5, NULL, '2024-05-07', '2024-05-08', '1', 'Lempo', 'Wringin', 1, '2024-05-07', '851/222/431.315.1.1/2024', '2024-05-07 16:57:40', '2024-05-07 16:57:40');
COMMIT;

-- ----------------------------
-- Table structure for t_kariskarsu
-- ----------------------------
DROP TABLE IF EXISTS `t_kariskarsu`;
CREATE TABLE `t_kariskarsu` (
  `kariskarsu_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT NULL,
  `tanggalnikah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nikahdi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namaistri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nikistri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pangkatgolru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `satuanorganisasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instansi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tempatlahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggallahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jeniskelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ttdpegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`kariskarsu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_kariskarsu
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_kgb
-- ----------------------------
DROP TABLE IF EXISTS `t_kgb`;
CREATE TABLE `t_kgb` (
  `kgb_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT NULL,
  `dasarkgb_id` int DEFAULT NULL,
  `tanggalsk_bf` date DEFAULT NULL,
  `nomorsk_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tmtsk_bf` date DEFAULT NULL,
  `blnsk_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `thnsk_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ppsk_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mkth_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mkbl_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gajilama_bf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `selisihtahun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mkth_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mkbl_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gajibaru_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tmtbl_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tmtth_br` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tmtkgb_br` date DEFAULT NULL,
  `tahunsk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pp_lama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pp_baru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nomor_sk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_sk` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ttdcuti` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`kgb_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_kgb
-- ----------------------------
BEGIN;
INSERT INTO `t_kgb` VALUES (20, 9, 1, '2022-03-31', '813/1055/431.404.2/2022', '2022-03-01', '03', '2022', '2019', '00', '00', '2579400\r', '2', '02', '00', '2873500\r', '03', '2024', '2024-03-01', '2024', '15 Tahun 2019', '05 Tahun 2024', '822.3/303/431.315/2024', '2024-03-27', 1, '2024-05-19 16:55:47', '2024-05-19 16:55:47');
COMMIT;

-- ----------------------------
-- Table structure for t_pensiun
-- ----------------------------
DROP TABLE IF EXISTS `t_pensiun`;
CREATE TABLE `t_pensiun` (
  `pensiun_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ttdpegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`pensiun_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_pensiun
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_tugasbelajar
-- ----------------------------
DROP TABLE IF EXISTS `t_tugasbelajar`;
CREATE TABLE `t_tugasbelajar` (
  `tugasbelajar_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ttdpegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`tugasbelajar_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_tugasbelajar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for type_jabatans
-- ----------------------------
DROP TABLE IF EXISTS `type_jabatans`;
CREATE TABLE `type_jabatans` (
  `typejab_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `typejab_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`typejab_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of type_jabatans
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'a', 'berliana.ey@situbondokab.go.id', NULL, '$2y$10$aCq9LPvYHHjxJjg/.MH7ueSKaUeKAhR/UB5ns1RQ2iASb68eMaQAW', NULL, '2024-04-22 03:46:09', '2024-04-22 03:46:09');
COMMIT;

-- ----------------------------
-- View structure for v_cuti
-- ----------------------------
DROP VIEW IF EXISTS `v_cuti`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_cuti` AS select `t_cuti`.`cuti_id` AS `cuti_id`,`t_cuti`.`pegawai_id` AS `pegawai_id`,`t_cuti`.`haricuti` AS `haricuti`,`t_cuti`.`tanggalmulai` AS `tanggalmulai`,`t_cuti`.`tanggalakhir` AS `tanggalakhir`,`t_cuti`.`tipe_cuti` AS `tipe_cuti`,`t_cuti`.`alasan_cuti` AS `alasan_cuti`,`t_cuti`.`alamat_cuti` AS `alamat_cuti`,`t_cuti`.`ttdcuti` AS `ttdcuti`,`t_cuti`.`tanggal_sk` AS `tanggal_sk`,`t_cuti`.`nomor_sk` AS `nomor_sk`,`ttdpeg`.`pegawai_name` AS `pegawai_namettd`,`ttdpeg`.`pegawai_nip` AS `pegawai_nipttd`,`ttdpeg`.`golru_name` AS `golru_namettd`,`v_pegawai`.`pegawai_name` AS `pegawai_name`,`v_pegawai`.`golru_code` AS `golru_code`,`v_pegawai`.`golru_name` AS `golru_name`,`v_pegawai`.`jabatan_name` AS `jabatan_name`,`v_pegawai`.`pegawai_nip` AS `pegawai_nip`,`v_pegawai`.`nomorhp` AS `nomorhp` from ((`t_cuti` left join `v_pegawai` on((`t_cuti`.`pegawai_id` = `v_pegawai`.`pegawai_id`))) left join `v_pegawai` `ttdpeg` on((`t_cuti`.`ttdcuti` = `ttdpeg`.`pegawai_id`)));

-- ----------------------------
-- View structure for v_kgb
-- ----------------------------
DROP VIEW IF EXISTS `v_kgb`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_kgb` AS select `t_kgb`.`kgb_id` AS `kgb_id`,`t_kgb`.`pegawai_id` AS `pegawai_id`,`t_kgb`.`dasarkgb_id` AS `dasarkgb_id`,`t_kgb`.`tanggalsk_bf` AS `tanggalsk_bf`,`t_kgb`.`nomorsk_bf` AS `nomorsk_bf`,`t_kgb`.`tmtsk_bf` AS `tmtsk_bf`,`t_kgb`.`blnsk_bf` AS `blnsk_bf`,`t_kgb`.`thnsk_bf` AS `thnsk_bf`,`t_kgb`.`ppsk_bf` AS `ppsk_bf`,`t_kgb`.`mkth_bf` AS `mkth_bf`,`t_kgb`.`mkbl_bf` AS `mkbl_bf`,`t_kgb`.`gajilama_bf` AS `gajilama_bf`,`t_kgb`.`selisihtahun` AS `selisihtahun`,`t_kgb`.`mkth_br` AS `mkth_br`,`t_kgb`.`mkbl_br` AS `mkbl_br`,`t_kgb`.`gajibaru_br` AS `gajibaru_br`,`t_kgb`.`tmtbl_br` AS `tmtbl_br`,`t_kgb`.`tmtth_br` AS `tmtth_br`,`t_kgb`.`tmtkgb_br` AS `tmtkgb_br`,`t_kgb`.`tahunsk` AS `tahunsk`,`t_kgb`.`pp_lama` AS `pp_lama`,`t_kgb`.`pp_baru` AS `pp_baru`,`v_pegawai`.`pegawai_nip` AS `pegawai_nip`,`v_pegawai`.`opd_id` AS `opd_id`,`v_pegawai`.`jabatan_id` AS `jabatan_id`,`v_pegawai`.`golru_id` AS `golru_id`,`v_pegawai`.`pegawai_name` AS `pegawai_name`,`v_pegawai`.`pegawai_nik` AS `pegawai_nik`,`v_pegawai`.`nomorhp` AS `nomorhp`,`v_pegawai`.`alamat_lengkap` AS `alamat_lengkap`,`v_pegawai`.`jeniskelamin` AS `jeniskelamin`,`v_pegawai`.`tempat_lahir` AS `tempat_lahir`,`v_pegawai`.`tanggal_lahir` AS `tanggal_lahir`,`v_pegawai`.`agama_id` AS `agama_id`,`v_pegawai`.`foto_pegawai` AS `foto_pegawai`,`v_pegawai`.`created_at` AS `created_at`,`v_pegawai`.`updated_at` AS `updated_at`,`v_pegawai`.`golru_numb` AS `golru_numb`,`v_pegawai`.`golru_code` AS `golru_code`,`v_pegawai`.`golru_name` AS `golru_name`,`v_pegawai`.`jabatan_name` AS `jabatan_name`,`v_pegawai`.`opd_name` AS `opd_name`,`v_pegawai`.`agama_name` AS `agama_name`,`t_kgb`.`tanggal_sk` AS `tanggal_sk`,`t_kgb`.`nomor_sk` AS `nomor_sk`,`t_kgb`.`ttdcuti` AS `ttdcuti`,`ttdpeg`.`pegawai_name` AS `pegawai_namettd`,`ttdpeg`.`pegawai_nip` AS `pegawai_nipttd`,`ttdpeg`.`golru_name` AS `golru_namettd` from ((`t_kgb` left join `v_pegawai` on((`t_kgb`.`pegawai_id` = `v_pegawai`.`pegawai_id`))) left join `v_pegawai` `ttdpeg` on((`t_kgb`.`ttdcuti` = `ttdpeg`.`pegawai_id`)));

-- ----------------------------
-- View structure for v_paperless
-- ----------------------------
DROP VIEW IF EXISTS `v_paperless`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_paperless` AS select `paperlesses`.`paperless_id` AS `paperless_id`,`paperlesses`.`berkas_id` AS `berkas_id`,`paperlesses`.`pegawai_id` AS `pegawai_id`,`paperlesses`.`paperless_file` AS `paperless_file`,`paperlesses`.`paperless_ket` AS `paperless_ket`,`paperlesses`.`created_at` AS `created_at`,`paperlesses`.`updated_at` AS `updated_at`,`pegawais`.`pegawai_nip` AS `pegawai_nip`,`pegawais`.`pegawai_name` AS `pegawai_name`,`berkas`.`berkas_name` AS `berkas_name` from ((`paperlesses` left join `pegawais` on((`paperlesses`.`pegawai_id` = `pegawais`.`pegawai_id`))) left join `berkas` on((`paperlesses`.`berkas_id` = `berkas`.`berkas_id`))) order by `berkas`.`berkas_id`;

-- ----------------------------
-- View structure for v_pegawai
-- ----------------------------
DROP VIEW IF EXISTS `v_pegawai`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_pegawai` AS select `pegawais`.`pegawai_id` AS `pegawai_id`,`pegawais`.`opd_id` AS `opd_id`,`pegawais`.`jabatan_id` AS `jabatan_id`,`pegawais`.`golru_id` AS `golru_id`,`pegawais`.`pegawai_name` AS `pegawai_name`,`pegawais`.`pegawai_nik` AS `pegawai_nik`,`pegawais`.`pegawai_nip` AS `pegawai_nip`,`pegawais`.`nomorhp` AS `nomorhp`,`pegawais`.`alamat_lengkap` AS `alamat_lengkap`,`pegawais`.`jeniskelamin` AS `jeniskelamin`,`pegawais`.`tempat_lahir` AS `tempat_lahir`,`pegawais`.`tanggal_lahir` AS `tanggal_lahir`,`pegawais`.`agama_id` AS `agama_id`,`pegawais`.`foto_pegawai` AS `foto_pegawai`,`pegawais`.`created_at` AS `created_at`,`pegawais`.`updated_at` AS `updated_at`,`golrus`.`golru_numb` AS `golru_numb`,`golrus`.`golru_code` AS `golru_code`,`golrus`.`golru_name` AS `golru_name`,`jabatans`.`jabatan_name` AS `jabatan_name`,`opds`.`opd_name` AS `opd_name`,`agamas`.`agama_name` AS `agama_name` from ((((`pegawais` left join `golrus` on((`pegawais`.`golru_id` = `golrus`.`golru_id`))) left join `jabatans` on((`pegawais`.`jabatan_id` = `jabatans`.`jabatan_id`))) left join `opds` on((`pegawais`.`opd_id` = `opds`.`opd_id`))) left join `agamas` on((`pegawais`.`agama_id` = `agamas`.`agama_id`)));

SET FOREIGN_KEY_CHECKS = 1;
