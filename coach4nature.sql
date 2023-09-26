/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : coach4nature

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 26/09/2023 18:09:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for airfields
-- ----------------------------
DROP TABLE IF EXISTS `airfields`;
CREATE TABLE `airfields`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spaces_count` tinyint(3) UNSIGNED NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of airfields
-- ----------------------------

-- ----------------------------
-- Table structure for airfields_images
-- ----------------------------
DROP TABLE IF EXISTS `airfields_images`;
CREATE TABLE `airfields_images`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `airfield_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of airfields_images
-- ----------------------------

-- ----------------------------
-- Table structure for chats
-- ----------------------------
DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chats
-- ----------------------------
INSERT INTO `chats` VALUES (1, 2, '');
INSERT INTO `chats` VALUES (2, 2, '');
INSERT INTO `chats` VALUES (3, 2, '');
INSERT INTO `chats` VALUES (4, 2, '');
INSERT INTO `chats` VALUES (5, 0, '');
INSERT INTO `chats` VALUES (6, 0, 'sf54d3f1d3f1s6dgd1g6s5dg65sdg65s4dg6sd');
INSERT INTO `chats` VALUES (7, 0, '');
INSERT INTO `chats` VALUES (8, 0, '');
INSERT INTO `chats` VALUES (9, 0, '');
INSERT INTO `chats` VALUES (10, 0, '');
INSERT INTO `chats` VALUES (11, 0, '');
INSERT INTO `chats` VALUES (12, 0, '');
INSERT INTO `chats` VALUES (13, 0, '');
INSERT INTO `chats` VALUES (14, 0, 'f96b49a7645bbe2df8ecb1b9bdbdf2e9');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_code` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 240 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (1, 'AF', 'Afghanistan', 93);
INSERT INTO `countries` VALUES (2, 'AL', 'Albania', 355);
INSERT INTO `countries` VALUES (3, 'DZ', 'Algeria', 213);
INSERT INTO `countries` VALUES (4, 'AS', 'American Samoa', 1684);
INSERT INTO `countries` VALUES (5, 'AD', 'Andorra', 376);
INSERT INTO `countries` VALUES (6, 'AO', 'Angola', 244);
INSERT INTO `countries` VALUES (7, 'AI', 'Anguilla', 1264);
INSERT INTO `countries` VALUES (9, 'AG', 'Antigua and Barbuda', 1268);
INSERT INTO `countries` VALUES (10, 'AR', 'Argentina', 54);
INSERT INTO `countries` VALUES (11, 'AM', 'Armenia', 374);
INSERT INTO `countries` VALUES (12, 'AW', 'Aruba', 297);
INSERT INTO `countries` VALUES (13, 'AU', 'Australia', 61);
INSERT INTO `countries` VALUES (14, 'AT', 'Austria', 43);
INSERT INTO `countries` VALUES (15, 'AZ', 'Azerbaijan', 994);
INSERT INTO `countries` VALUES (16, 'BS', 'Bahamas', 1242);
INSERT INTO `countries` VALUES (17, 'BH', 'Bahrain', 973);
INSERT INTO `countries` VALUES (18, 'BD', 'Bangladesh', 880);
INSERT INTO `countries` VALUES (19, 'BB', 'Barbados', 1246);
INSERT INTO `countries` VALUES (20, 'BY', 'Belarus', 375);
INSERT INTO `countries` VALUES (21, 'BE', 'Belgium', 32);
INSERT INTO `countries` VALUES (22, 'BZ', 'Belize', 501);
INSERT INTO `countries` VALUES (23, 'BJ', 'Benin', 229);
INSERT INTO `countries` VALUES (24, 'BM', 'Bermuda', 1441);
INSERT INTO `countries` VALUES (25, 'BT', 'Bhutan', 975);
INSERT INTO `countries` VALUES (26, 'BO', 'Bolivia', 591);
INSERT INTO `countries` VALUES (27, 'BA', 'Bosnia and Herzegovina', 387);
INSERT INTO `countries` VALUES (28, 'BW', 'Botswana', 267);
INSERT INTO `countries` VALUES (29, 'BV', 'Bouvet Island', 0);
INSERT INTO `countries` VALUES (30, 'BR', 'Brazil', 55);
INSERT INTO `countries` VALUES (31, 'IO', 'British Indian Ocean Territory', 246);
INSERT INTO `countries` VALUES (32, 'BN', 'Brunei Darussalam', 673);
INSERT INTO `countries` VALUES (33, 'BG', 'Bulgaria', 359);
INSERT INTO `countries` VALUES (34, 'BF', 'Burkina Faso', 226);
INSERT INTO `countries` VALUES (35, 'BI', 'Burundi', 257);
INSERT INTO `countries` VALUES (36, 'KH', 'Cambodia', 855);
INSERT INTO `countries` VALUES (37, 'CM', 'Cameroon', 237);
INSERT INTO `countries` VALUES (38, 'CA', 'Canada', 1);
INSERT INTO `countries` VALUES (39, 'CV', 'Cape Verde', 238);
INSERT INTO `countries` VALUES (40, 'KY', 'Cayman Islands', 1345);
INSERT INTO `countries` VALUES (41, 'CF', 'Central African Republic', 236);
INSERT INTO `countries` VALUES (42, 'TD', 'Chad', 235);
INSERT INTO `countries` VALUES (43, 'CL', 'Chile', 56);
INSERT INTO `countries` VALUES (44, 'CN', 'China', 86);
INSERT INTO `countries` VALUES (45, 'CX', 'Christmas Island', 61);
INSERT INTO `countries` VALUES (46, 'CC', 'Cocos (Keeling) Islands', 672);
INSERT INTO `countries` VALUES (47, 'CO', 'Colombia', 57);
INSERT INTO `countries` VALUES (48, 'KM', 'Comoros', 269);
INSERT INTO `countries` VALUES (49, 'CG', 'Congo', 242);
INSERT INTO `countries` VALUES (50, 'CD', 'Congo, the Democratic Republic of the', 242);
INSERT INTO `countries` VALUES (51, 'CK', 'Cook Islands', 682);
INSERT INTO `countries` VALUES (52, 'CR', 'Costa Rica', 506);
INSERT INTO `countries` VALUES (53, 'CI', 'Cote D\'Ivoire', 225);
INSERT INTO `countries` VALUES (54, 'HR', 'Croatia', 385);
INSERT INTO `countries` VALUES (55, 'CU', 'Cuba', 53);
INSERT INTO `countries` VALUES (56, 'CY', 'Cyprus', 357);
INSERT INTO `countries` VALUES (57, 'CZ', 'Czech Republic', 420);
INSERT INTO `countries` VALUES (58, 'DK', 'Denmark', 45);
INSERT INTO `countries` VALUES (59, 'DJ', 'Djibouti', 253);
INSERT INTO `countries` VALUES (60, 'DM', 'Dominica', 1767);
INSERT INTO `countries` VALUES (61, 'DO', 'Dominican Republic', 1809);
INSERT INTO `countries` VALUES (62, 'EC', 'Ecuador', 593);
INSERT INTO `countries` VALUES (63, 'EG', 'Egypt', 20);
INSERT INTO `countries` VALUES (64, 'SV', 'El Salvador', 503);
INSERT INTO `countries` VALUES (65, 'GQ', 'Equatorial Guinea', 240);
INSERT INTO `countries` VALUES (66, 'ER', 'Eritrea', 291);
INSERT INTO `countries` VALUES (67, 'EE', 'Estonia', 372);
INSERT INTO `countries` VALUES (68, 'ET', 'Ethiopia', 251);
INSERT INTO `countries` VALUES (69, 'FK', 'Falkland Islands (Malvinas)', 500);
INSERT INTO `countries` VALUES (70, 'FO', 'Faroe Islands', 298);
INSERT INTO `countries` VALUES (71, 'FJ', 'Fiji', 679);
INSERT INTO `countries` VALUES (72, 'FI', 'Finland', 358);
INSERT INTO `countries` VALUES (73, 'FR', 'France', 33);
INSERT INTO `countries` VALUES (74, 'GF', 'French Guiana', 594);
INSERT INTO `countries` VALUES (75, 'PF', 'French Polynesia', 689);
INSERT INTO `countries` VALUES (76, 'TF', 'French Southern Territories', 0);
INSERT INTO `countries` VALUES (77, 'GA', 'Gabon', 241);
INSERT INTO `countries` VALUES (78, 'GM', 'Gambia', 220);
INSERT INTO `countries` VALUES (79, 'GE', 'Georgia', 995);
INSERT INTO `countries` VALUES (80, 'DE', 'Germany', 49);
INSERT INTO `countries` VALUES (81, 'GH', 'Ghana', 233);
INSERT INTO `countries` VALUES (82, 'GI', 'Gibraltar', 350);
INSERT INTO `countries` VALUES (83, 'GR', 'Greece', 30);
INSERT INTO `countries` VALUES (84, 'GL', 'Greenland', 299);
INSERT INTO `countries` VALUES (85, 'GD', 'Grenada', 1473);
INSERT INTO `countries` VALUES (86, 'GP', 'Guadeloupe', 590);
INSERT INTO `countries` VALUES (87, 'GU', 'Guam', 1671);
INSERT INTO `countries` VALUES (88, 'GT', 'Guatemala', 502);
INSERT INTO `countries` VALUES (89, 'GN', 'Guinea', 224);
INSERT INTO `countries` VALUES (90, 'GW', 'Guinea-Bissau', 245);
INSERT INTO `countries` VALUES (91, 'GY', 'Guyana', 592);
INSERT INTO `countries` VALUES (92, 'HT', 'Haiti', 509);
INSERT INTO `countries` VALUES (93, 'HM', 'Heard Island and Mcdonald Islands', 0);
INSERT INTO `countries` VALUES (94, 'VA', 'Holy See (Vatican City State)', 39);
INSERT INTO `countries` VALUES (95, 'HN', 'Honduras', 504);
INSERT INTO `countries` VALUES (96, 'HK', 'Hong Kong', 852);
INSERT INTO `countries` VALUES (97, 'HU', 'Hungary', 36);
INSERT INTO `countries` VALUES (98, 'IS', 'Iceland', 354);
INSERT INTO `countries` VALUES (99, 'IN', 'India', 91);
INSERT INTO `countries` VALUES (100, 'ID', 'Indonesia', 62);
INSERT INTO `countries` VALUES (101, 'IR', 'Iran, Islamic Republic of', 98);
INSERT INTO `countries` VALUES (102, 'IQ', 'Iraq', 964);
INSERT INTO `countries` VALUES (103, 'IE', 'Ireland', 353);
INSERT INTO `countries` VALUES (104, 'IL', 'Israel', 972);
INSERT INTO `countries` VALUES (105, 'IT', 'Italy', 39);
INSERT INTO `countries` VALUES (106, 'JM', 'Jamaica', 1876);
INSERT INTO `countries` VALUES (107, 'JP', 'Japan', 81);
INSERT INTO `countries` VALUES (108, 'JO', 'Jordan', 962);
INSERT INTO `countries` VALUES (109, 'KZ', 'Kazakhstan', 7);
INSERT INTO `countries` VALUES (110, 'KE', 'Kenya', 254);
INSERT INTO `countries` VALUES (111, 'KI', 'Kiribati', 686);
INSERT INTO `countries` VALUES (112, 'KP', 'Korea, Democratic People\'s Republic of', 850);
INSERT INTO `countries` VALUES (113, 'KR', 'Korea, Republic of', 82);
INSERT INTO `countries` VALUES (114, 'KW', 'Kuwait', 965);
INSERT INTO `countries` VALUES (115, 'KG', 'Kyrgyzstan', 996);
INSERT INTO `countries` VALUES (116, 'LA', 'Lao People\'s Democratic Republic', 856);
INSERT INTO `countries` VALUES (117, 'LV', 'Latvia', 371);
INSERT INTO `countries` VALUES (118, 'LB', 'Lebanon', 961);
INSERT INTO `countries` VALUES (119, 'LS', 'Lesotho', 266);
INSERT INTO `countries` VALUES (120, 'LR', 'Liberia', 231);
INSERT INTO `countries` VALUES (121, 'LY', 'Libyan Arab Jamahiriya', 218);
INSERT INTO `countries` VALUES (122, 'LI', 'Liechtenstein', 423);
INSERT INTO `countries` VALUES (123, 'LT', 'Lithuania', 370);
INSERT INTO `countries` VALUES (124, 'LU', 'Luxembourg', 352);
INSERT INTO `countries` VALUES (125, 'MO', 'Macao', 853);
INSERT INTO `countries` VALUES (126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 389);
INSERT INTO `countries` VALUES (127, 'MG', 'Madagascar', 261);
INSERT INTO `countries` VALUES (128, 'MW', 'Malawi', 265);
INSERT INTO `countries` VALUES (129, 'MY', 'Malaysia', 60);
INSERT INTO `countries` VALUES (130, 'MV', 'Maldives', 960);
INSERT INTO `countries` VALUES (131, 'ML', 'Mali', 223);
INSERT INTO `countries` VALUES (132, 'MT', 'Malta', 356);
INSERT INTO `countries` VALUES (133, 'MH', 'Marshall Islands', 692);
INSERT INTO `countries` VALUES (134, 'MQ', 'Martinique', 596);
INSERT INTO `countries` VALUES (135, 'MR', 'Mauritania', 222);
INSERT INTO `countries` VALUES (136, 'MU', 'Mauritius', 230);
INSERT INTO `countries` VALUES (137, 'YT', 'Mayotte', 269);
INSERT INTO `countries` VALUES (138, 'MX', 'Mexico', 52);
INSERT INTO `countries` VALUES (139, 'FM', 'Micronesia, Federated States of', 691);
INSERT INTO `countries` VALUES (140, 'MD', 'Moldova, Republic of', 373);
INSERT INTO `countries` VALUES (141, 'MC', 'Monaco', 377);
INSERT INTO `countries` VALUES (142, 'MN', 'Mongolia', 976);
INSERT INTO `countries` VALUES (143, 'MS', 'Montserrat', 1664);
INSERT INTO `countries` VALUES (144, 'MA', 'Morocco', 212);
INSERT INTO `countries` VALUES (145, 'MZ', 'Mozambique', 258);
INSERT INTO `countries` VALUES (146, 'MM', 'Myanmar', 95);
INSERT INTO `countries` VALUES (147, 'NA', 'Namibia', 264);
INSERT INTO `countries` VALUES (148, 'NR', 'Nauru', 674);
INSERT INTO `countries` VALUES (149, 'NP', 'Nepal', 977);
INSERT INTO `countries` VALUES (150, 'NL', 'Netherlands', 31);
INSERT INTO `countries` VALUES (151, 'AN', 'Netherlands Antilles', 599);
INSERT INTO `countries` VALUES (152, 'NC', 'New Caledonia', 687);
INSERT INTO `countries` VALUES (153, 'NZ', 'New Zealand', 64);
INSERT INTO `countries` VALUES (154, 'NI', 'Nicaragua', 505);
INSERT INTO `countries` VALUES (155, 'NE', 'Niger', 227);
INSERT INTO `countries` VALUES (156, 'NG', 'Nigeria', 234);
INSERT INTO `countries` VALUES (157, 'NU', 'Niue', 683);
INSERT INTO `countries` VALUES (158, 'NF', 'Norfolk Island', 672);
INSERT INTO `countries` VALUES (159, 'MP', 'Northern Mariana Islands', 1670);
INSERT INTO `countries` VALUES (160, 'NO', 'Norway', 47);
INSERT INTO `countries` VALUES (161, 'OM', 'Oman', 968);
INSERT INTO `countries` VALUES (162, 'PK', 'Pakistan', 92);
INSERT INTO `countries` VALUES (163, 'PW', 'Palau', 680);
INSERT INTO `countries` VALUES (164, 'PS', 'Palestinian Territory, Occupied', 970);
INSERT INTO `countries` VALUES (165, 'PA', 'Panama', 507);
INSERT INTO `countries` VALUES (166, 'PG', 'Papua New Guinea', 675);
INSERT INTO `countries` VALUES (167, 'PY', 'Paraguay', 595);
INSERT INTO `countries` VALUES (168, 'PE', 'Peru', 51);
INSERT INTO `countries` VALUES (169, 'PH', 'Philippines', 63);
INSERT INTO `countries` VALUES (170, 'PN', 'Pitcairn', 0);
INSERT INTO `countries` VALUES (171, 'PL', 'Poland', 48);
INSERT INTO `countries` VALUES (172, 'PT', 'Portugal', 351);
INSERT INTO `countries` VALUES (173, 'PR', 'Puerto Rico', 1787);
INSERT INTO `countries` VALUES (174, 'QA', 'Qatar', 974);
INSERT INTO `countries` VALUES (175, 'RE', 'Reunion', 262);
INSERT INTO `countries` VALUES (176, 'RO', 'Romania', 40);
INSERT INTO `countries` VALUES (177, 'RU', 'Russian Federation', 7);
INSERT INTO `countries` VALUES (178, 'RW', 'Rwanda', 250);
INSERT INTO `countries` VALUES (179, 'SH', 'Saint Helena', 290);
INSERT INTO `countries` VALUES (180, 'KN', 'Saint Kitts and Nevis', 1869);
INSERT INTO `countries` VALUES (181, 'LC', 'Saint Lucia', 1758);
INSERT INTO `countries` VALUES (182, 'PM', 'Saint Pierre and Miquelon', 508);
INSERT INTO `countries` VALUES (183, 'VC', 'Saint Vincent and the Grenadines', 1784);
INSERT INTO `countries` VALUES (184, 'WS', 'Samoa', 684);
INSERT INTO `countries` VALUES (185, 'SM', 'San Marino', 378);
INSERT INTO `countries` VALUES (186, 'ST', 'Sao Tome and Principe', 239);
INSERT INTO `countries` VALUES (187, 'SA', 'Saudi Arabia', 966);
INSERT INTO `countries` VALUES (188, 'SN', 'Senegal', 221);
INSERT INTO `countries` VALUES (189, 'CS', 'Serbia and Montenegro', 381);
INSERT INTO `countries` VALUES (190, 'SC', 'Seychelles', 248);
INSERT INTO `countries` VALUES (191, 'SL', 'Sierra Leone', 232);
INSERT INTO `countries` VALUES (192, 'SG', 'Singapore', 65);
INSERT INTO `countries` VALUES (193, 'SK', 'Slovakia', 421);
INSERT INTO `countries` VALUES (194, 'SI', 'Slovenia', 386);
INSERT INTO `countries` VALUES (195, 'SB', 'Solomon Islands', 677);
INSERT INTO `countries` VALUES (196, 'SO', 'Somalia', 252);
INSERT INTO `countries` VALUES (197, 'ZA', 'South Africa', 27);
INSERT INTO `countries` VALUES (198, 'GS', 'South Georgia and the South Sandwich Islands', 0);
INSERT INTO `countries` VALUES (199, 'ES', 'Spain', 34);
INSERT INTO `countries` VALUES (200, 'LK', 'Sri Lanka', 94);
INSERT INTO `countries` VALUES (201, 'SD', 'Sudan', 249);
INSERT INTO `countries` VALUES (202, 'SR', 'Suriname', 597);
INSERT INTO `countries` VALUES (203, 'SJ', 'Svalbard and Jan Mayen', 47);
INSERT INTO `countries` VALUES (204, 'SZ', 'Swaziland', 268);
INSERT INTO `countries` VALUES (205, 'SE', 'Sweden', 46);
INSERT INTO `countries` VALUES (206, 'CH', 'Switzerland', 41);
INSERT INTO `countries` VALUES (207, 'SY', 'Syrian Arab Republic', 963);
INSERT INTO `countries` VALUES (208, 'TW', 'Taiwan, Province of China', 886);
INSERT INTO `countries` VALUES (209, 'TJ', 'Tajikistan', 992);
INSERT INTO `countries` VALUES (210, 'TZ', 'Tanzania, United Republic of', 255);
INSERT INTO `countries` VALUES (211, 'TH', 'Thailand', 66);
INSERT INTO `countries` VALUES (212, 'TL', 'Timor-Leste', 670);
INSERT INTO `countries` VALUES (213, 'TG', 'Togo', 228);
INSERT INTO `countries` VALUES (214, 'TK', 'Tokelau', 690);
INSERT INTO `countries` VALUES (215, 'TO', 'Tonga', 676);
INSERT INTO `countries` VALUES (216, 'TT', 'Trinidad and Tobago', 1868);
INSERT INTO `countries` VALUES (217, 'TN', 'Tunisia', 216);
INSERT INTO `countries` VALUES (218, 'TR', 'Turkey', 90);
INSERT INTO `countries` VALUES (219, 'TM', 'Turkmenistan', 7370);
INSERT INTO `countries` VALUES (220, 'TC', 'Turks and Caicos Islands', 1649);
INSERT INTO `countries` VALUES (221, 'TV', 'Tuvalu', 688);
INSERT INTO `countries` VALUES (222, 'UG', 'Uganda', 256);
INSERT INTO `countries` VALUES (223, 'UA', 'Ukraine', 380);
INSERT INTO `countries` VALUES (224, 'AE', 'United Arab Emirates', 971);
INSERT INTO `countries` VALUES (225, 'GB', 'United Kingdom', 44);
INSERT INTO `countries` VALUES (226, 'US', 'United States', 1);
INSERT INTO `countries` VALUES (227, 'UM', 'United States Minor Outlying Islands', 1);
INSERT INTO `countries` VALUES (228, 'UY', 'Uruguay', 598);
INSERT INTO `countries` VALUES (229, 'UZ', 'Uzbekistan', 998);
INSERT INTO `countries` VALUES (230, 'VU', 'Vanuatu', 678);
INSERT INTO `countries` VALUES (231, 'VE', 'Venezuela', 58);
INSERT INTO `countries` VALUES (232, 'VN', 'Viet Nam', 84);
INSERT INTO `countries` VALUES (233, 'VG', 'Virgin Islands, British', 1284);
INSERT INTO `countries` VALUES (234, 'VI', 'Virgin Islands, U.s.', 1340);
INSERT INTO `countries` VALUES (235, 'WF', 'Wallis and Futuna', 681);
INSERT INTO `countries` VALUES (236, 'EH', 'Western Sahara', 212);
INSERT INTO `countries` VALUES (237, 'YE', 'Yemen', 967);
INSERT INTO `countries` VALUES (238, 'ZM', 'Zambia', 260);
INSERT INTO `countries` VALUES (239, 'ZW', 'Zimbabwe', 263);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `chat_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `has_sources` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_date` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `messages_user_id_to_users_by_id`(`user_id`) USING BTREE,
  INDEX `messages_chat_id_to_chats_by_id`(`chat_id`) USING BTREE,
  CONSTRAINT `messages_chat_id_to_chats_by_id` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_user_id_to_users_by_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1, 0, 6, 66, 'test', 0, 0);
INSERT INTO `messages` VALUES (2, 0, 6, 66, 'test test', 0, 0);
INSERT INTO `messages` VALUES (3, 0, 6, 70, 'test text test', 0, 0);
INSERT INTO `messages` VALUES (4, 0, 6, 66, 'test text', 0, 0);
INSERT INTO `messages` VALUES (5, 0, 6, 70, 'test text 444444', 0, 0);

-- ----------------------------
-- Table structure for messages_sources
-- ----------------------------
DROP TABLE IF EXISTS `messages_sources`;
CREATE TABLE `messages_sources`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `messages_sources_to_messages_by_id`(`message_id`) USING BTREE,
  CONSTRAINT `messages_sources_to_messages_by_id` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages_sources
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_source` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `created_timestamp_GMT0` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `posts_user_id_to_users_by_id`(`user_id`) USING BTREE,
  FULLTEXT INDEX `post_title_text_full_text`(`title`, `text`),
  CONSTRAINT `posts_user_id_to_users_by_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (17, 81, 'test title', 'text test text ', 0, 0);
INSERT INTO `posts` VALUES (18, 81, 'title', 'text text', 1, 1694674462);

-- ----------------------------
-- Table structure for posts_likes
-- ----------------------------
DROP TABLE IF EXISTS `posts_likes`;
CREATE TABLE `posts_likes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `posts_likes_to_users_by_id`(`user_id`) USING BTREE,
  INDEX `posts_likes_to_post_by_id`(`post_id`) USING BTREE,
  CONSTRAINT `posts_likes_to_post_by_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posts_likes_to_users_by_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts_likes
-- ----------------------------

-- ----------------------------
-- Table structure for posts_sources
-- ----------------------------
DROP TABLE IF EXISTS `posts_sources`;
CREATE TABLE `posts_sources`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `posts_sources_to_posts_by_id`(`post_id`) USING BTREE,
  CONSTRAINT `posts_sources_to_posts_by_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts_sources
