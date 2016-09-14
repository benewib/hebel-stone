# Converted with pg2mysql-1.9
# Converted on Thu, 08 Sep 2016 13:43:12 -0400
# Lightbox Technologies Inc. http://www.lightbox.ca

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone="+00:00";

CREATE TABLE auth_group (
    id int(11) NOT NULL,
    name varchar(80) NOT NULL
) TYPE=MyISAM;

CREATE TABLE auth_group_permissions (
    id int(11) NOT NULL,
    group_id int(11) NOT NULL,
    permission_id int(11) NOT NULL
) TYPE=MyISAM;

CREATE TABLE auth_permission (
    id int(11) NOT NULL,
    name varchar(255) NOT NULL,
    content_type_id int(11) NOT NULL,
    codename varchar(100) NOT NULL
) TYPE=MyISAM;

CREATE TABLE auth_user (
    id int(11) NOT NULL,
    password varchar(128) NOT NULL,
    last_login timestamp,
    is_superuser bool NOT NULL,
    username varchar(30) NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    email varchar(254) NOT NULL,
    is_staff bool NOT NULL,
    is_active bool NOT NULL,
    date_joined timestamp NOT NULL
) TYPE=MyISAM;

CREATE TABLE auth_user_groups (
    id int(11) NOT NULL,
    user_id int(11) NOT NULL,
    group_id int(11) NOT NULL
) TYPE=MyISAM;

CREATE TABLE auth_user_user_permissions (
    id int(11) NOT NULL,
    user_id int(11) NOT NULL,
    permission_id int(11) NOT NULL
) TYPE=MyISAM;

