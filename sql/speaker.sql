CREATE TABLE IF NOT EXISTS "speaker" (
  "name" text PRIMARY KEY,
  "price" double precision NULL,
  "configuration" double precision,
  "wattage" double precision NULL,
  "frequency_response" json NULL,
  "color" text NULL
);

INSERT INTO "speaker" VALUES
('Logitech Z200',39.99,2,10,'[20,20]',NULL),
('Logitech THX Z_5300e',1398.99,5.1,280,'[35,20]',NULL),
('Creative Labs Pebble 2.0',24.25,2,4.4,'[100,17]','Black'),
('Creative Labs Pebble 2.0',24.25,2,4.4,'[100,17]','White'),
('Logitech Z906',399,5.1,500,'[35,20]',NULL),
('Razer Leviathan V2 X',99.99,2,65,'[85,20]','Black'),
('Logitech G560',189.99,2.1,120,'[40,18]','Black'),
('Razer NOMMO PRO',499.99,2.1,NULL,'[35,20]','Black'),
('Logitech Z333',94.99,2.1,40,'[55,20]',NULL),
('Klipsch ProMedia 2.1',112,2.1,120,'[31,20]',NULL),
('Logitech Z623',169.99,2.1,200,'[35,20]',NULL),
('Audioengine A5+ Black',299,2,100,'[50,22]',NULL),
('Logitech Z213',47.89,2.1,7,'[65,20]',NULL),
('KEF LSXBL',1247.35,2,200,'[49,47]','Black'),
('Razer Leviathan V2',202.99,2.1,65,'[45,20]','Black'),
('Logitech Z207 (Black)',49.99,2,0.01,NULL,'Black'),
('Logitech S120',14.99,2,2.3,'[50,20]',NULL),
('Audioengine HD3_WHT',349,2,60,'[65,22]','White / Black'),
('Kanto TUK',799.99,2,260,'[50,20]','White / Black'),
('Edifier MR4',179.99,2,42,'[60,20]','White'),
('Audioengine A5+ Bamboo',469,2,100,'[50,22]',NULL),
('Logitech Z313',59.99,2.1,25,'[48,20]',NULL),
('Bose Companion 2 Series III',149,2,NULL,NULL,NULL),
('Creative Labs Pebble V2',24.99,2,8,'[100,17]','Black / Copper'),
('Kanto YU2MW',189.99,2,50,'[80,20]','White / Black'),
('Razer NOMMO CHROMA',149.99,2,NULL,'[20,20]','Black'),
('Lenovo M0520',11.68,2,2,'[90,20]',NULL),
('Razer Leviathan',195.32,5.1,60,'[180,20]',NULL),
('Logitech Z150',29.89,2,NULL,NULL,NULL),
('NZXT Relay',249.99,2,80,'[70,20]','White / Black'),
('Creative Labs Pebble V3',46.99,2,8,'[100,17]','Black / Copper'),
('Edifier S350DB',399.99,2.1,150,'[40,20]','Black / Brown'),
('PreSonus Eris E3.5 BT',129.99,2,50,'[80,20]','Black'),
('Kanto TUK',799.99,2,260,'[50,20]','Black'),
('Yamaha HS8',398.99,2,120,'[38,30]',NULL),
('Klipsch R_51PM',349.99,2,120,'[68,21]','Black'),
('Razer Leviathan V2 Pro',NULL,5.1,NULL,'[40,20]','Black'),
('Logitech Z625',199.99,2.1,200,NULL,NULL),
('Edifier R1280DB_Brown',149.99,2,42,'[55,20]','Brown / Black'),
('Logitech Z323',59.85,2.1,30,'[55,20]',NULL),
('Cyber Acoustics CA_2016WB',13.5,2,3,'[260,20]',NULL),
('SteelSeries Arena 9 US',549.99,5.1,NULL,'[35,20]','Black'),
('NZXT Relay',149.99,1,140,'[45,150]','Black'),
('Creative Labs Creative Stage V2',99.99,2.1,80,'[55,20]','Black'),
('Logitech Z533',142.63,2.1,60,'[55,20]',NULL),
('Edifier MR4',129.99,2,42,'[60,20]','Black'),
('Mackie CR5_XBT',199.99,2,80,'[50,20]','Green / Black'),
('Kanto YU2MB',189.99,2,50,'[80,20]','Black'),
('Edifier R980T',89.99,2,24,'[70,20]','Black'),
('Creative Labs Inspire T10',49.37,2,10,'[80,20]',NULL),
('AmazonBasics U213',21.09,2,2.2,'[103,20]','Black'),
('Audioengine A5+ White',299,2,100,'[50,22]',NULL),
('ADAM Audio T8V',295.82,1,180,'[33,25]','Black'),
('Logitech X_540',644.87,5.1,70,'[40,20]',NULL),
('Yamaha HS8 W',263.86,1,120,'[38,30]',NULL),
('Logitech Z120',26.04,2,NULL,NULL,NULL),
('Edifier R1700BT',179.99,2,66,'[60,20]','Black / Brown'),
('Creative Labs Sound Blaster Katana V2X',259.99,2.1,90,'[50,20]','Black'),
('Cyber Acoustics CA_3090',32.99,2.1,10,'[160,20]',NULL),
('Audioengine HD3_BLK',349,2,60,'[65,22]','Black'),
('Edifier R1280DB_Black',149.99,2,42,'[55,20]','Black'),
('Logitech Z207 (White)',NULL,2,0.01,NULL,'White'),
('NZXT Relay',249.99,2,80,'[70,20]','Black'),
('Creative Labs GigaWorks T20 Series II',67.98,2,28,'[50,20]',NULL),
('Creative Labs Sound Blaster Katana V2',NULL,2.1,126,'[50,20]',NULL),
('Razer Nommo',NULL,2,NULL,'[50,20]','Black'),
('Creative Labs Sound BlasterX Katana',179.99,2.1,NULL,NULL,NULL),
('Logitech Z506',NULL,5.1,155,'[45,20]',NULL),
('Yamaha HS5',NULL,1,70,'[54,30]',NULL),
('Yamaha NS_SP1800',NULL,5.1,550,'[28,50]',NULL),
('Cyber Acoustics CA_2014rb',14.99,2,4,'[85,18]',NULL),
('Corsair Gaming Audio Series SP2500',NULL,2.1,232,'[35,20]',NULL),
('PreSonus Eris E4.5',149.99,2,50,'[70,20]',NULL),
('Audioengine A2+W',NULL,2,60,'[65,22]',NULL),
('Trust Asto Soundbar',NULL,2,24,'[20,20]',NULL),
('Audioengine A2+B',NULL,2,60,'[65,22]',NULL),
('Micca MB42X',89.99,2,150,'[60,20]',NULL),
('Yamaha HS5 W',199.99,1,70,'[54,30]',NULL),
('SteelSeries Arena 9 EU',NULL,5.1,NULL,'[35,20]','Black'),
('Creative Labs GigaWorks T40 Series II',99.99,2,32,'[50,20]',NULL),
('Logitech S_150',14.99,2,1.2,'[90,20]',NULL),
('SteelSeries Arena 7 US',299.99,2.1,NULL,'[35,20]','Black'),
('Micca MB42',67.98,2,150,'[60,20]',NULL),
('Harman Kardon SoundSticks Wireless',399,2.1,40,'[44,20]',NULL),
('JBL LSR305',NULL,2,82,'[43,24]',NULL),
('Micca PB42X',139.94,2,30,'[60,20]','Black'),
('Edifier S880DB',380.49,2,20,'[55,20]','White / Brown'),
('Kanto YU2GB',NULL,2,50,'[80,20]','Black'),
('Creative Labs Creative Stage',79.98,2.1,80,'[55,20]','Black'),
('Gear Head SP2000URED',19.93,2,3,'[200,20]',NULL),
('Edifier S760D',NULL,5.1,540,'[42,20]','Black / Silver'),
('Mackie CR4_XBT',149.99,2,50,'[60,20]','Black / Green'),
('Cyber Acoustics CA_3602',79.98,2.1,30,'[50,20]',NULL),
('IK Multimedia IP_ILOUD_MM_IN',349.99,2,70,'[45,22]','Black'),
('Mackie CR3',NULL,2,50,'[80,20]',NULL),
('AmazonBasics V216US',30.2,2,4.6,'[68,20]','Black'),
('ADAM Audio A7X',NULL,1,300,'[42,50]','Black'),
('Yamaha HS7',349.99,2,95,'[43,30]',NULL),
('Logitech Z130',NULL,2,5,'[140,18]',NULL),
('Bose Companion 5',NULL,2.1,NULL,NULL,'Black / Gray'),
('Kanto YU2Bamboo',189.99,2,50,'[80,20]','Brown / Black'),
('Yamaha Yamaha NX_50 2.0 Speaker System _ 14 W RMS _ Black',109.95,2,14,'[55,20]','Black'),
('Audioengine HD3_CHR',600.98,2,60,'[65,22]','Red / Black'),
('Micca COVO_S',49.99,2,100,'[90,20]',NULL),
('Logitech Z_5500',NULL,5.1,505,'[33,20]',NULL),
('Bose Companion 20',NULL,2,NULL,NULL,NULL),
('Logitech Z337 w/BlueTooth',NULL,2.1,40,NULL,NULL),
('Altec Lansing VS4621',NULL,2.1,28,'[45,18]','Black'),
('M_Audio BX5 D3',149,1,100,'[52,35]','Black'),
('JBL C2PS',253,2,70,'[80,20]','Black'),
('KRK RP5 G2',NULL,2,90,'[52,20]',NULL),
('Edifier S550',NULL,5.1,280,'[20,20]',NULL),
('Mackie MR824',279.99,1,85,'[35,20]','Black'),
('SteelSeries Arena 3 US',129.99,2,NULL,'[50,20]','Black'),
('Behringer MS16',109,2,16,'[80,20]',NULL),
('Cyber Acoustics Curve Storm',59.99,2.1,22,NULL,NULL),
('Yamaha HS7 W',349.99,1,95,'[43,30]',NULL),
('Sony BSP10',64.95,1,20,NULL,NULL),
('Audioengine A2+R',429.99,2,60,'[65,22]',NULL),
('Genius SP_S110',NULL,2,1,'[200,20]',NULL),
('KRK RP6 G2',NULL,2,100,'[48,20]',NULL),
('Audioengine A2 (Black)',NULL,2,60,'[65,22]',NULL),
('Mackie MRS10',NULL,1,120,'[40,180]','Black'),
('Mackie MR624',229.99,1,65,'[38,20]','Black'),
('Pioneer DM_50D_BT',NULL,2,50,'[60,20]','White'),
('Creative Labs Inspire T6160',NULL,5.1,50,'[40,20]',NULL),
('Syba CL_SPK20069',NULL,2,3.4,'[280,16]',NULL),
('Insignia NS_PCS20',NULL,2,NULL,NULL,NULL),
('Logitech X_230',NULL,2.1,32,'[40,20]',NULL),
('Microlab FC 330',NULL,2.1,64,'[35,20]',NULL),
('Mackie MR524',179.99,1,50,'[45,20]','Black'),
('Edifier Luna Eclipse E25',NULL,2,74,'[30,20]','Black'),
('KEF LSXWH',NULL,2,200,'[49,47]','White / Black'),
('Logitech Z553',499.99,2.1,40,'[55,17]',NULL),
('Creative Labs T12',NULL,2,18,'[20,20]',NULL),
('Creative Labs A60',NULL,2,4,'[90,20]',NULL),
('Logitech LS21',NULL,2.1,7,'[40,20]',NULL),
('M_Audio BX5 D2',NULL,2,140,'[56,22]',NULL),
('Genius SW_G2.1',NULL,2.1,70,'[35,20]',NULL),
('Harman Kardon SoundSticks III',NULL,2.1,40,'[44,20]',NULL),
('Logitech Z150',NULL,2,NULL,NULL,NULL),
('Logitech X_530',NULL,5.1,70.1,'[40,20]',NULL),
('Creative Labs Inspire T6300',NULL,5.1,57,'[50,20]','Black'),
('Kanto YU2GW',NULL,2,50,'[80,20]','White / Black'),
('Edifier S2000 PRO',NULL,2,124,'[48,20]','Brown / Black'),
('Fluance Ai60 Lucky Bamboo',NULL,2,100,'[35,30]','White / White'),
('Fluance Ai60 White Walnut',NULL,2,100,'[35,30]','White / Brown'),
('Vanatoo Transparent Zero',NULL,2,96,'[52,20]','Black'),
('Mackie CR3_X',NULL,2,50,'[80,20]','White'),
('SteelSeries Arena 7 AU',NULL,2.1,NULL,'[35,20]','Black'),
('Cyber Acoustics CA_2014WB',NULL,2,1.5,'[85,18]',NULL),
('Gigabyte GP_S4600',NULL,2,1,'[230,20]',NULL),
('Logitech Z523',NULL,2.1,40,'[48,20]',NULL),
('M_Audio Studiophile AV30',NULL,2,20,'[90,20]',NULL),
('KRK RP8 G2',NULL,2,140,'[44,20]',NULL),
('KRK VXT 6',NULL,2,180,'[49,22]',NULL),
('Edifier R19U',NULL,2,4,'[150,20]',NULL),
('Creative Labs A250',NULL,2.1,9,'[40,20]',NULL),
('Pioneer SP_BS21_LR',NULL,2,80,'[65,20]',NULL),
('KEF LSXGRN',NULL,2,200,'[49,47]','Green / Black'),
('SteelSeries Arena 7 UK',NULL,2.1,NULL,'[35,20]','Black'),
('Pioneer DM_50D_BT',NULL,2,50,'[60,20]','Black'),
('Logitech Z407',110.99,2.1,40,'[40,20]','Black'),
('Fluance SX6_BK',149.99,2,100,'[50,20]',NULL),
('Logitech X_140',NULL,2,4,'[80,18]',NULL),
('Creative Labs A220',NULL,2.1,9,'[40,20]',NULL),
('Gigabyte GP_S2000',NULL,2,4,'[100,20]',NULL),
('Microlab SP_FC20BK',NULL,2.1,40,'[50,18]',NULL),
('Creative Labs GigaWorks T3',NULL,2.1,80,'[30,20]',NULL),
('Cyber Acoustics CA_2002',NULL,2,6,'[270,18]',NULL),
('Creative Labs Inspire T3300',NULL,2.1,27,'[40,20]',NULL),
('Creative Labs T50',NULL,2,40,'[50,20]',NULL),
('Mackie CR4',NULL,2,28,'[60,20]',NULL),
('Audioengine A5+N',NULL,2,50,'[50,22]',NULL),
('Creative Labs Inspire T3100',NULL,2.1,29,'[40,20]',NULL),
('Avermedia GS315',NULL,2.1,77,'[35,20]',NULL),
('Creative Labs A550',NULL,5.1,NULL,NULL,NULL),
('Creative Labs Sound BlasterX Kratos S3',NULL,2.1,NULL,NULL,NULL),
('Cyber Acoustics Curve Sonic',NULL,2,3,NULL,NULL),
('Altec Lansing VS3030',NULL,2,NULL,NULL,NULL),
('M_Audio BX5 D3 Crimson',NULL,1,100,'[52,35]','Black / Red'),
('Cyber Acoustics CA3550RB',NULL,2.1,68,'[22,20]',NULL),
('Genius SP_HF800A',NULL,2,20,'[80,20]',NULL),
('Genius 31730027102',NULL,2,30,'[50,20]',NULL),
('Microlab SP_FC20WH',NULL,2.1,40,'[50,18]',NULL),
('Cyber Acoustics CA3001RB',NULL,2.1,14,'[38,18]',NULL),
('Cyber Acoustics CA_2100WB',NULL,2,5.8,'[35,18]',NULL),
('Logitech LS11',NULL,2,3,'[70,20]',NULL),
('Logitech Z320',NULL,2,10,'[70,20]',NULL),
('M_Audio Studiophile AV20',NULL,2,10,'[120,20]',NULL),
('M_Audio BX8 D2',NULL,2,260,'[30,22]',NULL),
('Audioengine A2 (White)',NULL,2,30,'[65,22]',NULL),
('KRK VXT 8',NULL,2,360,'[37,22]',NULL),
('Lenovo M1730',NULL,2.1,12,'[20,20]',NULL),
('M_Audio AV32',NULL,2,20,'[80,20]',NULL),
('M_Audio AV42',NULL,2,40,'[75,20]',NULL),
('Logitech Z_2300',NULL,2.1,200,NULL,NULL),
('Creative Labs T3250',NULL,2.1,NULL,NULL,NULL),
('Klipsch Reference R_14PM',NULL,2,70,'[80,20]','Black / Brown'),
('Kanto YU2GT',NULL,2,50,'[80,20]','Blue / Black'),
('Kanto YU2GR',NULL,2,50,'[80,20]','Red / Black'),
('Kanto YU2MG',NULL,2,50,'[80,20]','Silver / Black'),
('Genius G2.1 2000',NULL,2.1,45,'[25,20]','Black / Blue'),
('Audioengine HD3_WAL',NULL,2,60,'[65,22]','Brown / Black'),
('Edifier S1000DB',NULL,2,120,'[48,20]','Brown / Black'),
('Fluance Ai60 Black Ash',NULL,2,100,'[35,30]','Black / Beige'),
('KEF LSXRED',NULL,2,200,'[49,47]','Red / Black'),
('Vanatoo Transparent One Encore',NULL,2,240,'[48,20]','Black / Brown'),
('SteelSeries Arena 3 AU',129.99,2,NULL,'[50,20]','Black'),
('SteelSeries Arena 3 EU',NULL,2,NULL,'[50,20]','Black'),
('SteelSeries Arena 3 UK',NULL,2,NULL,'[50,20]','Black'),
('Creative Labs Inspire T3130',NULL,2.1,25,'[40,20]',NULL),
('Cyber Acoustics CA3001WB',NULL,2.1,14,'[38,18]',NULL),
('Syba CL_SPK20097',NULL,2,6,'[150,20]',NULL),
('Genius SW_G2.1 1250',NULL,2.1,38,'[58,20]',NULL),
('Gear Head SP2000USLV',NULL,2,3,'[200,20]',NULL),
('Gear Head SP2000UBLU',NULL,2,3,'[200,20]',NULL),
('Syba CL_SPK20115',NULL,2,6,'[150,20]',NULL),
('Creative Labs Inspire S2',NULL,2.1,33,'[40,20]',NULL),
('Cyber Acoustics CA_2011WB',NULL,2,4,'[220,20]',NULL),
('Cyber Acoustics CA_2012RB',NULL,2,1.5,'[85,18]',NULL),
('Cyber Acoustics CA_5402',NULL,5.1,40,'[70,20]',NULL),
('M_Audio Studiophile AV40',NULL,2,40,'[85,20]',NULL),
('Genius SP_HF1800A',NULL,2,50,'[20,20]',NULL),
('Harman Kardon GLA_55',NULL,2,112,'[35,20]',NULL),
('Audioengine A5',NULL,2,100,'[50,22]',NULL),
('KRK VXT4',NULL,2,90,'[66,22]',NULL),
('Creative Labs T30',NULL,2,14,'[50,20]',NULL),
('Mackie MR5mk3',NULL,2,100,'[57,20]',NULL),
('Mackie MR6mk3',NULL,2,130,'[46,20]',NULL),
('Mackie MR8mk3',NULL,2,170,'[38,20]',NULL),
('JBL LSR4328P/PAK',NULL,2,140,'[50,20]',NULL),
('HiVi M10',NULL,2.1,NULL,'[100,20]',NULL),
('Rosewill SP_7260',NULL,2,NULL,'[60,20]',NULL),
('Creative Labs Sound BlasterX Kratos S5',NULL,2.1,NULL,NULL,NULL),
('Razer Ferox',NULL,2,6,'[150,20]',NULL),
('Genius SP_U115',NULL,2,NULL,'[200,18]',NULL),
('V7 SP2000_USB_1NC',NULL,2,1,NULL,NULL),
('Logitech S_220',NULL,2.1,17,'[85,15]','Black'),
('Avermedia GS315_DM',NULL,2.1,77,'[35,20]',NULL),
('Cyber Acoustics CA_2014RB_ML',NULL,2,4,NULL,NULL),
('Cyber Acoustics CA_2027',NULL,2,5,NULL,NULL),
('Altec Lansing BX1521',NULL,2.1,NULL,NULL,NULL),
('Altec Lansing BX1520',NULL,2,6,NULL,NULL),
('Swan Speakers M200MkIII',NULL,2,120,'[53,20]','Brown / Black'),
('Swan Speakers M50W',NULL,2.1,114,'[38,20]','Brown / Black'),
('M_Audio BX8 D3',NULL,1,150,'[37,22]','Black'),
('M_Audio BX8 CARBON',NULL,1,130,'[38,22]','Black / Silver'),
('M_Audio BX6 CARBON',NULL,1,100,'[45,22]','Black / Silver'),
('M_Audio M3_8 (black)',NULL,1,220,'[38,22]','Black'),
('JBL Pebbles',NULL,2,NULL,'[70,20]','Black / Red'),
('Fluance Ai60 Natural Walnut',NULL,2,100,'[35,30]','Black / Brown'),
('KEF LSXBLUE',NULL,2,200,'[49,47]','Blue / Black'),
('HiFiMAN X100',NULL,2.1,11,'[20,20]','Black'),
('Vanatoo Transparent One Encore',NULL,2,240,'[48,20]','Black'),
('SteelSeries Arena 3 SK',NULL,2,NULL,'[50,20]','Black'),
('SteelSeries Arena 7 EU',NULL,2.1,NULL,'[35,20]','Black'),
('SteelSeries Arena 7 JP',NULL,2.1,NULL,'[35,20]','Black'),
('SteelSeries Arena 9 JP',NULL,5.1,NULL,'[35,20]','Black')
ON CONFLICT (name)
DO NOTHING;



ALTER TABLE "speaker" ADD CONSTRAINT unique_speaker UNIQUE (name)