-- ----------------------------
INSERT INTO `posts_sources` VALUES (1, 17, 'uploads/posts/e50ada6231d3820fa1bec35da81b4aa60ec96320.jpeg');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question_type_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `questions_to_questions_type_by_id`(`question_type_id`) USING BTREE,
  CONSTRAINT `questions_to_questions_type_by_id` FOREIGN KEY (`question_type_id`) REFERENCES `questions_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES (1, 1, 'Question 1', 'I tend to bounce back quickly after hard timesyyy');
INSERT INTO `questions` VALUES (2, 1, 'Question 2', 'I have a hard time making it through stressful events');
INSERT INTO `questions` VALUES (3, 1, 'Question 3', 'It does not take me long to recover from a stressful event');
INSERT INTO `questions` VALUES (4, 1, 'Question 4', 'It is hard for me to snap back when something bad happens');
INSERT INTO `questions` VALUES (5, 1, 'Question 5', 'I usually come though difficult times with little trouble');
INSERT INTO `questions` VALUES (6, 1, 'Question 6', 'I tend to take a long time to get over set-backs in my life');
INSERT INTO `questions` VALUES (7, 2, 'Question 7', 'I worry about climate change more than other people');
INSERT INTO `questions` VALUES (8, 2, 'Question 8', 'Thoughts about climate change cause me to have worries about what the future may hold');
INSERT INTO `questions` VALUES (9, 2, 'Question 9', 'I tend to seek out information about climate change in the media (e.g., TV, newspapers, internet)');
INSERT INTO `questions` VALUES (10, 2, 'Question 10', 'I tend to worry when I hear about climate change, even when the effects of climate change may be some time away');
INSERT INTO `questions` VALUES (11, 2, 'Question 11', 'I worry that outbreaks of severe weather may be the result of a changing climate');
INSERT INTO `questions` VALUES (12, 2, 'Question 12', 'I worry about climate change so much that I feel paralyzed in being able to do anything about it');
INSERT INTO `questions` VALUES (13, 2, 'Question 13', 'I worry that I might not be able to cope with climate change');
INSERT INTO `questions` VALUES (14, 2, 'Question 14', 'I notice that I have been worrying about climate change');
INSERT INTO `questions` VALUES (15, 2, 'Question 15', 'Once I begin to worry about climate change, I find it difficult to stop');
INSERT INTO `questions` VALUES (16, 2, 'Question 16', 'I worry about how climate change may affect the people I care about');
INSERT INTO `questions` VALUES (17, 3, 'Question 17', 'Feeling nervous, anxious or on edge');
INSERT INTO `questions` VALUES (18, 3, 'Question 18', 'Not being able to stop or control worrying');
INSERT INTO `questions` VALUES (19, 3, 'Question 19', 'Worrying too much');
INSERT INTO `questions` VALUES (20, 3, 'Question 20', 'Feeling afraid');
INSERT INTO `questions` VALUES (21, 3, 'Question 21', 'Unable to stop thinking about future climate change and other global environmental problems');
INSERT INTO `questions` VALUES (22, 3, 'Question 22', 'Unable to stop thinking about past events related to climate change');
INSERT INTO `questions` VALUES (23, 3, 'Question 23', 'Unable to stop thinking about losses to the environment');
INSERT INTO `questions` VALUES (24, 3, 'Question 24', 'Difficulty sleeping');
INSERT INTO `questions` VALUES (25, 3, 'Question 25', 'Difficulty enjoying social situations with family and friends');
INSERT INTO `questions` VALUES (26, 3, 'Question 26', 'Difficulty working and/or studying');
INSERT INTO `questions` VALUES (27, 3, 'Question 27', 'Feeling anxious about the impact of your personal behaviours on the earth');
INSERT INTO `questions` VALUES (28, 3, 'Question 28', 'Feeling anxious about your personal responsibility to help address environmental problems');
INSERT INTO `questions` VALUES (29, 3, 'Question 29', 'Feeling anxious that your personal behaviours will do little to help fix the problem');
INSERT INTO `questions` VALUES (30, 4, 'Question 30', 'I feel tense or ‘wound up’');
INSERT INTO `questions` VALUES (31, 4, 'Question 31', 'I feel as if I am slowed down');
INSERT INTO `questions` VALUES (32, 4, 'Question 32', 'I still enjoy the things I used to enjoy');
INSERT INTO `questions` VALUES (33, 4, 'Question 33', 'I get a sort of frightened feeling like ‘butterflies’ in the stomach');
INSERT INTO `questions` VALUES (34, 4, 'Question 34', 'I get a sort of frightened felling as if something awful is about to happen');
INSERT INTO `questions` VALUES (35, 4, 'Question 35', 'I have lost interest in my appearance');
INSERT INTO `questions` VALUES (36, 4, 'Question 36', 'I can laugh and see the funny side of things');
INSERT INTO `questions` VALUES (37, 4, 'Question 37', 'I feel restless as I have to be on the move');
INSERT INTO `questions` VALUES (38, 4, 'Question 38', 'Worrying thoughts go through my mind');
INSERT INTO `questions` VALUES (39, 4, 'Question 39', 'I look forward with enjoyment to things');
INSERT INTO `questions` VALUES (40, 4, 'Question 40', 'I feel cheerful');
INSERT INTO `questions` VALUES (41, 4, 'Question 41', 'I get sudden feelings of panic');
INSERT INTO `questions` VALUES (42, 4, 'Question 42', 'I can sit at ease and feel relaxed');
INSERT INTO `questions` VALUES (43, 4, 'Question 43', 'I can enjoy a good book or radio or TV program');
INSERT INTO `questions` VALUES (44, 5, 'Wisdom', '');
INSERT INTO `questions` VALUES (45, 5, 'Courage', '');
INSERT INTO `questions` VALUES (46, 5, 'Humanity', '');
INSERT INTO `questions` VALUES (47, 5, 'Temperance', '');
INSERT INTO `questions` VALUES (48, 5, 'Justice', '');
INSERT INTO `questions` VALUES (49, 5, 'Transcendence', '');
INSERT INTO `questions` VALUES (50, 6, '', 'Please look at the following circles. How connected do you feel to nature?');
INSERT INTO `questions` VALUES (51, 1, 'asdas', 'dasdas');
INSERT INTO `questions` VALUES (52, 1, 'uuuu', 'uuuuu');

-- ----------------------------
-- Table structure for questions_answers
-- ----------------------------
DROP TABLE IF EXISTS `questions_answers`;
CREATE TABLE `questions_answers`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `questions_answers_to_questions_by_id`(`question_id`) USING BTREE,
  CONSTRAINT `questions_answers_to_questions_by_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 230 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questions_answers
