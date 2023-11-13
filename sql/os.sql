CREATE TABLE IF NOT EXISTS "os" (
  "name" text,
  "price" double precision NULL,
  "mode" text,
  "max_memory" bigint
);

INSERT INTO "os" VALUES
('Microsoft Windows 11 Home (64-bit)',117.98,'64',128),
('Microsoft Windows 10 Home (64-bit)',NULL,'64',128),
('Microsoft Windows 11 Pro (64-bit)',144.99,'64',2048),
('Microsoft Windows 10 Pro (64-bit)',129.55,'64',2048),
('Microsoft Windows 11 Home (64-bit)',129.98,'64',128),
('Microsoft Windows 11 Pro (64-bit)',199,'64',2048),
('Microsoft Windows 11 Home (64-bit)',138.98,'64',128),
('Microsoft Windows 11 Pro (64-bit)',198.99,'64',2048),
('Microsoft Windows 10 Pro (32/64-bit)',209.99,'[32,64]',2048),
('Microsoft Windows 10 Home (64-bit)',NULL,'64',128),
('Microsoft Windows 10 Pro (64-bit)',NULL,'64',2048),
('Microsoft Windows 10 Pro (32-bit)',NULL,'32',4),
('Microsoft Windows 10 Home (64-bit)',NULL,'64',128),
('Microsoft Windows 10 Pro (32/64-bit)',NULL,'[32,64]',2048),
('Microsoft Windows 10 Home (32/64-bit)',NULL,'[32,64]',128),
('Microsoft Windows 10 Pro (32/64-bit)',NULL,'[32,64]',2048),
('Microsoft Windows 7 Professional (32/64-bit)',254.16,'[32,64]',192),
('Microsoft Windows 10 Pro (32/64-bit)',NULL,'[32,64]',2048),
('Microsoft Windows 10 Home (32/64-bit)',NULL,'[32,64]',128),
('Microsoft Windows 10 Home (32/64-bit)',NULL,'[32,64]',128),
('Microsoft Windows 10 Home (32/64-bit)',NULL,'[32,64]',128),
('Microsoft Windows 10 Home (32-bit)',NULL,'32',4),
('Microsoft Windows 7 Ultimate SP1 (64-bit)',NULL,'64',192),
('Microsoft Windows 8.1 (64-bit)',NULL,'64',128),
('Microsoft Windows 7 Home Premium (32/64-bit)',NULL,'[32,64]',16),
('Microsoft Windows 8.1 (32/64-bit)',NULL,'[32,64]',128),
('Microsoft Windows 7 Home Premium SP1 (32-bit)',NULL,'32',4),
('Microsoft Windows 7 Professional SP1 (64-bit)',NULL,'64',192),
('Microsoft Windows 7 Home Premium SP1 (64-bit)',NULL,'64',16),
('Microsoft Windows 7 Professional SP1 (32-bit)',NULL,'32',4),
('Microsoft Windows 8.1 Pro (64-bit)',173.01,'64',512),
('Microsoft Windows 8.1 Pro DE (64-bit)',NULL,'64',512),
('Microsoft Windows 8 (32-bit)',NULL,'32',4),
('Microsoft Windows 7 Home Premium SP1 (32-bit)',NULL,'32',4),
('Microsoft Windows 8 (64-bit)',NULL,'64',128),
('Microsoft Windows 7 Home Premium SP1 (64-bit)',NULL,'64',16),
('Microsoft Windows 7 Ultimate (32/64-bit)',NULL,'[32,64]',192),
('Microsoft Windows 7 Ultimate SP1 (32-bit)',NULL,'32',4),
('Microsoft Windows 7 Ultimate (64-bit)',NULL,'64',192),
('Microsoft Windows 7 Professional SP1 (32-bit)',NULL,'32',4),
('Microsoft Windows 7 Ultimate SP1 (64-bit)',NULL,'64',192),
('Microsoft Windows 7 Pro SP1 DE (64-bit)',NULL,'64',192),
('Microsoft Windows 7 Professional SP1 (32-bit)',NULL,'32',4),
('Microsoft Windows 7 Pro SP1 DE (64-bit)',NULL,'64',192),
('Microsoft Windows 7 Home Premium SP1 (64-bit)',NULL,'64',16),
('Microsoft Windows 7 Professional SP1 (64-bit)',NULL,'64',192),
('Microsoft Windows 7 Ultimate SP1 (32-bit)',NULL,'32',4),
('Microsoft Windows 8 (64-bit)',NULL,'64',128),
('Microsoft Windows 8 Pro (64-bit)',NULL,'64',512),
('Microsoft Windows 8 Pro (32-bit)',NULL,'32',4),
('Microsoft Windows 8 (32-bit)',NULL,'32',4),
('Microsoft Windows 8 Pro (64-bit)',NULL,'64',512),
('Microsoft Windows 8.1 (64-bit)',NULL,'64',128),
('Microsoft Windows 8.1 DE (64-bit)',NULL,'64',128),
('Microsoft Windows 8.1 Pro (64-bit)',NULL,'64',512),
('Microsoft Windows 8.1 Pro (32-bit)',NULL,'32',4),
('Microsoft Windows 8.1 Pro (32-bit)',NULL,'32',4),
('Microsoft Windows 8.1 Pro (32/64-bit)',NULL,'[32,64]',512),
('Microsoft Windows 8.1 (32-bit)',NULL,'32',4),
('Microsoft Windows 8 Pro DE (64-bit)',NULL,'64',512),
('Microsoft Windows 8 Pro (32-bit)',NULL,'32',4),
('Microsoft Windows 8.1 (32-bit)',NULL,'32',4);