CREATE TABLE django_admin_log (
    id int(11) NOT NULL,
    action_time timestamp NOT NULL,
    object_id text,
    object_repr varchar(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id int(11),
    user_id int(11) NOT NULL
) TYPE=MyISAM;

CREATE TABLE django_content_type (
    id int(11) NOT NULL,
    app_label varchar(100) NOT NULL,
    model varchar(100) NOT NULL
) TYPE=MyISAM;

CREATE TABLE django_migrations (
    id int(11) NOT NULL,
    app varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    applied timestamp NOT NULL
) TYPE=MyISAM;

CREATE TABLE django_session (
    session_key varchar(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp NOT NULL
) TYPE=MyISAM;

CREATE TABLE stones_kategori (
    id int(11) NOT NULL,
    nama_kategori varchar(30) NOT NULL,
    deskripsi varchar(100) NOT NULL
) TYPE=MyISAM;

CREATE TABLE stones_stone (
    id int(11) NOT NULL,
    kode varchar(30) NOT NULL,
    deskripsi varchar(200) NOT NULL,
    cover_stone varchar(100) NOT NULL,
    kategori_id int(11) NOT NULL,
    harga numeric(6,0),
    size varchar(13),
    depan bool NOT NULL
) TYPE=MyISAM;

INSERT INTO auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO auth_permission VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO auth_permission VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO auth_permission VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO auth_permission VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO auth_permission VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO auth_permission VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO auth_permission VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO auth_permission VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO auth_permission VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO auth_permission VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO auth_permission VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO auth_permission VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO auth_permission VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO auth_permission VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO auth_permission VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO auth_permission VALUES (19, 'Can add kategori', 7, 'add_kategori');
INSERT INTO auth_permission VALUES (20, 'Can change kategori', 7, 'change_kategori');
INSERT INTO auth_permission VALUES (21, 'Can delete kategori', 7, 'delete_kategori');
INSERT INTO auth_permission VALUES (22, 'Can add stone', 8, 'add_stone');
INSERT INTO auth_permission VALUES (23, 'Can change stone', 8, 'change_stone');
INSERT INTO auth_permission VALUES (24, 'Can delete stone', 8, 'delete_stone');
INSERT INTO auth_user VALUES (1, 'pbkdf2_sha256$24000$wm7KbzXLCgpb$bqejl4OdcGnwNPoGx8Otgr9/oANeHNxT3u6Bnl/TM5k=', '2016-09-08 18:15:29.983891+07', true, 'lovo', '', '', 'winerwind@gmail.com', true, true, '2016-02-03 21:49:20.60915+07');
INSERT INTO django_admin_log VALUES (1, '2016-08-03 10:15:48.242558+07', '1', 'Kategori object', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (2, '2016-08-03 10:16:25.401551+07', '2', 'Kategori object', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (3, '2016-08-03 10:16:46.579799+07', '3', 'Kategori object', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (4, '2016-08-03 10:17:46.199582+07', '4', 'Kategori object', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (5, '2016-08-03 10:18:10.6852+07', '5', 'Kategori object', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (6, '2016-08-03 10:18:54.624346+07', '6', 'Kategori object', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (7, '2016-08-03 10:18:57.739173+07', '7', 'Kategori object', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (8, '2016-08-17 13:59:57.196982+07', '6', 'purpose', 3, '', 7, 1);
INSERT INTO django_admin_log VALUES (9, '2016-08-17 14:39:11.808284+07', '1', 'BT-01', 1, 'Added.', 8, 1);
INSERT INTO django_admin_log VALUES (10, '2016-08-17 14:39:42.623836+07', '2', 'BT-02', 1, 'Added.', 8, 1);
INSERT INTO django_admin_log VALUES (11, '2016-08-17 14:40:36.924307+07', '3', 'SS-01', 1, 'Added.', 8, 1);
INSERT INTO django_admin_log VALUES (12, '2016-08-17 14:41:04.430084+07', '4', 'SS-02', 1, 'Added.', 8, 1);
INSERT INTO django_admin_log VALUES (13, '2016-08-20 11:58:07.079881+07', '4', 'SHK-411', 2, 'Changed kode, deskripsi, size and harga.', 8, 1);
INSERT INTO django_admin_log VALUES (14, '2016-08-22 00:32:34.549093+07', '4', 'SHK-411', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (15, '2016-08-27 01:25:12.655356+07', '4', 'SHK-411', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (16, '2016-08-27 16:21:53.251101+07', '4', 'SHK-411', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (17, '2016-08-27 16:24:07.004361+07', '4', 'SHK-411', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (18, '2016-08-27 16:51:50.655056+07', '4', 'SHK-411', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (19, '2016-08-27 16:54:19.170215+07', '3', 'SS-01', 2, 'Changed size and harga.', 8, 1);
INSERT INTO django_admin_log VALUES (20, '2016-08-27 16:54:44.835459+07', '3', 'SS-01', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (21, '2016-08-30 00:17:41.84464+07', '4', 'SHK-411', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (22, '2016-08-30 00:18:01.389627+07', '3', 'SS-01', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (23, '2016-08-30 00:18:45.424259+07', '2', 'BT-02', 2, 'Changed size, harga and cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (24, '2016-08-30 00:19:08.195591+07', '1', 'BT-01', 2, 'Changed size, harga and cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (25, '2016-08-30 00:19:41.996683+07', '5', 'BT-03', 1, 'Added.', 8, 1);
INSERT INTO django_admin_log VALUES (26, '2016-08-30 00:20:11.752257+07', '6', 'BT-04', 1, 'Added.', 8, 1);
INSERT INTO django_admin_log VALUES (27, '2016-08-30 00:22:06.600449+07', '2', 'Produk object', 1, 'Added.', NULL, 1);
INSERT INTO django_admin_log VALUES (28, '2016-08-30 00:22:28.248863+07', '3', 'Produk object', 1, 'Added.', NULL, 1);
INSERT INTO django_admin_log VALUES (29, '2016-08-30 00:22:43.141248+07', '4', 'Produk object', 1, 'Added.', NULL, 1);
INSERT INTO django_admin_log VALUES (30, '2016-08-30 00:23:00.230376+07', '5', 'Produk object', 1, 'Added.', NULL, 1);
INSERT INTO django_admin_log VALUES (31, '2016-08-30 00:23:12.312005+07', '6', 'Produk object', 1, 'Added.', NULL, 1);
INSERT INTO django_admin_log VALUES (32, '2016-08-30 00:23:24.806249+07', '7', 'Produk object', 1, 'Added.', NULL, 1);
INSERT INTO django_admin_log VALUES (33, '2016-08-31 17:36:48.205742+07', '6', 'BT-04', 2, 'Changed depan.', 8, 1);
INSERT INTO django_admin_log VALUES (34, '2016-08-31 17:36:57.887096+07', '5', 'BT-03', 2, 'Changed depan.', 8, 1);
INSERT INTO django_admin_log VALUES (35, '2016-09-02 19:30:38.814029+07', '6', 'BT-04', 3, '', 8, 1);
INSERT INTO django_admin_log VALUES (36, '2016-09-02 19:30:38.856587+07', '5', 'BT-03', 3, '', 8, 1);
INSERT INTO django_admin_log VALUES (37, '2016-09-02 19:30:38.859563+07', '4', 'SHK-411', 3, '', 8, 1);
INSERT INTO django_admin_log VALUES (38, '2016-09-02 19:30:38.862064+07', '3', 'SS-01', 3, '', 8, 1);
INSERT INTO django_admin_log VALUES (39, '2016-09-02 19:30:38.864067+07', '2', 'BT-02', 3, '', 8, 1);
INSERT INTO django_admin_log VALUES (40, '2016-09-02 19:30:38.866566+07', '1', 'BT-01', 3, '', 8, 1);
INSERT INTO django_admin_log VALUES (41, '2016-09-02 19:52:54.799088+07', '7', 'Purpose', 2, 'Changed nama_kategori.', 7, 1);
INSERT INTO django_admin_log VALUES (42, '2016-09-02 19:53:11.680861+07', '5', 'Project', 2, 'Changed nama_kategori.', 7, 1);
INSERT INTO django_admin_log VALUES (43, '2016-09-02 19:54:11.434194+07', '2', 'Slite', 2, 'Changed nama_kategori.', 7, 1);
INSERT INTO django_admin_log VALUES (44, '2016-09-02 23:48:29.297271+07', '7', 'shy-301', 1, 'Added.', 8, 1);
INSERT INTO django_admin_log VALUES (45, '2016-09-02 23:48:57.834146+07', '7', 'shy-301', 3, '', 8, 1);
INSERT INTO django_admin_log VALUES (46, '2016-09-02 23:50:06.665587+07', '8', 'shy-301', 1, 'Added.', 8, 1);
INSERT INTO django_admin_log VALUES (47, '2016-09-07 17:12:06.206509+07', '42', 'SHT-262', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (48, '2016-09-07 17:15:50.094725+07', '31', 'BH-01', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (49, '2016-09-07 17:17:18.591551+07', '31', 'BH-01', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (50, '2016-09-07 18:00:23.829275+07', '2', 'Lite Stone', 2, 'Changed nama_kategori.', 7, 1);
INSERT INTO django_admin_log VALUES (51, '2016-09-07 18:00:44.746138+07', '6', 'Purpose', 2, 'Changed nama_kategori.', 7, 1);
INSERT INTO django_admin_log VALUES (52, '2016-09-07 18:00:59.912278+07', '4', 'Sand Stone', 2, 'Changed nama_kategori.', 7, 1);
INSERT INTO django_admin_log VALUES (53, '2016-09-07 18:01:13.044713+07', '3', 'Pebble Stone', 2, 'Changed nama_kategori.', 7, 1);
INSERT INTO django_admin_log VALUES (54, '2016-09-07 18:01:26.102131+07', '1', 'Batu Bata', 2, 'Changed nama_kategori.', 7, 1);
INSERT INTO django_admin_log VALUES (55, '2016-09-08 18:16:30.426669+07', '42', 'SHT-262', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (56, '2016-09-08 18:18:16.623135+07', '41', 'SHT-255', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (57, '2016-09-08 18:18:19.735041+07', '41', 'SHT-255', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (58, '2016-09-08 18:19:14.304058+07', '40', 'SHT-250', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (59, '2016-09-08 18:19:41.37618+07', '39', 'SHT-205', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (60, '2016-09-08 18:20:08.394594+07', '38', 'SHT-204', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (61, '2016-09-08 18:20:34.700157+07', '37', 'SHT-203', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (62, '2016-09-08 18:20:56.549481+07', '36', 'SHT-200', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (63, '2016-09-08 18:21:19.593463+07', '35', 'SHY-301', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (64, '2016-09-08 18:21:51.668389+07', '34', 'BH-10', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (65, '2016-09-08 18:22:12.70262+07', '33', 'BH-09', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (66, '2016-09-08 18:22:37.439137+07', '32', 'BH-02', 2, 'Changed deskripsi and cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (67, '2016-09-08 18:23:00.510791+07', '31', 'BH-01', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (68, '2016-09-08 18:23:24.266687+07', '30', 'H-12', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (69, '2016-09-08 18:23:47.853143+07', '29', 'H-11', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (70, '2016-09-08 18:24:10.310727+07', '28', 'H-10', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (71, '2016-09-08 18:24:28.701811+07', '27', 'H-09', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (72, '2016-09-08 18:24:52.436603+07', '26', 'H-08', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (73, '2016-09-08 18:25:10.265102+07', '25', 'H-07', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (74, '2016-09-08 18:25:29.95163+07', '24', 'H-06', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (75, '2016-09-08 18:25:49.91285+07', '23', 'H-05', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (76, '2016-09-08 18:26:13.198944+07', '22', 'H-04', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (77, '2016-09-08 18:26:32.769751+07', '22', 'H-04', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (78, '2016-09-08 18:26:56.223912+07', '21', 'H-03', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (79, '2016-09-08 18:27:18.35896+07', '20', 'H-02', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (80, '2016-09-08 18:27:38.8236+07', '19', 'H-01', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (81, '2016-09-08 18:28:11.669766+07', '18', 'SJS-036', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (82, '2016-09-08 18:28:35.790374+07', '17', 'SHJ-450', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (83, '2016-09-08 18:29:03.838754+07', '16', 'SHJ-425', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (84, '2016-09-08 18:29:29.872368+07', '15', 'SHJ-415', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (85, '2016-09-08 18:29:50.4835+07', '14', 'SHJ-412', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (86, '2016-09-08 18:30:08.790086+07', '13', 'SHJ-411', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_admin_log VALUES (87, '2016-09-08 18:31:09.683967+07', '22', 'H-04', 2, 'Changed cover_stone.', 8, 1);
INSERT INTO django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type VALUES (3, 'auth', 'group');
INSERT INTO django_content_type VALUES (4, 'auth', 'user');
INSERT INTO django_content_type VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type VALUES (7, 'stones', 'kategori');
INSERT INTO django_content_type VALUES (8, 'stones', 'stone');
INSERT INTO django_migrations VALUES (1, 'contenttypes', '0001_initial', '2016-02-03 13:30:43.369293+07');
INSERT INTO django_migrations VALUES (2, 'auth', '0001_initial', '2016-02-03 13:30:44.306979+07');
INSERT INTO django_migrations VALUES (3, 'admin', '0001_initial', '2016-02-03 13:30:44.4791+07');
INSERT INTO django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2016-02-03 13:30:44.503115+07');
INSERT INTO django_migrations VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2016-02-03 13:30:44.557156+07');
INSERT INTO django_migrations VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2016-02-03 13:30:44.577171+07');
INSERT INTO django_migrations VALUES (7, 'auth', '0003_alter_user_email_max_length', '2016-02-03 13:30:44.601191+07');
INSERT INTO django_migrations VALUES (8, 'auth', '0004_alter_user_username_opts', '2016-02-03 13:30:44.627206+07');
INSERT INTO django_migrations VALUES (9, 'auth', '0005_alter_user_last_login_null', '2016-02-03 13:30:44.652226+07');
INSERT INTO django_migrations VALUES (10, 'auth', '0006_require_contenttypes_0002', '2016-02-03 13:30:44.657232+07');
INSERT INTO django_migrations VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2016-02-03 13:30:44.677245+07');
INSERT INTO django_migrations VALUES (12, 'sessions', '0001_initial', '2016-02-03 13:30:44.870385+07');
INSERT INTO django_migrations VALUES (13, 'stones', '0001_initial', '2016-08-03 09:32:28.737578+07');
INSERT INTO django_migrations VALUES (14, 'stones', '0002_carosel', '2016-08-17 08:13:57.304373+07');
INSERT INTO django_migrations VALUES (15, 'stones', '0003_auto_20160819_1039', '2016-08-19 10:39:58.847991+07');
INSERT INTO django_migrations VALUES (16, 'stones', '0004_auto_20160827_0123', '2016-08-27 01:23:54.643632+07');
INSERT INTO django_migrations VALUES (17, 'stones', '0005_produk', '2016-08-27 11:41:20.086752+07');
INSERT INTO django_migrations VALUES (18, 'stones', '0006_auto_20160827_1623', '2016-08-27 16:23:39.007232+07');
INSERT INTO django_migrations VALUES (19, 'stones', '0007_auto_20160830_0014', '2016-08-30 00:15:10.218542+07');
INSERT INTO django_migrations VALUES (20, 'stones', '0008_auto_20160831_1729', '2016-08-31 17:30:16.296873+07');
INSERT INTO django_migrations VALUES (21, 'stones', '0009_auto_20160908_0953', '2016-09-08 09:53:27.317003+07');
INSERT INTO django_session VALUES ('zqhiw5weo9i5qlzzgpzi8wgjsfzrka07', 'OWQ0ZDEzNWE2MDNmYTc5OTFhMzc3ZmNiZmZmNDRhMzAzYTA5ZDMxOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTU4ZmI1MDk0YzFkOTc0MDEyODBmMTM2MmU2OTk1MTBjMjVkYWEyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-08-07 18:10:26.042068+07');
INSERT INTO django_session VALUES ('1mwbrnbb9a16otdnx2romyzr3pqk8iwg', 'NjMxZWE0ZTczZjc3MTgxZmYwY2UyNzgwOTRjNTI1NGI5NzA5NTFiMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1OGZiNTA5NGMxZDk3NDAxMjgwZjEzNjJlNjk5NTEwYzI1ZGFhMjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-08-17 10:12:49.10744+07');
INSERT INTO stones_kategori VALUES (5, 'Project', 'Gambar proyek yang dikerjakan');
INSERT INTO stones_kategori VALUES (2, 'Lite Stone', 'Lite stone');
INSERT INTO stones_kategori VALUES (6, 'Purpose', 'Batu lain yang campur');
INSERT INTO stones_kategori VALUES (4, 'Sand Stone', 'Batu sand');
INSERT INTO stones_kategori VALUES (3, 'Pebble Stone', 'Pebble Stone');
INSERT INTO stones_kategori VALUES (1, 'Batu Bata', 'Bermacam macam model Batu Bata');
INSERT INTO stones_stone VALUES (16, 'SHJ-425', 'Multi Colour Random', 'stones/shj-425.png', 2, 0, '23 x 60 x 10', true);
INSERT INTO stones_stone VALUES (15, 'SHJ-415', 'Multi colour', 'stones/shj-415.png', 2, 0, '22 x 60 x 10', false);
INSERT INTO stones_stone VALUES (14, 'SHJ-412', 'Multi colour', 'stones/shj-412.png', 2, 0, '21 x 60 x 10', false);
INSERT INTO stones_stone VALUES (13, 'SHJ-411', 'Multi colour', 'stones/shj-411.png', 2, 0, '20 x 60 x 10', true);
INSERT INTO stones_stone VALUES (22, 'H-04', 'Twotone colour', 'stones/h-04.png', 3, 0, '29 x 60 x 10', false);
INSERT INTO stones_stone VALUES (42, 'SHT-262', 'Pink Bakar Marmer', 'stones/sht-262.png', 6, 0, '49 x 60 x 10', false);
INSERT INTO stones_stone VALUES (41, 'SHT-255', 'Black Andesit Betel', 'stones/sht-255_D4zfh8T.png', 6, 0, '48 x 60 x 10', true);
INSERT INTO stones_stone VALUES (40, 'SHT-250', 'Andesit Bakar', 'stones/sht-250.png', 6, 0, '47 x 60 x 10', false);
INSERT INTO stones_stone VALUES (39, 'SHT-205', 'Gray Blue', 'stones/sht-205.png', 6, 0, '46 x 60 x 10', false);
INSERT INTO stones_stone VALUES (38, 'SHT-204', 'Gray Blue', 'stones/sht-204.png', 6, 0, '45 x 60 x 10', false);
INSERT INTO stones_stone VALUES (37, 'SHT-203', 'Pink Yellow Sand Stone', 'stones/sht-203.png', 6, 0, '44 x 60 x 10', false);
INSERT INTO stones_stone VALUES (36, 'SHT-200', 'Sand Stone Gray Blue', 'stones/sht-200.png', 6, 0, '43 x 60 x 10', false);
INSERT INTO stones_stone VALUES (35, 'SHY-301', 'Black Candi Stone', 'stones/shy-301.png', 6, 0, '42 x 60 x 10', true);
INSERT INTO stones_stone VALUES (34, 'BH-10', 'Exsterior', 'stones/bh-10.png', 1, 0, '41 x 60 x 10', false);
INSERT INTO stones_stone VALUES (33, 'BH-09', 'Red Round', 'stones/bh-09.png', 1, 0, '40 x 60 x 10', false);
INSERT INTO stones_stone VALUES (32, 'BH-02', 'Random', 'stones/bh-02.png', 1, 0, '39 x 60 x 10', false);
INSERT INTO stones_stone VALUES (31, 'BH-01', 'Random Red', 'stones/bh-01.png', 1, 0, '38 x 60 x 10', true);
INSERT INTO stones_stone VALUES (30, 'H-12', 'Mix White and cream', 'stones/h-12.png', 3, 0, '37 x 60 x 10', false);
INSERT INTO stones_stone VALUES (29, 'H-11', 'Black', 'stones/h-11.png', 3, 0, '36 x 60 x 10', false);
INSERT INTO stones_stone VALUES (28, 'H-10', 'Black Kipas', 'stones/h-10.png', 3, 0, '35 x 60 x 10', false);
INSERT INTO stones_stone VALUES (27, 'H-09', 'Granit Natural multi colour', 'stones/h-09.png', 3, 0, '34 x 60 x 10', false);
INSERT INTO stones_stone VALUES (26, 'H-08', 'Red', 'stones/h-08.png', 3, 0, '33 x 60 x 10', false);
INSERT INTO stones_stone VALUES (25, 'H-07', 'Mix colour', 'stones/h-07.png', 3, 0, '32 x 60 x 10', false);
INSERT INTO stones_stone VALUES (24, 'H-06', 'Random', 'stones/h-06.png', 3, 0, '31 x 60 x 10', false);
INSERT INTO stones_stone VALUES (23, 'H-05', 'Multi colour', 'stones/h-05.png', 3, 0, '30 x 60 x 10', false);
INSERT INTO stones_stone VALUES (21, 'H-03', 'Multi colour', 'stones/h-03.png', 3, 0, '28 x 60 x 10', false);
INSERT INTO stones_stone VALUES (20, 'H-02', 'Multi colour Kyoto', 'stones/h-02.png', 3, 0, '27 x 60 x 10', false);
INSERT INTO stones_stone VALUES (19, 'H-01', 'Multi colour laim stone', 'stones/h-01.png', 3, 0, '26 x 60 x 10', true);
INSERT INTO stones_stone VALUES (18, 'SJS-036', 'cemen Exterior', 'stones/sjs-036.png', 2, 0, '25 x 60 x 4', false);
INSERT INTO stones_stone VALUES (17, 'SHJ-450', 'Multi colour', 'stones/shj-450.png', 2, 0, '24 x 60 x 10', false);
ALTER TABLE auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
ALTER TABLE auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
ALTER TABLE auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
ALTER TABLE auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
ALTER TABLE auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
ALTER TABLE auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
ALTER TABLE django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
ALTER TABLE django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
ALTER TABLE django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
ALTER TABLE django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
ALTER TABLE stones_kategori
    ADD CONSTRAINT stones_kategori_pkey PRIMARY KEY (id);
ALTER TABLE stones_stone
    ADD CONSTRAINT stones_stone_pkey PRIMARY KEY (id);
ALTER TABLE `auth_group` ADD INDEX ( name varchar_pattern_ops ) ;
ALTER TABLE `auth_group_permissions` ADD INDEX ( group_id ) ;
ALTER TABLE `auth_group_permissions` ADD INDEX ( permission_id ) ;
ALTER TABLE `auth_permission` ADD INDEX ( content_type_id ) ;
ALTER TABLE `auth_user_groups` ADD INDEX ( group_id ) ;
ALTER TABLE `auth_user_groups` ADD INDEX ( user_id ) ;
ALTER TABLE `auth_user_user_permissions` ADD INDEX ( permission_id ) ;
ALTER TABLE `auth_user_user_permissions` ADD INDEX ( user_id ) ;
ALTER TABLE `auth_user` ADD INDEX ( username varchar_pattern_ops ) ;
ALTER TABLE `django_admin_log` ADD INDEX ( content_type_id ) ;
ALTER TABLE `django_admin_log` ADD INDEX ( user_id ) ;
ALTER TABLE `django_session` ADD INDEX ( expire_date ) ;
ALTER TABLE `django_session` ADD INDEX ( session_key varchar_pattern_ops ) ;
ALTER TABLE `stones_stone` ADD INDEX ( kategori_id ) ;