-- ----------------------------
INSERT INTO `questions_answers` VALUES (1, 1, 'Strongly Disagree', 1, NULL);
INSERT INTO `questions_answers` VALUES (2, 1, 'Disagree', 2, NULL);
INSERT INTO `questions_answers` VALUES (3, 1, 'Neutral', 3, NULL);
INSERT INTO `questions_answers` VALUES (4, 1, 'Agree', 4, NULL);
INSERT INTO `questions_answers` VALUES (5, 1, 'Strongly Agree', 5, NULL);
INSERT INTO `questions_answers` VALUES (6, 2, 'Strongly Disagree', 5, NULL);
INSERT INTO `questions_answers` VALUES (7, 2, 'Disagree', 4, NULL);
INSERT INTO `questions_answers` VALUES (8, 2, 'Neutral', 3, NULL);
INSERT INTO `questions_answers` VALUES (9, 2, 'Agree', 2, NULL);
INSERT INTO `questions_answers` VALUES (10, 2, 'Strongly Agree', 1, NULL);
INSERT INTO `questions_answers` VALUES (11, 3, 'Strongly Disagree', 1, NULL);
INSERT INTO `questions_answers` VALUES (12, 3, 'Disagree', 2, NULL);
INSERT INTO `questions_answers` VALUES (13, 3, 'Neutral', 3, NULL);
INSERT INTO `questions_answers` VALUES (14, 3, 'Agree', 4, NULL);
INSERT INTO `questions_answers` VALUES (15, 3, 'Strongly Agree', 5, NULL);
INSERT INTO `questions_answers` VALUES (16, 4, 'Strongly Disagree', 5, NULL);
INSERT INTO `questions_answers` VALUES (17, 4, 'Disagree', 4, NULL);
INSERT INTO `questions_answers` VALUES (18, 4, 'Neutral', 3, NULL);
INSERT INTO `questions_answers` VALUES (19, 4, 'Agree', 2, NULL);
INSERT INTO `questions_answers` VALUES (20, 4, 'Strongly Agree', 1, NULL);
INSERT INTO `questions_answers` VALUES (21, 5, 'Strongly Disagree', 1, NULL);
INSERT INTO `questions_answers` VALUES (22, 5, 'Disagree', 2, NULL);
INSERT INTO `questions_answers` VALUES (23, 5, 'Neutral', 3, NULL);
INSERT INTO `questions_answers` VALUES (24, 5, 'Agree', 4, NULL);
INSERT INTO `questions_answers` VALUES (25, 5, 'Strongly Agree', 5, NULL);
INSERT INTO `questions_answers` VALUES (26, 6, 'Strongly Disagree', 5, NULL);
INSERT INTO `questions_answers` VALUES (27, 6, 'Disagree', 4, NULL);
INSERT INTO `questions_answers` VALUES (28, 6, 'Neutral', 3, NULL);
INSERT INTO `questions_answers` VALUES (29, 6, 'Agree', 2, NULL);
INSERT INTO `questions_answers` VALUES (30, 6, 'Strongly Agree', 1, NULL);
INSERT INTO `questions_answers` VALUES (31, 7, 'Never', 1, NULL);
INSERT INTO `questions_answers` VALUES (32, 7, 'Rarely', 2, NULL);
INSERT INTO `questions_answers` VALUES (33, 7, 'Sometimes', 3, NULL);
INSERT INTO `questions_answers` VALUES (34, 7, 'Often', 4, NULL);
INSERT INTO `questions_answers` VALUES (35, 7, 'Always', 5, NULL);
INSERT INTO `questions_answers` VALUES (36, 8, 'Never', 1, NULL);
INSERT INTO `questions_answers` VALUES (37, 8, 'Rarely', 2, NULL);
INSERT INTO `questions_answers` VALUES (38, 8, 'Sometimes', 3, NULL);
INSERT INTO `questions_answers` VALUES (39, 8, 'Often', 4, NULL);
INSERT INTO `questions_answers` VALUES (40, 8, 'Always', 5, NULL);
INSERT INTO `questions_answers` VALUES (41, 9, 'Never', 1, NULL);
INSERT INTO `questions_answers` VALUES (42, 9, 'Rarely', 2, NULL);
INSERT INTO `questions_answers` VALUES (43, 9, 'Sometimes', 3, NULL);
INSERT INTO `questions_answers` VALUES (44, 9, 'Often', 4, NULL);
INSERT INTO `questions_answers` VALUES (45, 9, 'Always', 5, NULL);
INSERT INTO `questions_answers` VALUES (46, 10, 'Never', 1, NULL);
INSERT INTO `questions_answers` VALUES (47, 10, 'Rarely', 2, NULL);
INSERT INTO `questions_answers` VALUES (48, 10, 'Sometimes', 3, NULL);
INSERT INTO `questions_answers` VALUES (49, 10, 'Often', 4, NULL);
INSERT INTO `questions_answers` VALUES (50, 10, 'Always', 5, NULL);
INSERT INTO `questions_answers` VALUES (51, 11, 'Never', 1, NULL);
INSERT INTO `questions_answers` VALUES (52, 11, 'Rarely', 2, NULL);
INSERT INTO `questions_answers` VALUES (53, 11, 'Sometimes', 3, NULL);
INSERT INTO `questions_answers` VALUES (54, 11, 'Often', 4, NULL);
INSERT INTO `questions_answers` VALUES (55, 11, 'Always', 5, NULL);
INSERT INTO `questions_answers` VALUES (56, 12, 'Never', 1, NULL);
INSERT INTO `questions_answers` VALUES (57, 12, 'Rarely', 2, NULL);
INSERT INTO `questions_answers` VALUES (58, 12, 'Sometimes', 3, NULL);
INSERT INTO `questions_answers` VALUES (59, 12, 'Often', 4, NULL);
INSERT INTO `questions_answers` VALUES (60, 12, 'Always', 5, NULL);
INSERT INTO `questions_answers` VALUES (61, 13, 'Never', 1, NULL);
INSERT INTO `questions_answers` VALUES (62, 13, 'Rarely', 2, NULL);
INSERT INTO `questions_answers` VALUES (63, 13, 'Sometimes', 3, NULL);
INSERT INTO `questions_answers` VALUES (64, 13, 'Often', 4, NULL);
INSERT INTO `questions_answers` VALUES (65, 13, 'Always', 5, NULL);
INSERT INTO `questions_answers` VALUES (66, 14, 'Never', 1, NULL);
INSERT INTO `questions_answers` VALUES (67, 14, 'Rarely', 2, NULL);
INSERT INTO `questions_answers` VALUES (68, 14, 'Sometimes', 3, NULL);
INSERT INTO `questions_answers` VALUES (69, 14, 'Often', 4, NULL);
INSERT INTO `questions_answers` VALUES (70, 14, 'Always', 5, NULL);
INSERT INTO `questions_answers` VALUES (71, 15, 'Never', 1, NULL);
INSERT INTO `questions_answers` VALUES (72, 15, 'Rarely', 2, NULL);
INSERT INTO `questions_answers` VALUES (73, 15, 'Sometimes', 3, NULL);
INSERT INTO `questions_answers` VALUES (74, 15, 'Often', 4, NULL);
INSERT INTO `questions_answers` VALUES (75, 15, 'Always', 5, NULL);
INSERT INTO `questions_answers` VALUES (76, 16, 'Never', 1, NULL);
INSERT INTO `questions_answers` VALUES (77, 16, 'Rarely', 2, NULL);
INSERT INTO `questions_answers` VALUES (78, 16, 'Sometimes', 3, NULL);
INSERT INTO `questions_answers` VALUES (79, 16, 'Often', 4, NULL);
INSERT INTO `questions_answers` VALUES (80, 16, 'Always', 5, NULL);
INSERT INTO `questions_answers` VALUES (81, 17, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (82, 17, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (83, 17, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (84, 17, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (85, 18, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (86, 18, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (87, 18, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (88, 18, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (89, 19, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (90, 19, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (91, 19, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (92, 19, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (93, 20, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (94, 20, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (95, 20, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (96, 20, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (97, 21, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (98, 21, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (99, 21, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (100, 21, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (101, 22, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (102, 22, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (103, 22, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (104, 22, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (105, 23, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (106, 23, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (107, 23, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (108, 23, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (109, 24, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (110, 24, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (111, 24, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (112, 24, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (113, 25, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (114, 25, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (115, 25, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (116, 25, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (117, 26, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (118, 26, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (119, 26, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (120, 26, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (121, 27, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (122, 27, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (123, 27, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (124, 27, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (125, 28, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (126, 28, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (127, 28, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (128, 28, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (129, 29, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (130, 29, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (131, 29, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (132, 29, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (133, 30, 'Most of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (134, 30, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (135, 30, 'From time to time, occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (136, 30, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (137, 31, 'Nearly all the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (138, 31, 'Very often', 2, NULL);
INSERT INTO `questions_answers` VALUES (139, 31, 'Sometimes', 1, NULL);
INSERT INTO `questions_answers` VALUES (140, 31, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (141, 32, 'Definitely as much', 0, NULL);
INSERT INTO `questions_answers` VALUES (142, 32, 'Not quite so much', 1, NULL);
INSERT INTO `questions_answers` VALUES (143, 32, 'Only a little', 2, NULL);
INSERT INTO `questions_answers` VALUES (144, 32, 'Hardly at all', 3, NULL);
INSERT INTO `questions_answers` VALUES (145, 33, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (146, 33, 'Occasionally', 1, NULL);
INSERT INTO `questions_answers` VALUES (147, 33, 'Quite often', 2, NULL);
INSERT INTO `questions_answers` VALUES (148, 33, 'Very often', 3, NULL);
INSERT INTO `questions_answers` VALUES (149, 34, 'Very definitely and quite badly', 3, NULL);
INSERT INTO `questions_answers` VALUES (150, 34, 'Yes, but not too badly', 2, NULL);
INSERT INTO `questions_answers` VALUES (151, 34, 'A little, but it doesn’t worry me', 1, NULL);
INSERT INTO `questions_answers` VALUES (152, 34, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (153, 35, 'Definitely', 3, NULL);
INSERT INTO `questions_answers` VALUES (154, 35, 'I don’t take as much care as I should', 2, NULL);
INSERT INTO `questions_answers` VALUES (155, 35, 'I may not take quite as much care', 1, NULL);
INSERT INTO `questions_answers` VALUES (156, 35, 'I take just as much care as ever', 0, NULL);
INSERT INTO `questions_answers` VALUES (157, 36, 'As much as I always could', 0, NULL);
INSERT INTO `questions_answers` VALUES (158, 36, 'Not quite so much now', 1, NULL);
INSERT INTO `questions_answers` VALUES (159, 36, 'Definitely not so much now', 2, NULL);
INSERT INTO `questions_answers` VALUES (160, 36, 'Not at all', 3, NULL);
INSERT INTO `questions_answers` VALUES (161, 37, 'Very much indeed', 3, NULL);
INSERT INTO `questions_answers` VALUES (162, 37, 'Quite a lot ', 2, NULL);
INSERT INTO `questions_answers` VALUES (163, 37, 'Not very much ', 1, NULL);
INSERT INTO `questions_answers` VALUES (164, 37, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (165, 38, 'A great deal of the time', 3, NULL);
INSERT INTO `questions_answers` VALUES (166, 38, 'A lot of the time', 2, NULL);
INSERT INTO `questions_answers` VALUES (167, 38, 'From time to time, but not too often', 1, NULL);
INSERT INTO `questions_answers` VALUES (168, 38, 'Only occasionally', 0, NULL);
INSERT INTO `questions_answers` VALUES (169, 39, 'As much as I ever did', 0, NULL);
INSERT INTO `questions_answers` VALUES (170, 39, 'Rather less than I used to', 1, NULL);
INSERT INTO `questions_answers` VALUES (171, 39, 'Definitely less than I used to', 2, NULL);
INSERT INTO `questions_answers` VALUES (172, 39, 'Hardly at all', 3, NULL);
INSERT INTO `questions_answers` VALUES (173, 40, 'Not at all', 3, NULL);
INSERT INTO `questions_answers` VALUES (174, 40, 'Not often', 2, NULL);
INSERT INTO `questions_answers` VALUES (175, 40, 'Sometimes', 1, NULL);
INSERT INTO `questions_answers` VALUES (176, 40, 'Most of the time', 0, NULL);
INSERT INTO `questions_answers` VALUES (177, 41, 'Very often indeed', 3, NULL);
INSERT INTO `questions_answers` VALUES (178, 41, 'Quite often', 2, NULL);
INSERT INTO `questions_answers` VALUES (179, 41, 'Not very often', 1, NULL);
INSERT INTO `questions_answers` VALUES (180, 41, 'Not at all', 0, NULL);
INSERT INTO `questions_answers` VALUES (181, 42, 'Definitely', 0, NULL);
INSERT INTO `questions_answers` VALUES (182, 42, 'Usually', 1, NULL);
INSERT INTO `questions_answers` VALUES (183, 42, 'Not often', 2, NULL);
INSERT INTO `questions_answers` VALUES (184, 42, 'Not at all', 3, NULL);
INSERT INTO `questions_answers` VALUES (185, 43, 'Often', 0, NULL);
INSERT INTO `questions_answers` VALUES (186, 43, 'Sometimes', 1, NULL);
INSERT INTO `questions_answers` VALUES (187, 43, 'Not often', 2, NULL);
INSERT INTO `questions_answers` VALUES (188, 43, 'Very seldom', 3, NULL);
INSERT INTO `questions_answers` VALUES (189, 44, '', 1, NULL);
INSERT INTO `questions_answers` VALUES (190, 44, '', 2, NULL);
INSERT INTO `questions_answers` VALUES (191, 44, '', 3, NULL);
INSERT INTO `questions_answers` VALUES (192, 44, '', 4, NULL);
INSERT INTO `questions_answers` VALUES (193, 44, '', 5, NULL);
INSERT INTO `questions_answers` VALUES (194, 44, '', 6, NULL);
INSERT INTO `questions_answers` VALUES (195, 45, '', 1, NULL);
INSERT INTO `questions_answers` VALUES (196, 45, '', 2, NULL);
INSERT INTO `questions_answers` VALUES (197, 45, '', 3, NULL);
INSERT INTO `questions_answers` VALUES (198, 45, '', 4, NULL);
INSERT INTO `questions_answers` VALUES (199, 45, '', 5, NULL);
INSERT INTO `questions_answers` VALUES (200, 45, '', 6, NULL);
INSERT INTO `questions_answers` VALUES (201, 46, '', 1, NULL);
INSERT INTO `questions_answers` VALUES (202, 46, '', 2, NULL);
INSERT INTO `questions_answers` VALUES (203, 46, '', 3, NULL);
INSERT INTO `questions_answers` VALUES (204, 46, '', 4, NULL);
INSERT INTO `questions_answers` VALUES (205, 46, '', 5, NULL);
INSERT INTO `questions_answers` VALUES (206, 46, '', 6, NULL);
INSERT INTO `questions_answers` VALUES (207, 47, '', 1, NULL);
INSERT INTO `questions_answers` VALUES (208, 47, '', 2, NULL);
INSERT INTO `questions_answers` VALUES (209, 47, '', 3, NULL);
INSERT INTO `questions_answers` VALUES (210, 47, '', 4, NULL);
INSERT INTO `questions_answers` VALUES (211, 47, '', 5, NULL);
INSERT INTO `questions_answers` VALUES (212, 47, '', 6, NULL);
INSERT INTO `questions_answers` VALUES (213, 48, '', 1, NULL);
INSERT INTO `questions_answers` VALUES (214, 48, '', 2, NULL);
INSERT INTO `questions_answers` VALUES (215, 48, '', 3, NULL);
INSERT INTO `questions_answers` VALUES (216, 48, '', 4, NULL);
INSERT INTO `questions_answers` VALUES (217, 48, '', 5, NULL);
INSERT INTO `questions_answers` VALUES (218, 48, '', 6, NULL);
INSERT INTO `questions_answers` VALUES (219, 49, '', 1, NULL);
INSERT INTO `questions_answers` VALUES (220, 49, '', 2, NULL);
INSERT INTO `questions_answers` VALUES (221, 49, '', 3, NULL);
INSERT INTO `questions_answers` VALUES (222, 49, '', 4, NULL);
INSERT INTO `questions_answers` VALUES (223, 49, '', 5, NULL);
INSERT INTO `questions_answers` VALUES (224, 49, '', 6, NULL);
INSERT INTO `questions_answers` VALUES (225, 50, 'A', 1, 'src/questions_answers/id_225.png');
INSERT INTO `questions_answers` VALUES (226, 50, 'B', 2, 'src/questions_answers/id_226.png');
INSERT INTO `questions_answers` VALUES (227, 50, 'C', 3, 'src/questions_answers/id_227.png');
INSERT INTO `questions_answers` VALUES (228, 50, 'D', 4, 'src/questions_answers/id_228.png');
INSERT INTO `questions_answers` VALUES (229, 50, 'E', 5, 'src/questions_answers/id_229.png');

-- ----------------------------
-- Table structure for questions_types
-- ----------------------------
DROP TABLE IF EXISTS `questions_types`;
CREATE TABLE `questions_types`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `color_hex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questions_types
-- ----------------------------
INSERT INTO `questions_types` VALUES (1, 'Step 1 - Get to know each oher', 'Let’s get to know you better. \nPlease answer the following \nquestions', NULL, '#78a0c4');
INSERT INTO `questions_types` VALUES (2, 'Step 2 - Statements', 'Read each statement below and indicate how frequently each statement applies to you', NULL, '#91b381');
INSERT INTO `questions_types` VALUES (3, 'Step 3 - Feeling', 'Over the last two weeks, how often have you been bothered by the following problems when thinking about climate change and other global environmental conditions ?', NULL, '#d4a675');
INSERT INTO `questions_types` VALUES (4, 'Step 4 - Mood', 'Choose the option that most clearly matches how you have been feeling in \nthe past week', NULL, '#78a0c4');
INSERT INTO `questions_types` VALUES (5, 'Step 5 - Strengths and Nature', 'lorem ipsum', 'Here are six strengths that people display. Choose which of the strengths apply to you, by placing a number in each box, from 1 to 6.', '#91b381');
INSERT INTO `questions_types` VALUES (6, 'Step 6', '', '', '#91b381');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `_token` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `role` enum('user','admin') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user',
  `country_id` int(10) UNSIGNED NULL DEFAULT 0,
  `gender_id` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `phone_code_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_active_timestamp` int(10) UNSIGNED NULL DEFAULT NULL,
  `notification_flag` tinyint(3) UNSIGNED NULL DEFAULT 1,
  `forgot_password_token` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 1, 'test11', 'admin@admin.com', 'adminL', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ed6edb7e62cb1eed434c3f0b544e49f7c875b6efd86976177ca545b71e9eeb1f', 'admin', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (66, 1, 'hhhhhhhhhhhhhhhhh', 'test@test.com', 'dfgfdg', '$2b$04$acfll5gigrbc/XhaRB6o4.AHB52Jr379il0h6q314tCaA6/JqVSku', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjYsImVtYWlsIjoidGVzdEB0ZXN0LmNvbTEiLCJmaXJzdE5hbWUiOiJoaGhoaGhoaGhoaGhoaGhoaCIsImlhdCI6MTY5Mjg4MTc1MywiZXhwIjoxNjk0MTc3NzUzfQ.h4TzutzbqLEgPfvbeVpgCMz8QZztV8zv-QzUlUjPCeY', 'user', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (67, 1, 'Name', 'test@te11st.com', 'Last name ', '$2b$04$IjNVglbyE6hBQqaQD.CdgOkPtqhSGX2qvyxKFI1/JMoGwrlFEzJVO', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjcsImVtYWlsIjoidGVzdEB0ZTExc3QuY29tIiwiZmlyc3ROYW1lIjoiTmFtZSIsImlhdCI6MTY5MTczOTg0MywiZXhwIjoxNjk0MzMxODQzfQ.dKubRy5Iv0bm31276DSnOvIYOoenxcmz4dhDSNSV98E', 'user', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (68, 1, 'Name', 'test@te1hh1st.com', 'Last name ', '$2b$04$wtYBJYzBEOGVnj325yaH8Ojbu7oED28tigf3ikD4vncYeS5PnSFIe', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjgsImVtYWlsIjoidGVzdEB0ZTFoaDFzdC5jb20iLCJmaXJzdE5hbWUiOiJOYW1lIiwiaWF0IjoxNjkyMTg1Mzc0LCJleHAiOjE2OTQ3NzczNzR9.ya50jsAD_AKbqMz28WGF0D74K6l1yCydvoa5H-IMiag', 'user', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (69, 1, 'Name', 'tesgggt@te1hh1st.com', 'Last name ', '$2b$04$glhesiWQoGDB1vfyuyqDmuzWuZdHx/3Lcd3.rX7HlLCXCXste5uwa', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjksImVtYWlsIjoidGVzZ2dndEB0ZTFoaDFzdC5jb20iLCJmaXJzdE5hbWUiOiJOYW1lIiwiaWF0IjoxNjkyMTkwNzQyLCJleHAiOjE2OTQ3ODI3NDJ9.Qyyd1P25PWBHB6JlG9NsoCRBPFMVmRuYa06gqdDlkY4', 'user', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (70, 1, 'user', 'user@gmail.com', 'user', '$2b$04$umsQhBp0g7kcmS8kr//dWOdqnmXExBP0mBxvuQ9N1a3D30BcVeRpG', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzAsImVtYWlsIjoidXNlckBnbWFpbC5jb20iLCJmaXJzdE5hbWUiOiJ1c2VyIiwiaWF0IjoxNjkyNzAyNjkwLCJleHAiOjE2OTUyOTQ2OTB9.2rkOlhnEv1jocxb6Rbpx-8CGGD8AWBUKVzE6Vinr9mU', 'user', 5, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (71, 1, 'user', 'freelancetoptalent@gmail.com', '+37488552299', '$2b$04$97G6scvu6MnGUBrG6rUC3.XQuNMR79xp/pkgVyXLsMi/4LgWfUG1.', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzEsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwiZmlyc3ROYW1lIjoidXNlciIsImlhdCI6MTY5MjE5MTI0MCwiZXhwIjoxNjk0NzgzMjQwfQ.rl9ya6E-UPiwcVkyWv_57xCAVy6MsWXxw2K5NI3Aijg', 'user', 5, 1, NULL, NULL, '/uploads/users/profile/f7085064a870394c6f3374ac42a710976076723d.png', NULL, 1, 'bbaf34495e8c74c5106cfc4de529f656dbff797b7c0e4d5cef9385e9820eeb8632c92f500bbfe2e7');
INSERT INTO `users` VALUES (72, 1, 'user', 'user2@gmail.com', 'user', '$2b$04$nJEn67D8MrwcMpP5AolOz.PzC20Ihq6Q3DwFh71.1HlBcEZJwaH5G', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzIsImVtYWlsIjoidXNlcjJAZ21haWwuY29tIiwiZmlyc3ROYW1lIjoidXNlciIsImlhdCI6MTY5MjE5NDY3NSwiZXhwIjoxNjk0Nzg2Njc1fQ.vtWJUkWbZSv5SBfijoTqFmxTyP0odoGsbGMEI-V-Byk', 'user', 6, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (73, 1, 'sdsdsd', 'test@tsssest.com', '654654888', '$2b$04$xPBdLvkvN1elUOrWb.NR8uoBRumhzux2q9J72sIA5LjLYr5jksEI2', NULL, 'user', 1, 1, 2, 'sdfdsf', '', NULL, 1, NULL);
INSERT INTO `users` VALUES (74, 1, 'sdsdsd', 'test@tsssiiiest.com', '654654888', '$2b$04$A54y4H2z1gbRYkc9ew/WLeoxXjlUokHy1.1M7IUbsr7Km8di/h2ue', NULL, 'user', 1, 1, 2, 'sdfdsf', '', NULL, 1, NULL);
INSERT INTO `users` VALUES (75, 1, 'sdsdsd', 'test@tssiiiisiiiest.com', '654654888', '$2b$04$o5YZpd1G5PzKOGwgpc9Ib.MihOxMIhHedh6bG1mNp/OwqJg93M3wK', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAdHNzaWlpaXNpaWllc3QuY29tIiwibmFtZSI6InNkc2RzZCIsImlhdCI6MTY5MzU1NzA1MSwiZXhwIjoxNjk2MTQ5MDUxfQ.DeemCk2r3SQN-phF-hU2ljvGeDHj1QUoVJOsl-Mdmkk', 'user', 1, 1, 2, 'sdfdsf', '', NULL, 1, NULL);
INSERT INTO `users` VALUES (76, 1, 'sdsdsd', 'test@uuuuuuuuu.com', '654654888', '$2b$04$MFWp7J3rmJkHgP1qzBiO0uU4vVVdEdHLr0BAibWxPNxFSGrbCt85m', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAdXV1dXV1dXV1LmNvbSIsIm5hbWUiOiJzZHNkc2QiLCJpYXQiOjE2OTM1NTcwNjgsImV4cCI6MTY5NjE0OTA2OH0.cbtPM1a2LAsl8QljmIws9J2rbjK4ttvXsVgrzGUu_O8', 'user', 1, 1, 2, 'sdfdsf', '', NULL, 1, NULL);
INSERT INTO `users` VALUES (77, 1, 'sdsdsd', 'test@uuuuuuuuu.comdd', '654654888', '$2b$04$SkpEJgatPw/ZtI3EpTxz/O8dRGNAZRLWhKaDSFFIT6914ZonWud5K', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAdXV1dXV1dXV1LmNvbWRkIiwibmFtZSI6InNkc2RzZCIsImlhdCI6MTY5MzU2MDM0MywiZXhwIjoxNjk2MTUyMzQzfQ.wfltQgY-tdH_BWnittx6W0q7Vr6MC4vj-0QWEbcOIko', 'user', 1, 1, 2, 'sdfdsf', '', NULL, 1, NULL);
INSERT INTO `users` VALUES (78, 1, 'sdsdsd', 'test@uuuuujjuuuu.comdd', '654654888', '$2b$04$mz4pikF1xQ0zFHIgMXFbGuDE2oxkw1pBB8xAjWwXwNEEmK1NHw2lK', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAdXV1dXVqanV1dXUuY29tZGQiLCJuYW1lIjoic2RzZHNkIiwiaWF0IjoxNjkzNTYwMzcwLCJleHAiOjE2OTYxNTIzNzB9.O6fLcdzFug1LWW3TEdazl1n9DLlKMdVmzQNl3WMm47U', 'user', 1, 1, 2, 'sdfdsf', NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (79, 1, 'sdsdsd', 'test@uuuujjujjuuuu.comdd', '654654888', '$2b$04$UwmuCh6vnWFQDLT31/ZKV.eiclVLBeu9PN9REf/Lo43uucPJB9sjW', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAdXV1dWpqdWpqdXV1dS5jb21kZCIsIm5hbWUiOiJzZHNkc2QiLCJpYXQiOjE2OTM1NjA0NDksImV4cCI6MTY5NjE1MjQ0OX0.f9u0PhdrAfZERSpDMr20o0VedC53SF1b34W2lg9uMTE', 'user', 1, 1, 2, 'sdfdsf', NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (80, 1, 'sdsdsd', 'test@uuudddujjujjuuuu.comdd', '654654888', '$2b$04$q/Jg/XY2j9QgSdi.M6jBYuxYgKHi0b89hZGVLxbAICQVYthe8X9/u', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODAsImVtYWlsIjoidGVzdEB1dXVkZGR1amp1amp1dXV1LmNvbWRkIiwibmFtZSI6InNkc2RzZCIsImltZyI6InB1YmxpYy91cGxvYWRzL3VzZXJzL3Byb2ZpbGUvY2RkMzBhOGU0NjVmZTM1ZGE1YjIxZThhY2M4MTQxZjk5MmVhNGVmMS5wbmciLCJpYXQiOjE2OTM1NjE2ODksImV4cCI6MTY5NjE1MzY4OX0.5HxRfQLQOmpGzOE-WPGBIm7N1kWtsjz2Ig81r6w3NCk', 'user', 1, 1, 2, 'sdfdsf', 'public/uploads/users/profile/cdd30a8e465fe35da5b21e8acc8141f992ea4ef1.png', NULL, 1, NULL);
INSERT INTO `users` VALUES (81, 1, 'sdsdsd', 'test@uggguudddujjujjuuuu.comdd', '654654888', '$2b$04$LKCf0LbwCC6DitQMpcvYWOz9KjEYNB/cuUxEk3/7fgc6AGRjT0VoO', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODEsImVtYWlsIjoidGVzdEB1Z2dndXVkZGR1amp1amp1dXV1LmNvbWRkIiwibmFtZSI6InNkc2RzZCIsImltZyI6InB1YmxpYy91cGxvYWRzL3VzZXJzL3Byb2ZpbGUvMDkyNzllNjczMmVjYmNlNmU2NWNlMTFmNjRjZDkxMWVlZGNhMzY3Yy5wbmciLCJpYXQiOjE2OTM1NjI4MTksImV4cCI6MTY5NjE1NDgxOX0.fPGJZ7HeBs0-K920b_z2SaTba3M1lWnFlYQnfPNM6Sg', 'user', 1, 1, 2, 'sdfdsf', 'public/uploads/users/profile/09279e6732ecbce6e65ce11f64cd911eedca367c.png', NULL, 1, NULL);
INSERT INTO `users` VALUES (82, 1, 'sdsdsd', 'test@ugggugggudddujjujjuuuu.comdd', '654654888', '$2b$04$aVd/Z3d8BuIFyyzHrwX8lu5xsGv.3aPKPUjs4vAQnX6TG0NvkizH.', NULL, 'user', 1, 1, 2, 'sdfdsf', 'public/uploads/users/profile/8f8874db3f7c8f2051bde66a3a5fa7343c242a63.png', NULL, 1, NULL);
INSERT INTO `users` VALUES (83, 1, 'name surname', 'test@uggguggg44juuuu.comdd', '+37498660697', '$2b$04$gksiBpLucKZB8mL2Me9YE.1e5ycx1sxsQNq0fiIu1zivF6ld48Vb.', NULL, 'user', 5, 1, NULL, 'state', 'uploads/users/profile/bbc5c6f0f1936af2f45bb38d4fe68856a85d319a.png', NULL, 1, NULL);
INSERT INTO `users` VALUES (84, 1, 'User', 'user1@gmail.com', '+37493516118', '$2b$04$hJ97g3n/em2HYcIQdeR8NO4hwTi08OlnKT1xH91fsWkhK/ydjVLJa', NULL, 'user', 11, 0, NULL, 'State', NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (85, 1, 'user2', 'user3@gmail.com', '+112345678', '$2b$04$9GiP0jlbM6JheXtA3iOV6Oa.gh7NVuG2mE/HYguQggM0ipTW4JTDi', NULL, 'user', 30, 1, NULL, 'State', NULL, NULL, 1, NULL);
INSERT INTO `users` VALUES (86, 1, 'name surname', 'test@uggguggg44juu88uu.comdd', '+37498660697', '$2b$04$jgIGR4ALIKcnhNoOdRrSl./dXl7ms3Iaa1.8ao60vxExM7DgqbuqO', NULL, 'user', 5, 1, NULL, 'state', 'uploads/users/profile/f7085064a870394c6f3374ac42a710976076723d.png', NULL, 1, NULL);
INSERT INTO `users` VALUES (87, 1, 'adas', 't4463668@gmail.com', '+11516513', '$2b$04$K2JuGQ8GaBemoeDkpdH4t.C5XZb/lXp95Zon1qU0TDIWTDJe8y57m', NULL, 'user', 11, 0, NULL, 'asdasd', NULL, NULL, 1, NULL);

-- ----------------------------
-- Table structure for users_answers
-- ----------------------------
DROP TABLE IF EXISTS `users_answers`;
CREATE TABLE `users_answers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `answer_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users_answers_to_questions_answers_by_id`(`answer_id`) USING BTREE,
  INDEX `users_answers_user_id_to_users_by_id`(`user_id`) USING BTREE,
  CONSTRAINT `users_answers_to_questions_answers_by_id` FOREIGN KEY (`answer_id`) REFERENCES `questions_answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_answers_user_id_to_users_by_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 188 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_answers
-- ----------------------------
INSERT INTO `users_answers` VALUES (57, 71, 3);
INSERT INTO `users_answers` VALUES (58, 71, 8);
INSERT INTO `users_answers` VALUES (59, 71, 14);
INSERT INTO `users_answers` VALUES (60, 71, 20);
INSERT INTO `users_answers` VALUES (61, 71, 21);
INSERT INTO `users_answers` VALUES (62, 71, 27);
INSERT INTO `users_answers` VALUES (63, 71, 33);
INSERT INTO `users_answers` VALUES (64, 71, 36);
INSERT INTO `users_answers` VALUES (65, 71, 42);
INSERT INTO `users_answers` VALUES (66, 71, 50);
INSERT INTO `users_answers` VALUES (67, 71, 54);
INSERT INTO `users_answers` VALUES (68, 71, 58);
INSERT INTO `users_answers` VALUES (69, 71, 62);
INSERT INTO `users_answers` VALUES (70, 71, 69);
INSERT INTO `users_answers` VALUES (71, 71, 71);
INSERT INTO `users_answers` VALUES (72, 71, 78);
INSERT INTO `users_answers` VALUES (73, 71, 83);
INSERT INTO `users_answers` VALUES (74, 71, 85);
INSERT INTO `users_answers` VALUES (75, 71, 90);
INSERT INTO `users_answers` VALUES (76, 71, 93);
INSERT INTO `users_answers` VALUES (77, 71, 99);
INSERT INTO `users_answers` VALUES (78, 71, 102);
INSERT INTO `users_answers` VALUES (79, 71, 108);
INSERT INTO `users_answers` VALUES (80, 71, 111);
INSERT INTO `users_answers` VALUES (81, 71, 115);
INSERT INTO `users_answers` VALUES (82, 71, 118);
INSERT INTO `users_answers` VALUES (83, 71, 122);
INSERT INTO `users_answers` VALUES (84, 71, 128);
INSERT INTO `users_answers` VALUES (85, 71, 131);
INSERT INTO `users_answers` VALUES (86, 71, 134);
INSERT INTO `users_answers` VALUES (87, 71, 137);
INSERT INTO `users_answers` VALUES (88, 71, 144);
INSERT INTO `users_answers` VALUES (89, 71, 146);
INSERT INTO `users_answers` VALUES (90, 71, 152);
INSERT INTO `users_answers` VALUES (91, 71, 155);
INSERT INTO `users_answers` VALUES (92, 71, 157);
INSERT INTO `users_answers` VALUES (93, 71, 162);
INSERT INTO `users_answers` VALUES (94, 71, 166);
INSERT INTO `users_answers` VALUES (95, 71, 171);
INSERT INTO `users_answers` VALUES (96, 71, 177);
INSERT INTO `users_answers` VALUES (97, 71, 183);
INSERT INTO `users_answers` VALUES (98, 71, 175);
INSERT INTO `users_answers` VALUES (99, 71, 186);
INSERT INTO `users_answers` VALUES (100, 71, 193);
INSERT INTO `users_answers` VALUES (101, 71, 197);
INSERT INTO `users_answers` VALUES (102, 71, 203);
INSERT INTO `users_answers` VALUES (103, 71, 212);
INSERT INTO `users_answers` VALUES (104, 71, 216);
INSERT INTO `users_answers` VALUES (105, 71, 223);
INSERT INTO `users_answers` VALUES (106, 71, 226);
INSERT INTO `users_answers` VALUES (107, 81, 3);
INSERT INTO `users_answers` VALUES (108, 81, 3);
INSERT INTO `users_answers` VALUES (109, 87, 1);
INSERT INTO `users_answers` VALUES (110, 87, 7);
INSERT INTO `users_answers` VALUES (111, 87, 13);
INSERT INTO `users_answers` VALUES (112, 87, 2);
INSERT INTO `users_answers` VALUES (113, 87, 9);
INSERT INTO `users_answers` VALUES (114, 87, 13);
INSERT INTO `users_answers` VALUES (115, 87, 20);
INSERT INTO `users_answers` VALUES (116, 87, 24);
INSERT INTO `users_answers` VALUES (117, 87, 27);
INSERT INTO `users_answers` VALUES (118, 87, 57);
INSERT INTO `users_answers` VALUES (119, 87, 63);
INSERT INTO `users_answers` VALUES (120, 87, 67);
INSERT INTO `users_answers` VALUES (121, 87, 71);
INSERT INTO `users_answers` VALUES (122, 87, 78);
INSERT INTO `users_answers` VALUES (123, 87, 118);
INSERT INTO `users_answers` VALUES (124, 87, 123);
INSERT INTO `users_answers` VALUES (125, 87, 128);
INSERT INTO `users_answers` VALUES (126, 87, 130);
INSERT INTO `users_answers` VALUES (127, 87, 182);
INSERT INTO `users_answers` VALUES (128, 87, 185);
INSERT INTO `users_answers` VALUES (129, 87, 1);
INSERT INTO `users_answers` VALUES (130, 87, 7);
INSERT INTO `users_answers` VALUES (131, 87, 13);
INSERT INTO `users_answers` VALUES (132, 87, 17);
INSERT INTO `users_answers` VALUES (133, 87, 21);
INSERT INTO `users_answers` VALUES (134, 87, 30);
INSERT INTO `users_answers` VALUES (135, 87, 59);
INSERT INTO `users_answers` VALUES (136, 87, 63);
INSERT INTO `users_answers` VALUES (137, 87, 67);
INSERT INTO `users_answers` VALUES (138, 87, 71);
INSERT INTO `users_answers` VALUES (139, 87, 78);
INSERT INTO `users_answers` VALUES (140, 87, 120);
INSERT INTO `users_answers` VALUES (141, 87, 123);
INSERT INTO `users_answers` VALUES (142, 87, 126);
INSERT INTO `users_answers` VALUES (143, 87, 129);
INSERT INTO `users_answers` VALUES (144, 87, 184);
INSERT INTO `users_answers` VALUES (145, 87, 187);
INSERT INTO `users_answers` VALUES (146, 87, 187);
INSERT INTO `users_answers` VALUES (147, 87, 187);
INSERT INTO `users_answers` VALUES (148, 87, 188);
INSERT INTO `users_answers` VALUES (149, 87, 4);
INSERT INTO `users_answers` VALUES (150, 87, 9);
INSERT INTO `users_answers` VALUES (151, 87, 14);
INSERT INTO `users_answers` VALUES (152, 87, 17);
INSERT INTO `users_answers` VALUES (153, 87, 22);
INSERT INTO `users_answers` VALUES (154, 87, 26);
INSERT INTO `users_answers` VALUES (155, 87, 3);
INSERT INTO `users_answers` VALUES (156, 87, 7);
INSERT INTO `users_answers` VALUES (157, 87, 11);
INSERT INTO `users_answers` VALUES (158, 87, 19);
INSERT INTO `users_answers` VALUES (159, 87, 23);
INSERT INTO `users_answers` VALUES (160, 87, 27);
INSERT INTO `users_answers` VALUES (161, 87, 58);
INSERT INTO `users_answers` VALUES (162, 87, 62);
INSERT INTO `users_answers` VALUES (163, 87, 66);
INSERT INTO `users_answers` VALUES (164, 87, 74);
INSERT INTO `users_answers` VALUES (165, 87, 80);
INSERT INTO `users_answers` VALUES (166, 87, 2);
INSERT INTO `users_answers` VALUES (167, 87, 8);
INSERT INTO `users_answers` VALUES (168, 87, 14);
INSERT INTO `users_answers` VALUES (169, 87, 16);
INSERT INTO `users_answers` VALUES (170, 87, 25);
INSERT INTO `users_answers` VALUES (171, 87, 29);
INSERT INTO `users_answers` VALUES (172, 87, 59);
INSERT INTO `users_answers` VALUES (173, 87, 63);
INSERT INTO `users_answers` VALUES (174, 87, 68);
INSERT INTO `users_answers` VALUES (175, 87, 75);
INSERT INTO `users_answers` VALUES (176, 87, 79);
INSERT INTO `users_answers` VALUES (177, 87, 120);
INSERT INTO `users_answers` VALUES (178, 87, 123);
INSERT INTO `users_answers` VALUES (179, 87, 126);
INSERT INTO `users_answers` VALUES (180, 87, 129);
INSERT INTO `users_answers` VALUES (181, 87, 183);
INSERT INTO `users_answers` VALUES (182, 87, 186);
INSERT INTO `users_answers` VALUES (183, 87, 185);
INSERT INTO `users_answers` VALUES (184, 87, 185);
INSERT INTO `users_answers` VALUES (185, 87, 4);
INSERT INTO `users_answers` VALUES (186, 87, 7);
INSERT INTO `users_answers` VALUES (187, 87, 3);

-- ----------------------------
-- Table structure for users_follows
-- ----------------------------
DROP TABLE IF EXISTS `users_follows`;
CREATE TABLE `users_follows`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `following_user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users_follows_to_users_by_id`(`user_id`) USING BTREE,
  INDEX `users_follows_to_user_by_id_1`(`following_user_id`) USING BTREE,
  CONSTRAINT `users_follows_to_user_by_id_1` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_follows_to_users_by_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_follows
-- ----------------------------
INSERT INTO `users_follows` VALUES (3, 81, 71);
INSERT INTO `users_follows` VALUES (4, 81, 67);
INSERT INTO `users_follows` VALUES (5, 68, 81);
INSERT INTO `users_follows` VALUES (7, 70, 81);

-- ----------------------------
-- Table structure for users_tokens
-- ----------------------------
DROP TABLE IF EXISTS `users_tokens`;
CREATE TABLE `users_tokens`  (
  `user_id` int(10) UNSIGNED NOT NULL,
  `refresh_token` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `access_token` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  INDEX `users_token_to_users_by_id`(`user_id`) USING BTREE,
  CONSTRAINT `users_token_to_users_by_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_tokens
-- ----------------------------
INSERT INTO `users_tokens` VALUES (82, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODIsImVtYWlsIjoidGVzdEB1Z2dndWdnZ3VkZGR1amp1amp1dXV1LmNvbWRkIiwibmFtZSI6InNkc2RzZCIsImltZyI6InB1YmxpYy91cGxvYWRzL3VzZXJzL3Byb2ZpbGUvOGY4ODc0ZGIzZjdjOGYyMDUxYmRlNjZhM2E1ZmE3MzQzYzI0MmE2My5wbmciLCJpYXQiOjE2OTM1Njg1MDMsImV4cCI6MTY5NjE2MDUwM30.jl7ay-GCjq4iTEZLM4cpa67lx4NuXbx2fpHiz1niyJI', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODIsImVtYWlsIjoidGVzdEB1Z2dndWdnZ3VkZGR1amp1amp1dXV1LmNvbWRkIiwibmFtZSI6InNkc2RzZCIsImltZyI6InB1YmxpYy91cGxvYWRzL3VzZXJzL3Byb2ZpbGUvOGY4ODc0ZGIzZjdjOGYyMDUxYmRlNjZhM2E1ZmE3MzQzYzI0MmE2My5wbmciLCJpYXQiOjE2OTM1Njg1MDMsImV4cCI6MTY5NDg2NDUwM30.Q2Yi1m6qeMKv4oFrKdLBCYwlHRFTAt0Sf2tvzjPp0io');
INSERT INTO `users_tokens` VALUES (83, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODMsImVtYWlsIjoidGVzdEB1Z2dndWdnZzQ0anV1dXUuY29tZGQiLCJuYW1lIjoibmFtZSBzdXJuYW1lIiwiaW1nIjoidXBsb2Fkcy91c2Vycy9wcm9maWxlL2JiYzVjNmYwZjE5MzZhZjJmNDViYjM4ZDRmZTY4ODU2YTg1ZDMxOWEucG5nIiwiaWF0IjoxNjk0MTc2MjUzLCJleHAiOjE2OTY3NjgyNTN9.8mdsYPOxURAxL3y9hI-UhIo2Rqew00SlyaeKsJZ23D0', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODMsImVtYWlsIjoidGVzdEB1Z2dndWdnZzQ0anV1dXUuY29tZGQiLCJuYW1lIjoibmFtZSBzdXJuYW1lIiwiaW1nIjoidXBsb2Fkcy91c2Vycy9wcm9maWxlL2JiYzVjNmYwZjE5MzZhZjJmNDViYjM4ZDRmZTY4ODU2YTg1ZDMxOWEucG5nIiwiaWF0IjoxNjk0MTc2MjUzLCJleHAiOjE2OTU0NzIyNTN9.1jPBlkrlNXUdefbzST8ewyOBaA5HC0hwnKrnGc268rg');
INSERT INTO `users_tokens` VALUES (84, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODQsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwibmFtZSI6IlVzZXIiLCJpbWciOm51bGwsImlhdCI6MTY5NDQxOTM1NiwiZXhwIjoxNjk3MDExMzU2fQ.TWXoTgGvd3tju3hUec5vxJxxjV1DXF38xPrkRU2DLzI', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODQsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwibmFtZSI6IlVzZXIiLCJpbWciOm51bGwsImlhdCI6MTY5NDQxOTM1NiwiZXhwIjoxNjk1NzE1MzU2fQ.gsGsDD2Bt_wKlbjusD3H6R_h3MzeDXpKljJAwYZN9ns');
INSERT INTO `users_tokens` VALUES (85, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODUsImVtYWlsIjoidXNlcjNAZ21haWwuY29tIiwibmFtZSI6InVzZXIyIiwiaW1nIjpudWxsLCJpYXQiOjE2OTQ0MjI4MjksImV4cCI6MTY5NzAxNDgyOX0.OtVm27_oh4oQEs-GVMy9t-gAd8rKmgi6O7pEqEG0rJs', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODUsImVtYWlsIjoidXNlcjNAZ21haWwuY29tIiwibmFtZSI6InVzZXIyIiwiaW1nIjpudWxsLCJpYXQiOjE2OTQ0MjI4MjksImV4cCI6MTY5NTcxODgyOX0.syNiMyk9ZP8JsN12YRejCGSqdQls4TwmGlEF70AX0iA');
INSERT INTO `users_tokens` VALUES (86, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODYsImVtYWlsIjoidGVzdEB1Z2dndWdnZzQ0anV1ODh1dS5jb21kZCIsIm5hbWUiOiJuYW1lIHN1cm5hbWUiLCJpbWciOiJ1cGxvYWRzL3VzZXJzL3Byb2ZpbGUvZjcwODUwNjRhODcwMzk0YzZmMzM3NGFjNDJhNzEwOTc2MDc2NzIzZC5wbmciLCJpYXQiOjE2OTQ0MzU0MTIsImV4cCI6MTY5NzAyNzQxMn0.EnpNo11Y5rAowg8QOTBjZfmYgWv-2YrcrjwfsGFn8X0', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODYsImVtYWlsIjoidGVzdEB1Z2dndWdnZzQ0anV1ODh1dS5jb21kZCIsIm5hbWUiOiJuYW1lIHN1cm5hbWUiLCJpbWciOiJ1cGxvYWRzL3VzZXJzL3Byb2ZpbGUvZjcwODUwNjRhODcwMzk0YzZmMzM3NGFjNDJhNzEwOTc2MDc2NzIzZC5wbmciLCJpYXQiOjE2OTQ0MzU0MTIsImV4cCI6MTY5NTczMTQxMn0.a3FS5UN_tqyy6TVck6dx7-rnGZhB1lhOyK6Mbj5pxCM');
INSERT INTO `users_tokens` VALUES (87, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODcsImVtYWlsIjoidDQ0NjM2NjhAZ21haWwuY29tIiwibmFtZSI6ImFkYXMiLCJpbWciOm51bGwsImlhdCI6MTY5NTY0NjQxMywiZXhwIjoxNjk4MjM4NDEzfQ.U5L2kGJhvyGCR-vaRf2IhoEhVJzlrtoVJ5PiwFQPEfk', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODcsImVtYWlsIjoidDQ0NjM2NjhAZ21haWwuY29tIiwibmFtZSI6ImFkYXMiLCJpbWciOm51bGwsImlhdCI6MTY5NTY0NjQxMywiZXhwIjoxNjk2OTQyNDEzfQ.Ro3GNSa4kK0A9DxWDnPd1qHBzhWMBhjiHCXa8t_TcA0');
INSERT INTO `users_tokens` VALUES (81, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODEsImVtYWlsIjoidGVzdEB1Z2dndXVkZGR1amp1amp1dXV1LmNvbWRkIiwibmFtZSI6InNkc2RzZCIsImltZyI6InB1YmxpYy91cGxvYWRzL3VzZXJzL3Byb2ZpbGUvMDkyNzllNjczMmVjYmNlNmU2NWNlMTFmNjRjZDkxMWVlZGNhMzY3Yy5wbmciLCJpYXQiOjE2OTU2NDY2MjcsImV4cCI6MTY5ODIzODYyN30.g--b88Pjqs15dgnddnJycyqZ16Uk4g782EZkQ81zEBw', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ODEsImVtYWlsIjoidGVzdEB1Z2dndXVkZGR1amp1amp1dXV1LmNvbWRkIiwibmFtZSI6InNkc2RzZCIsImltZyI6InB1YmxpYy91cGxvYWRzL3VzZXJzL3Byb2ZpbGUvMDkyNzllNjczMmVjYmNlNmU2NWNlMTFmNjRjZDkxMWVlZGNhMzY3Yy5wbmciLCJpYXQiOjE2OTU2NDY2MjcsImV4cCI6MTY5Njk0MjYyN30._i9GhT6myl9Em1qsxT4ADmej1dTQGcXzSpU_l5pLH8E');

SET FOREIGN_KEY_CHECKS = 1;
