CREATE TABLE IF NOT EXISTS "sound_card" (
  "name" text PRIMARY KEY,
  "price" double precision NULL,
  "channels" double precision,
  "digital_audio" bigint NULL,
  "snr" bigint NULL,
  "sample_rate" double precision NULL,
  "chipset" text NULL,
  "interface" text
);

INSERT INTO "sound_card" VALUES
('Creative Labs Sound Blaster AE_9',332.49,7.1,32,129,384,'Sound Core3D','PCIe x1'),
('Creative Labs Sound BlasterX AE_5 Plus',129.99,5.1,32,122,384,'Sound Core3D','PCIe x1'),
('Creative Labs Sound Blaster Audigy Rx',59.99,7.1,24,106,192,'Creative E_MU','PCIe x1'),
('Asus Xonar SE',39.99,5.1,24,120,192,NULL,'PCIe x1'),
('Creative Labs Sound Blaster Z SE',99.99,5.1,24,116,192,'Sound Core3D','PCIe x1'),
('Creative Labs Sound Blaster AE_7',186.56,5.1,32,127,384,'Sound Core3D','PCIe x1'),
('EVGA NU',606,5.1,24,123,192,NULL,'PCIe x1'),
('Asus Xonar Phoebus',132.13,7.1,24,118,96,'C_Media CMI8888DHT','PCIe x1'),
('Creative Labs Sound Blaster Zx',219,5.1,24,116,192,NULL,'PCIe x1'),
('Asus Xonar Essence STX',NULL,7.1,24,124,192,'ASUS AV100','PCIe x1'),
('Creative Labs 70SB157000000',42.74,5.1,NULL,106,NULL,NULL,'PCIe x1'),
('Asus STRIX RAID DLX',211.99,7.1,24,124,192,NULL,'PCIe x1'),
('Asus STRIX SOAR',99,7.1,24,116,192,NULL,'PCIe x1'),
('Asus Xonar AE',67.98,7.1,24,110,192,NULL,'PCIe x1'),
('Creative Labs Sound Blaster Audigy Fx V2',56.99,5.1,24,120,192,NULL,'PCIe x1'),
('Creative Labs Sound BlasterX AE_5 Plus Pure',NULL,5.1,32,122,384,'Sound Core3D','PCIe x1'),
('Creative Labs Sound BlasterX AE_5',219.99,5.1,32,122,384,'Sound Core3D','PCIe x1'),
('Creative Labs Sound Blaster Audigy Fx',115.32,5.1,24,106,192,NULL,'PCIe x1'),
('Asus STRIX RAID PRO',149.99,7.1,24,116,192,NULL,'PCIe x1'),
('Asus Essence STX II 7.1',NULL,7.1,24,124,192,'ASUS AV100','PCIe x1'),
('Creative Labs Sound Blaster Z w/Shield',NULL,5.1,24,116,192,'Sound Core3D','PCIe x1'),
('Asus Xonar DGX',NULL,5.1,24,105,96,'C_Media CMI8786','PCIe x1'),
('Creative Labs Sound Blaster X_Fi Titanium HD',NULL,7.1,24,122,96,'X_Fi','PCIe x1'),
('Creative Labs Sound Blaster Z',NULL,5.1,24,116,192,NULL,'PCIe x1'),
('Asus Essence STX II',NULL,2,24,124,192,'ASUS AV100','PCIe x1'),
('Encore ENM232_6VIA',37.95,5.1,24,NULL,96,'VIA VT1723','PCI'),
('Creative Labs ZXR',NULL,5.1,24,124,192,NULL,'PCIe x1'),
('EVGA NU AUDIO PRO',NULL,2,32,123,384,NULL,'PCIe x1'),
('Asus Xonar DX',NULL,7.1,24,116,192,'ASUS AV100','PCIe x1'),
('Creative Labs Sound BlasterX AE_5 Pure',NULL,5.1,32,122,384,'Sound Core3D','PCIe x1'),
('Asus Xonar DG',NULL,5.1,24,105,96,'C_Media CMI8786','PCI'),
('Creative Labs Recon3D Fatal1ty Professional',NULL,5.1,24,102,96,'Sound Core3D','PCIe x1'),
('HT Omega CLARO II',184.99,7.1,24,120,192,'C_Media CMI8788','PCI'),
('Asus Xonar DSX',NULL,7.1,24,107,192,'ASUS AV66','PCIe x1'),
('HT Omega eClaro',NULL,7.1,24,NULL,192,'C_Media CMI8788','PCIe x1'),
('Diamond XtremeSound XS51',NULL,5.1,16,NULL,48,NULL,'PCI'),
('Creative Labs 70SB135A00002',NULL,5.1,24,102,96,'Sound Core3D','PCIe x1'),
('Creative Labs Sound Blaster Audigy2 ZS',NULL,5.1,24,NULL,192,'Audigy2','PCI'),
('Creative Labs Sound Blaster X_Fi',NULL,7.1,24,109,192,NULL,'PCI'),
('Creative Labs SB X_Fi Xtreme Audio',NULL,7.1,24,100,96,NULL,'PCIe x1'),
('Creative Labs Sound Blaster X_Fi Xtreme Audio',NULL,7.1,24,100,96,NULL,'PCIe x1'),
('Creative Labs Recon3D Fatal1ty Champion',NULL,5.1,24,102,96,'Sound Core3D','PCIe x1'),
('Creative Labs Sound Blaster Z OEM',NULL,5.1,24,116,192,NULL,'PCIe x1'),
('Syba SD_PEX63034',NULL,7.1,24,NULL,48,NULL,'PCIe x1'),
('Creative Labs Recon3D PCIe',NULL,5.1,24,102,96,'Sound Core3D','PCIe x1'),
('SIIG IC_510111_S2',NULL,5.1,24,90,96,'VIA VT1723','PCIe x1'),
('SIIG DP SoundWave',NULL,5.1,24,NULL,NULL,NULL,'PCIe x1'),
('PowerColor DEVIL HDX 7.1',NULL,7.1,NULL,124,192,NULL,'PCIe x1'),
('Creative Labs Sound Blaster Audigy Rx OEM',NULL,7.1,24,106,192,'Creative E_MU','PCIe x1'),
('Rosewill RC_703',NULL,7.1,NULL,NULL,44.1,NULL,'PCIe x1'),
('Creative Labs Sound Blaster X_Fi Xtreme Audio',NULL,7.1,24,108,96,NULL,'PCI'),
('Diamond XtremeSound XS71',NULL,7.1,16,NULL,96,NULL,'PCI'),
('M_Audio Audiophile 192',NULL,4,24,NULL,192,NULL,'PCI'),
('Creative Labs Sound Blaster Audigy SE OEM',NULL,7.1,24,100,96,NULL,'PCI'),
('M_Audio US41500C',NULL,2,24,104,96,NULL,'PCI'),
('HT Omega FENIX',NULL,7.1,24,NULL,192,NULL,'PCIe x1'),
('Creative Labs Sound Blaster Audigy SE',NULL,7.1,24,NULL,96,'Audigy SE','PCI'),
('PPA International 1431v',NULL,5.1,16,NULL,NULL,NULL,'PCI'),
('HT Omega STRIKER',NULL,7.1,NULL,NULL,NULL,'C_Media CMI8770','PCI'),
('Vantec UGT_S100',NULL,7.1,NULL,NULL,48,NULL,'PCI'),
('Rosewill RC_701',NULL,5.1,NULL,NULL,NULL,'C_Media CMI8738','PCI'),
('Asus Xonar D1',NULL,7.1,24,116,192,'ASUS AV100','PCI'),
('StarTech PCISOUND5CH',NULL,5.1,24,NULL,48,'C_Media CMI8738','PCI'),
('StarTech PCISOUND4CH',NULL,4,16,NULL,48,'C_Media CMI8738','PCI'),
('Asus Xonar Essence',NULL,7.1,24,124,192,'ASUS AV100','PCI'),
('HT Omega Claro Halo XT',NULL,7.1,24,NULL,192,'C_Media CMI8788','PCI'),
('Encore ENM232_8VIA',NULL,7.1,24,NULL,96,'VIA VT1723','PCI'),
('HT Omega Claro Halo',NULL,5.1,24,NULL,192,'C_Media CMI8788','PCI'),
('Asus Xonar DS',NULL,7.1,24,107,192,'ASUS AV200','PCI'),
('Rosewill RC_702',NULL,7.1,16,NULL,96,'C_Media CMI8768','PCI'),
('StarTech PCISOUND4LP',NULL,4,16,NULL,48,'C_Media CMI8738','PCI'),
('Asus Xonar DS',NULL,7.1,24,107,192,'ASUS AV200','PCI'),
('Asus Xonar Essence ST',NULL,7.1,24,124,192,'ASUS AV100','PCI'),
('SIIG LP_000022_S2',NULL,5.1,24,90,96,'VIA VT1723','PCI'),
('Turtle Beach TBS_3429',NULL,5.1,24,NULL,48,NULL,'PCI'),
('SIIG IC_510012_S2',NULL,5.1,16,68,NULL,NULL,'PCI'),
('SIIG IC_710012_S2',NULL,7.1,24,92,96,NULL,'PCI');



ALTER TABLE "sound_card" ADD CONSTRAINT unique_name UNIQUE (name)