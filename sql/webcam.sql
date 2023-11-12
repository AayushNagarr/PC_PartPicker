CREATE TABLE IF NOT EXISTS "webcam" (
  "name" text,
  "price" double precision NULL,
  "resolutions" json,
  "connection" text,
  "focus_type" text NULL,
  "os" json,
  "fov" double precision NULL
);

INSERT INTO "video-card" VALUES
('Logitech BRIO Ultra HD Pro',126.74,'["4k","1080p","720p"]','USB 3.2 Gen 1 Type-A','Auto','["Windows","OS X","ChromeOS"]',82),
('Insta360 Insta360 Link',299.99,'["4k","1080p","720p"]','USB 2.0 Type-C','Auto','["Windows","OS X"]',79.5),
('Razer Kiyo Pro Ultra',NULL,'["4k","2k","1080p","720p"]','USB 3.2 Gen 1 Type-A','Auto','["Windows"]',82),
('Logitech C920 HD Pro',59.89,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X","ChromeOS","Android"]',78),
('Anker PowerConf C200',47.99,'["2k","1080p","720p"]','USB 3.2 Gen 1 Type-C','Auto','["Windows","OS X"]',95),
('Logitech C270',24.99,'["720p"]','USB 2.0 Type-A','Fixed','["Windows","OS X","ChromeOS","Android"]',60),
('Logitech C922 Pro Stream HD',84.99,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X","ChromeOS","Android"]',78),
('Razer Kiyo',49.76,'["1080p","720p","480p"]','USB 2.0 Type-A','Auto','["Windows"]',81.6),
('Logitech C920s HD Pro',44.99,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X","ChromeOS","Android"]',78),
('Elgato Facecam Premium',149.99,'["1080p","720p"]','USB 3.2 Gen 1 Type-A','Manual','["Windows","OS X"]',82),
('Green Extreme T200',14.99,'["1080p","720p","480p"]','USB 2.0 Type-A','Auto','["Windows","OS X","Android"]',65),
('Razer Kiyo Pro',94.99,'["1080p","720p","480p"]','USB 3.2 Gen 1 Type-A','Auto','["Windows"]',103),
('Elgato Facecam Pro',NULL,'["4k","1080p","720p"]','USB 3.2 Gen 1 Type-C','Auto','["Windows","OS X"]',90),
('Anker B600 Video Bar',199.99,'["2k","1080p","720p"]','USB 3.2 Gen 1 Type-C','Auto','["Windows","OS X"]',95),
('Logitech C925e',70,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X","Linux"]',78),
('Logitech StreamCam',139.99,'["1080p","720p"]','USB 3.2 Gen 1 Type-C','Auto','["Windows","OS X"]',78),
('aoni A31',14.95,'["1080p","720p","480p"]','USB 2.0 Type-A','Auto','["Windows","OS X","Linux","ChromeOS","Android"]',84),
('Avermedia PW513',100.99,'["4k","1080p"]','USB 3.2 Gen 1 Type-C','Fixed','["Windows","OS X"]',94),
('Wansview 106JD',14.39,'["1080p"]','USB 2.0 Type-A','Auto','["Windows","OS X","Android"]',60),
('Logitech StreamCam',107.32,'["1080p","720p"]','USB 3.2 Gen 1 Type-C','Auto','["Windows","OS X"]',78),
('Adesso Cybertrack H4',29.95,'["1080p"]','USB 2.0 Type-A','Manual','["Windows","OS X"]',78),
('Asus Webcam C3',47.99,'["1080p"]','USB 2.0 Type-A',NULL,'["Windows","OS X","ChromeOS"]',NULL),
('Adesso Cybertrack H6',61.05,'["4k"]','USB 2.0 Type-A','Fixed','["Windows","OS X"]',80),
('Logitech C615 Portable',64.99,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X","ChromeOS","Android"]',78),
('Logitech StreamCam Plus',69.98,'["1080p","720p","480p"]','USB 3.2 Gen 1 Type-C','Auto','["Windows","OS X"]',NULL),
('Razer Kiyo X',49.95,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows"]',82),
('Adesso Cybertrack H2',19.99,'["480p"]','USB 2.0 Type-A','Fixed','["Windows","OS X"]',62),
('Logitech C910',135,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X"]',78),
('Adesso CyberTrack H3',27,'["720p"]','USB 2.0 Type-A','Manual','["Windows","OS X"]',NULL),
('Anker PowerConf C302',149.99,'["2k","1080p","720p"]','USB 3.2 Gen 1 Type-C','Auto','["Windows","OS X"]',115),
('Creative Labs Live! Cam Sync HD',30,'["720p"]','USB 2.0 Type-A','Fixed','["Windows","OS X"]',NULL),
('Avermedia Live Streamer CAM 313',47.69,'["1080p"]','USB 2.0 Type-A','Fixed','["Windows","OS X"]',NULL),
('Wansview 101JD',23.99,'["1080p"]','USB 2.0 Type-A',NULL,'["Windows","OS X","Android"]',90),
('Logitech C525',59.99,'["720p"]','USB 2.0 Type-A','Auto','["Windows","OS X","ChromeOS","Android"]',69),
('AUKEY PC-LM1',NULL,'["1080p","720p","480p"]','USB 2.0 Type-A','Manual','["Windows","OS X","Android"]',55),
('Logitech C505',48.99,'["720p"]','USB 2.0 Type-A','Fixed','["Windows","OS X","ChromeOS"]',60),
('Logitech C930e',90.28,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X","ChromeOS"]',90),
('Microsoft LifeCam HD-3000',26.99,'["720p"]','USB 2.0 Type-A','Fixed','["Windows","OS X"]',NULL),
('Adesso Cybertrack H5',49.08,'["1080p"]','USB 2.0 Type-A','Auto','["Windows","OS X"]',80),
('Creative Labs Live! Cam Sync 1080p',79,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X"]',77),
('Asus ROG EYE',NULL,'["1080p"]','USB 2.0 Type-A','Auto','["Windows","OS X"]',NULL),
('Logitech C310',34.99,'["720p"]','USB 2.0 Type-A','Fixed','["Windows","OS X","ChromeOS","Android"]',60),
('VDO360 2SEE',99.99,'["1080p","720p"]','USB 2.0 Type-A',NULL,'["Windows","OS X","Linux","Android"]',75),
('Logitech B525',54.99,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X"]',69),
('Avermedia 4K UHD Webcam 510',NULL,'["4k","1080p","720p","480p"]','USB 3.2 Gen 1 Type-C',NULL,'["Windows"]',85),
('Anker PowerConf C300',99.99,'["1080p","720p"]','USB 3.2 Gen 1 Type-C','Auto','["Windows","OS X"]',115),
('Green Extreme T1000',59,'["1080p"]','USB 2.0 Type-A','Auto','["Windows","OS X"]',120),
('Avermedia PW310P',49.99,'["1080p"]','USB 2.0 Type-A','Auto','["Windows","OS X","ChromeOS"]',73),
('Avermedia PW315',84.99,'["1080p"]','USB 2.0 Type-A','Fixed','["Windows","OS X","ChromeOS"]',95.8),
('Microsoft LifeCam Studio',74.98,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X"]',75),
('Green Extreme T300',NULL,'["1080p","720p","480p"]','USB 2.0 Type-A','Auto','["Windows","OS X","Android"]',94),
('Microsoft LifeCam HD-3000 L2',31.99,'["720p"]','USB 2.0 Type-A','Fixed','["Windows","OS X"]',NULL),
('Logitech C505e',40.15,'["720p"]','USB 2.0 Type-A','Fixed','["Windows","OS X","ChromeOS"]',60),
('Microsoft LifeCam CinemaaFor Business',77.2,'["720p"]','USB 2.0 Type-A','Auto','["Windows","OS X"]',NULL),
('Microsoft Lifecam Cinema',71.94,'["720p"]','USB 2.0 Type-A','Auto','["Windows"]',73),
('Wansview 105JD',NULL,'["1080p"]','USB 2.0 Type-A','Manual','["Windows","OS X","Android"]',90),
('Microsoft LifeCam Studio for Business',69.95,'["1080p","720p"]','USB 2.0 Type-A','Auto','["Windows","OS X"]',75),
('Creative Labs BlasterX Senz3D',NULL,'["1080p","720p"]','USB 3.2 Gen 1 Type-A','Auto','["Windows"]',77),
('Green Extreme T200 + Live Streaming Bundle',NULL,'["1080p"]','USB 2.0 Type-A','Auto','["Windows","OS X","Android"]',NULL),
('Avermedia HD Webcam 310',NULL,'["1080p","720p","480p"]','USB 2.0 Type-A','Auto','["Windows","OS X","Android"]',NULL),
('Adesso Cybertrack H4P',NULL,'["1080p"]','USB 2.0 Type-A','Manual','["Windows","OS X"]',78),
('Wansview 102JD',NULL,'["1080p"]','USB 2.0 Type-A',NULL,'["Windows","OS X","Android"]',90);
