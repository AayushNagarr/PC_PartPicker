CREATE TABLE IF NOT EXISTS "fan-controller" (
  "name" text PRIMARY KEY,
  "price" double precision NULL,
  "channels" bigint,
  "channel_wattage" double precision NULL,
  "pwm" boolean,
  "form_factor" text,
  "color" text NULL
);

INSERT INTO "fan-controller" VALUES
('NZXT Sentry Mix 2',199.95,6,30,TRUE,'5.25',NULL),
('Thermaltake Commander FT',57.96,5,10,TRUE,'5.25',NULL),
('Kingwin FPX-001',9.99,4,8,FALSE,'3.5',NULL),
('Thermaltake Commander F6 RGB',NULL,6,0.03,TRUE,'5.25','Black'),
('NZXT SENTRY 3',NULL,5,15,TRUE,'5.25',NULL),
('Thermaltake AC-001-BN1NAN-A1',NULL,5,8,TRUE,'5.25',NULL),
('Lamptron Fanatic',NULL,5,60,TRUE,'5.25',NULL),
('NZXT Sentry LX',NULL,5,6,FALSE,'[2,5.25]',NULL),
('Lamptron FC6',NULL,4,10,TRUE,'5.25',NULL),
('Deepcool ROCK MASTER V3.0',NULL,4,10,TRUE,'5.25',NULL),
('Lamptron FC2',NULL,6,45,TRUE,'5.25',NULL),
('NZXT Sentry 2',NULL,5,10,FALSE,'5.25',NULL),
('Aerocool F6XT',NULL,6,12,TRUE,'5.25',NULL),
('Kingwin FPX-003',NULL,4,8,FALSE,'5.25',NULL),
('NZXT Sentry Mesh',NULL,5,30,FALSE,'5.25',NULL),
('Gelid Solutions SpeedTouch6',NULL,6,30,TRUE,'5.25',NULL),
('Lamptron FC-FC5V3-BK',NULL,6,30,TRUE,'5.25',NULL),
('Aerocool Touch 2100',NULL,5,25,FALSE,'[2,5.25]',NULL),
('Kingwin FPX-005',NULL,5,8,TRUE,'5.25',NULL),
('Aerocool CoolTouch-R Black',NULL,4,20,TRUE,'5.25',NULL),
('Aerocool Touch-1000',NULL,4,NULL,FALSE,'5.25',NULL),
('BitFenix Recon (Black)',NULL,5,10,TRUE,'5.25',NULL),
('BitFenix Recon (White)',NULL,5,10,TRUE,'5.25',NULL),
('Lamptron FC-CF525-BK',NULL,5,60,TRUE,'5.25',NULL),
('Scythe Kaze Master Flat II',NULL,4,36,FALSE,'5.25','Black'),
('Aerocool Touch 2000',NULL,4,6,FALSE,'[2,5.25]',NULL),
('Aerocool V12XT',NULL,4,6,FALSE,'[2,5.25]',NULL),
('Lamptron FC9',NULL,4,50,TRUE,'5.25',NULL),
('Lamptron FC Touch',NULL,6,30,TRUE,'5.25',NULL),
('Lamptron FC-FC2-B',NULL,6,45,FALSE,'5.25',NULL),
('Lamptron FC-FC5V2-B',NULL,4,30,FALSE,'5.25',NULL),
('Lamptron FC-FANATIC-B',NULL,5,60,TRUE,'5.25',NULL),
('Aerocool Strike-X-X1000',NULL,5,25,FALSE,'5.25',NULL),
('Aerocool X-Vision',NULL,5,0.008,FALSE,'5.25','Black'),
('Lamptron CW611-B',NULL,6,36,FALSE,'5.25',NULL),
('Lamptron FC-CM615-BK',NULL,6,15,FALSE,'5.25',NULL),
('Silverstone FP59B',NULL,1,NULL,FALSE,'5.25','Black')
ON CONFLICT (name)
DO NOTHING;



ALTER TABLE "fan-controller" ADD CONSTRAINT unique_fan_controller UNIQUE (name)



