CREATE OR REPLACE DIRECTORY image_dir AS '/tmp/zabbix-source/misc/images'
/

CREATE OR REPLACE PROCEDURE LOAD_IMAGE (IMG_ID IN NUMBER, IMG_TYPE IN NUMBER, IMG_NAME IN VARCHAR2, FILE_NAME IN VARCHAR2)
IS
	TEMP_BLOB BLOB := EMPTY_BLOB();
	BFILE_LOC BFILE;
BEGIN
	DBMS_LOB.CREATETEMPORARY(TEMP_BLOB,TRUE,DBMS_LOB.SESSION);
	BFILE_LOC := BFILENAME('IMAGE_DIR', FILE_NAME);
	DBMS_LOB.FILEOPEN(BFILE_LOC);
	DBMS_LOB.LOADFROMFILE(TEMP_BLOB, BFILE_LOC, DBMS_LOB.GETLENGTH(BFILE_LOC));
	DBMS_LOB.FILECLOSE(BFILE_LOC);
	INSERT INTO IMAGES VALUES (IMG_ID, IMG_TYPE, IMG_NAME, TEMP_BLOB);
	COMMIT;
END LOAD_IMAGE;
/

BEGIN
	LOAD_IMAGE(1,1,'Cloud_(128)','png_modern/Cloud_(128).png');
	LOAD_IMAGE(2,1,'Cloud_(24)','png_modern/Cloud_(24).png');
	LOAD_IMAGE(3,1,'Cloud_(48)','png_modern/Cloud_(48).png');
	LOAD_IMAGE(4,1,'Cloud_(64)','png_modern/Cloud_(64).png');
	LOAD_IMAGE(5,1,'Cloud_(96)','png_modern/Cloud_(96).png');
	LOAD_IMAGE(6,1,'Crypto-router_(128)','png_modern/Crypto-router_(128).png');
	LOAD_IMAGE(7,1,'Crypto-router_(24)','png_modern/Crypto-router_(24).png');
	LOAD_IMAGE(8,1,'Crypto-router_(48)','png_modern/Crypto-router_(48).png');
	LOAD_IMAGE(9,1,'Crypto-router_(64)','png_modern/Crypto-router_(64).png');
	LOAD_IMAGE(10,1,'Crypto-router_(96)','png_modern/Crypto-router_(96).png');
	LOAD_IMAGE(11,1,'Crypto-router_symbol_(128)','png_modern/Crypto-router_symbol_(128).png');
	LOAD_IMAGE(12,1,'Crypto-router_symbol_(24)','png_modern/Crypto-router_symbol_(24).png');
	LOAD_IMAGE(13,1,'Crypto-router_symbol_(48)','png_modern/Crypto-router_symbol_(48).png');
	LOAD_IMAGE(14,1,'Crypto-router_symbol_(64)','png_modern/Crypto-router_symbol_(64).png');
	LOAD_IMAGE(15,1,'Crypto-router_symbol_(96)','png_modern/Crypto-router_symbol_(96).png');
	LOAD_IMAGE(16,1,'Disk_array_2D_(128)','png_modern/Disk_array_2D_(128).png');
	LOAD_IMAGE(17,1,'Disk_array_2D_(24)','png_modern/Disk_array_2D_(24).png');
	LOAD_IMAGE(18,1,'Disk_array_2D_(48)','png_modern/Disk_array_2D_(48).png');
	LOAD_IMAGE(19,1,'Disk_array_2D_(64)','png_modern/Disk_array_2D_(64).png');
	LOAD_IMAGE(20,1,'Disk_array_2D_(96)','png_modern/Disk_array_2D_(96).png');
	LOAD_IMAGE(21,1,'Disk_array_3D_(128)','png_modern/Disk_array_3D_(128).png');
	LOAD_IMAGE(22,1,'Disk_array_3D_(24)','png_modern/Disk_array_3D_(24).png');
	LOAD_IMAGE(23,1,'Disk_array_3D_(48)','png_modern/Disk_array_3D_(48).png');
	LOAD_IMAGE(24,1,'Disk_array_3D_(64)','png_modern/Disk_array_3D_(64).png');
	LOAD_IMAGE(25,1,'Disk_array_3D_(96)','png_modern/Disk_array_3D_(96).png');
	LOAD_IMAGE(26,1,'Firewall_(128)','png_modern/Firewall_(128).png');
	LOAD_IMAGE(27,1,'Firewall_(24)','png_modern/Firewall_(24).png');
	LOAD_IMAGE(28,1,'Firewall_(48)','png_modern/Firewall_(48).png');
	LOAD_IMAGE(29,1,'Firewall_(64)','png_modern/Firewall_(64).png');
	LOAD_IMAGE(30,1,'Firewall_(96)','png_modern/Firewall_(96).png');
	LOAD_IMAGE(31,1,'House_(128)','png_modern/House_(128).png');
	LOAD_IMAGE(32,1,'House_(24)','png_modern/House_(24).png');
	LOAD_IMAGE(33,1,'House_(48)','png_modern/House_(48).png');
	LOAD_IMAGE(34,1,'House_(64)','png_modern/House_(64).png');
	LOAD_IMAGE(35,1,'House_(96)','png_modern/House_(96).png');
	LOAD_IMAGE(36,1,'Hub_(128)','png_modern/Hub_(128).png');
	LOAD_IMAGE(37,1,'Hub_(24)','png_modern/Hub_(24).png');
	LOAD_IMAGE(38,1,'Hub_(48)','png_modern/Hub_(48).png');
	LOAD_IMAGE(39,1,'Hub_(64)','png_modern/Hub_(64).png');
	LOAD_IMAGE(40,1,'Hub_(96)','png_modern/Hub_(96).png');
	LOAD_IMAGE(41,1,'IP_PBX_(128)','png_modern/IP_PBX_(128).png');
	LOAD_IMAGE(42,1,'IP_PBX_(24)','png_modern/IP_PBX_(24).png');
	LOAD_IMAGE(43,1,'IP_PBX_(48)','png_modern/IP_PBX_(48).png');
	LOAD_IMAGE(44,1,'IP_PBX_(64)','png_modern/IP_PBX_(64).png');
	LOAD_IMAGE(45,1,'IP_PBX_(96)','png_modern/IP_PBX_(96).png');
	LOAD_IMAGE(46,1,'IP_PBX_symbol_(128)','png_modern/IP_PBX_symbol_(128).png');
	LOAD_IMAGE(47,1,'IP_PBX_symbol_(24)','png_modern/IP_PBX_symbol_(24).png');
	LOAD_IMAGE(48,1,'IP_PBX_symbol_(48)','png_modern/IP_PBX_symbol_(48).png');
	LOAD_IMAGE(49,1,'IP_PBX_symbol_(64)','png_modern/IP_PBX_symbol_(64).png');
	LOAD_IMAGE(50,1,'IP_PBX_symbol_(96)','png_modern/IP_PBX_symbol_(96).png');
	LOAD_IMAGE(51,1,'Modem_(128)','png_modern/Modem_(128).png');
	LOAD_IMAGE(52,1,'Modem_(24)','png_modern/Modem_(24).png');
	LOAD_IMAGE(53,1,'Modem_(48)','png_modern/Modem_(48).png');
	LOAD_IMAGE(54,1,'Modem_(64)','png_modern/Modem_(64).png');
	LOAD_IMAGE(55,1,'Modem_(96)','png_modern/Modem_(96).png');
	LOAD_IMAGE(56,1,'Network_(128)','png_modern/Network_(128).png');
	LOAD_IMAGE(57,1,'Network_(24)','png_modern/Network_(24).png');
	LOAD_IMAGE(58,1,'Network_(48)','png_modern/Network_(48).png');
	LOAD_IMAGE(59,1,'Network_(64)','png_modern/Network_(64).png');
	LOAD_IMAGE(60,1,'Network_(96)','png_modern/Network_(96).png');
	LOAD_IMAGE(61,1,'Network_adapter_(128)','png_modern/Network_adapter_(128).png');
	LOAD_IMAGE(62,1,'Network_adapter_(24)','png_modern/Network_adapter_(24).png');
	LOAD_IMAGE(63,1,'Network_adapter_(48)','png_modern/Network_adapter_(48).png');
	LOAD_IMAGE(64,1,'Network_adapter_(64)','png_modern/Network_adapter_(64).png');
	LOAD_IMAGE(65,1,'Network_adapter_(96)','png_modern/Network_adapter_(96).png');
	LOAD_IMAGE(66,1,'Notebook_(128)','png_modern/Notebook_(128).png');
	LOAD_IMAGE(67,1,'Notebook_(24)','png_modern/Notebook_(24).png');
	LOAD_IMAGE(68,1,'Notebook_(48)','png_modern/Notebook_(48).png');
	LOAD_IMAGE(69,1,'Notebook_(64)','png_modern/Notebook_(64).png');
	LOAD_IMAGE(70,1,'Notebook_(96)','png_modern/Notebook_(96).png');
	LOAD_IMAGE(71,1,'PBX_(128)','png_modern/PBX_(128).png');
	LOAD_IMAGE(72,1,'PBX_(24)','png_modern/PBX_(24).png');
	LOAD_IMAGE(73,1,'PBX_(48)','png_modern/PBX_(48).png');
	LOAD_IMAGE(74,1,'PBX_(64)','png_modern/PBX_(64).png');
	LOAD_IMAGE(75,1,'PBX_(96)','png_modern/PBX_(96).png');
	LOAD_IMAGE(76,1,'Phone_(128)','png_modern/Phone_(128).png');
	LOAD_IMAGE(77,1,'Phone_(24)','png_modern/Phone_(24).png');
	LOAD_IMAGE(78,1,'Phone_(48)','png_modern/Phone_(48).png');
	LOAD_IMAGE(79,1,'Phone_(64)','png_modern/Phone_(64).png');
	LOAD_IMAGE(80,1,'Phone_(96)','png_modern/Phone_(96).png');
	LOAD_IMAGE(81,1,'Printer_(128)','png_modern/Printer_(128).png');
	LOAD_IMAGE(82,1,'Printer_(24)','png_modern/Printer_(24).png');
	LOAD_IMAGE(83,1,'Printer_(48)','png_modern/Printer_(48).png');
	LOAD_IMAGE(84,1,'Printer_(64)','png_modern/Printer_(64).png');
	LOAD_IMAGE(85,1,'Printer_(96)','png_modern/Printer_(96).png');
	LOAD_IMAGE(86,1,'Rack_42_(128)','png_modern/Rack_42_(128).png');
	LOAD_IMAGE(87,1,'Rack_42_(64)','png_modern/Rack_42_(64).png');
	LOAD_IMAGE(88,1,'Rack_42_(96)','png_modern/Rack_42_(96).png');
	LOAD_IMAGE(89,1,'Rack_42_with_door_(128)','png_modern/Rack_42_with_door_(128).png');
	LOAD_IMAGE(90,1,'Rack_42_with_door_(64)','png_modern/Rack_42_with_door_(64).png');
	LOAD_IMAGE(91,1,'Rack_42_with_door_(96)','png_modern/Rack_42_with_door_(96).png');
	LOAD_IMAGE(92,1,'Rackmountable_1U_server_2D_(128)','png_modern/Rackmountable_1U_server_2D_(128).png');
	LOAD_IMAGE(93,1,'Rackmountable_1U_server_2D_(64)','png_modern/Rackmountable_1U_server_2D_(64).png');
	LOAD_IMAGE(94,1,'Rackmountable_1U_server_2D_(96)','png_modern/Rackmountable_1U_server_2D_(96).png');
	LOAD_IMAGE(95,1,'Rackmountable_1U_server_3D_(128)','png_modern/Rackmountable_1U_server_3D_(128).png');
	LOAD_IMAGE(96,1,'Rackmountable_1U_server_3D_(64)','png_modern/Rackmountable_1U_server_3D_(64).png');
	LOAD_IMAGE(97,1,'Rackmountable_1U_server_3D_(96)','png_modern/Rackmountable_1U_server_3D_(96).png');
	LOAD_IMAGE(98,1,'Rackmountable_2U_server_2D_(128)','png_modern/Rackmountable_2U_server_2D_(128).png');
	LOAD_IMAGE(99,1,'Rackmountable_2U_server_2D_(64)','png_modern/Rackmountable_2U_server_2D_(64).png');
	LOAD_IMAGE(100,1,'Rackmountable_2U_server_2D_(96)','png_modern/Rackmountable_2U_server_2D_(96).png');
	LOAD_IMAGE(101,1,'Rackmountable_2U_server_3D_(128)','png_modern/Rackmountable_2U_server_3D_(128).png');
	LOAD_IMAGE(102,1,'Rackmountable_2U_server_3D_(64)','png_modern/Rackmountable_2U_server_3D_(64).png');
	LOAD_IMAGE(103,1,'Rackmountable_2U_server_3D_(96)','png_modern/Rackmountable_2U_server_3D_(96).png');
	LOAD_IMAGE(104,1,'Rackmountable_3U_server_2D_(128)','png_modern/Rackmountable_3U_server_2D_(128).png');
	LOAD_IMAGE(105,1,'Rackmountable_3U_server_2D_(64)','png_modern/Rackmountable_3U_server_2D_(64).png');
	LOAD_IMAGE(106,1,'Rackmountable_3U_server_2D_(96)','png_modern/Rackmountable_3U_server_2D_(96).png');
	LOAD_IMAGE(107,1,'Rackmountable_3U_server_3D_(128)','png_modern/Rackmountable_3U_server_3D_(128).png');
	LOAD_IMAGE(108,1,'Rackmountable_3U_server_3D_(64)','png_modern/Rackmountable_3U_server_3D_(64).png');
	LOAD_IMAGE(109,1,'Rackmountable_3U_server_3D_(96)','png_modern/Rackmountable_3U_server_3D_(96).png');
	LOAD_IMAGE(110,1,'Rackmountable_4U_server_2D_(128)','png_modern/Rackmountable_4U_server_2D_(128).png');
	LOAD_IMAGE(111,1,'Rackmountable_4U_server_2D_(64)','png_modern/Rackmountable_4U_server_2D_(64).png');
	LOAD_IMAGE(112,1,'Rackmountable_4U_server_2D_(96)','png_modern/Rackmountable_4U_server_2D_(96).png');
	LOAD_IMAGE(113,1,'Rackmountable_4U_server_3D_(128)','png_modern/Rackmountable_4U_server_3D_(128).png');
	LOAD_IMAGE(114,1,'Rackmountable_4U_server_3D_(64)','png_modern/Rackmountable_4U_server_3D_(64).png');
	LOAD_IMAGE(115,1,'Rackmountable_4U_server_3D_(96)','png_modern/Rackmountable_4U_server_3D_(96).png');
	LOAD_IMAGE(116,1,'Rackmountable_5U_server_2D_(128)','png_modern/Rackmountable_5U_server_2D_(128).png');
	LOAD_IMAGE(117,1,'Rackmountable_5U_server_2D_(64)','png_modern/Rackmountable_5U_server_2D_(64).png');
	LOAD_IMAGE(118,1,'Rackmountable_5U_server_2D_(96)','png_modern/Rackmountable_5U_server_2D_(96).png');
	LOAD_IMAGE(119,1,'Rackmountable_5U_server_3D_(128)','png_modern/Rackmountable_5U_server_3D_(128).png');
	LOAD_IMAGE(120,1,'Rackmountable_5U_server_3D_(64)','png_modern/Rackmountable_5U_server_3D_(64).png');
	LOAD_IMAGE(121,1,'Rackmountable_5U_server_3D_(96)','png_modern/Rackmountable_5U_server_3D_(96).png');
	LOAD_IMAGE(122,1,'Router_(128)','png_modern/Router_(128).png');
	LOAD_IMAGE(123,1,'Router_(24)','png_modern/Router_(24).png');
	LOAD_IMAGE(124,1,'Router_(48)','png_modern/Router_(48).png');
	LOAD_IMAGE(125,1,'Router_(64)','png_modern/Router_(64).png');
	LOAD_IMAGE(126,1,'Router_(96)','png_modern/Router_(96).png');
	LOAD_IMAGE(127,1,'Router_symbol_(128)','png_modern/Router_symbol_(128).png');
	LOAD_IMAGE(128,1,'Router_symbol_(24)','png_modern/Router_symbol_(24).png');
	LOAD_IMAGE(129,1,'Router_symbol_(48)','png_modern/Router_symbol_(48).png');
	LOAD_IMAGE(130,1,'Router_symbol_(64)','png_modern/Router_symbol_(64).png');
	LOAD_IMAGE(131,1,'Router_symbol_(96)','png_modern/Router_symbol_(96).png');
	LOAD_IMAGE(132,1,'SAN_(128)','png_modern/SAN_(128).png');
	LOAD_IMAGE(133,1,'SAN_(24)','png_modern/SAN_(24).png');
	LOAD_IMAGE(134,1,'SAN_(48)','png_modern/SAN_(48).png');
	LOAD_IMAGE(135,1,'SAN_(64)','png_modern/SAN_(64).png');
	LOAD_IMAGE(136,1,'SAN_(96)','png_modern/SAN_(96).png');
	LOAD_IMAGE(137,1,'Satellite_(128)','png_modern/Satellite_(128).png');
	LOAD_IMAGE(138,1,'Satellite_(24)','png_modern/Satellite_(24).png');
	LOAD_IMAGE(139,1,'Satellite_(48)','png_modern/Satellite_(48).png');
	LOAD_IMAGE(140,1,'Satellite_(64)','png_modern/Satellite_(64).png');
	LOAD_IMAGE(141,1,'Satellite_(96)','png_modern/Satellite_(96).png');
	LOAD_IMAGE(142,1,'Satellite_antenna_(128)','png_modern/Satellite_antenna_(128).png');
	LOAD_IMAGE(143,1,'Satellite_antenna_(24)','png_modern/Satellite_antenna_(24).png');
	LOAD_IMAGE(144,1,'Satellite_antenna_(48)','png_modern/Satellite_antenna_(48).png');
	LOAD_IMAGE(145,1,'Satellite_antenna_(64)','png_modern/Satellite_antenna_(64).png');
	LOAD_IMAGE(146,1,'Satellite_antenna_(96)','png_modern/Satellite_antenna_(96).png');
	LOAD_IMAGE(147,1,'Server_(128)','png_modern/Server_(128).png');
	LOAD_IMAGE(148,1,'Server_(24)','png_modern/Server_(24).png');
	LOAD_IMAGE(149,1,'Server_(48)','png_modern/Server_(48).png');
	LOAD_IMAGE(150,1,'Server_(64)','png_modern/Server_(64).png');
	LOAD_IMAGE(151,1,'Server_(96)','png_modern/Server_(96).png');
	LOAD_IMAGE(152,1,'Switch_(128)','png_modern/Switch_(128).png');
	LOAD_IMAGE(153,1,'Switch_(24)','png_modern/Switch_(24).png');
	LOAD_IMAGE(154,1,'Switch_(48)','png_modern/Switch_(48).png');
	LOAD_IMAGE(155,1,'Switch_(64)','png_modern/Switch_(64).png');
	LOAD_IMAGE(156,1,'Switch_(96)','png_modern/Switch_(96).png');
	LOAD_IMAGE(157,1,'UPS_(128)','png_modern/UPS_(128).png');
	LOAD_IMAGE(158,1,'UPS_(24)','png_modern/UPS_(24).png');
	LOAD_IMAGE(159,1,'UPS_(48)','png_modern/UPS_(48).png');
	LOAD_IMAGE(160,1,'UPS_(64)','png_modern/UPS_(64).png');
	LOAD_IMAGE(161,1,'UPS_(96)','png_modern/UPS_(96).png');
	LOAD_IMAGE(162,1,'UPS_rackmountable_2D_(128)','png_modern/UPS_rackmountable_2D_(128).png');
	LOAD_IMAGE(163,1,'UPS_rackmountable_2D_(24)','png_modern/UPS_rackmountable_2D_(24).png');
	LOAD_IMAGE(164,1,'UPS_rackmountable_2D_(48)','png_modern/UPS_rackmountable_2D_(48).png');
	LOAD_IMAGE(165,1,'UPS_rackmountable_2D_(64)','png_modern/UPS_rackmountable_2D_(64).png');
	LOAD_IMAGE(166,1,'UPS_rackmountable_2D_(96)','png_modern/UPS_rackmountable_2D_(96).png');
	LOAD_IMAGE(167,1,'UPS_rackmountable_3D_(128)','png_modern/UPS_rackmountable_3D_(128).png');
	LOAD_IMAGE(168,1,'UPS_rackmountable_3D_(24)','png_modern/UPS_rackmountable_3D_(24).png');
	LOAD_IMAGE(169,1,'UPS_rackmountable_3D_(48)','png_modern/UPS_rackmountable_3D_(48).png');
	LOAD_IMAGE(170,1,'UPS_rackmountable_3D_(64)','png_modern/UPS_rackmountable_3D_(64).png');
	LOAD_IMAGE(171,1,'UPS_rackmountable_3D_(96)','png_modern/UPS_rackmountable_3D_(96).png');
	LOAD_IMAGE(172,1,'Video_terminal_(128)','png_modern/Video_terminal_(128).png');
	LOAD_IMAGE(173,1,'Video_terminal_(24)','png_modern/Video_terminal_(24).png');
	LOAD_IMAGE(174,1,'Video_terminal_(48)','png_modern/Video_terminal_(48).png');
	LOAD_IMAGE(175,1,'Video_terminal_(64)','png_modern/Video_terminal_(64).png');
	LOAD_IMAGE(176,1,'Video_terminal_(96)','png_modern/Video_terminal_(96).png');
	LOAD_IMAGE(177,1,'Workstation_(128)','png_modern/Workstation_(128).png');
	LOAD_IMAGE(178,1,'Workstation_(24)','png_modern/Workstation_(24).png');
	LOAD_IMAGE(179,1,'Workstation_(48)','png_modern/Workstation_(48).png');
	LOAD_IMAGE(180,1,'Workstation_(64)','png_modern/Workstation_(64).png');
	LOAD_IMAGE(181,1,'Workstation_(96)','png_modern/Workstation_(96).png');
	LOAD_IMAGE(182,1,'Zabbix_server_2D_(128)','png_modern/Zabbix_server_2D_(128).png');
	LOAD_IMAGE(183,1,'Zabbix_server_2D_(64)','png_modern/Zabbix_server_2D_(64).png');
	LOAD_IMAGE(184,1,'Zabbix_server_2D_(96)','png_modern/Zabbix_server_2D_(96).png');
	LOAD_IMAGE(185,1,'Zabbix_server_3D_(128)','png_modern/Zabbix_server_3D_(128).png');
	LOAD_IMAGE(186,1,'Zabbix_server_3D_(64)','png_modern/Zabbix_server_3D_(64).png');
	LOAD_IMAGE(187,1,'Zabbix_server_3D_(96)','png_modern/Zabbix_server_3D_(96).png');
END;
/

DROP PROCEDURE LOAD_IMAGE;

DROP DIRECTORY image_dir;
