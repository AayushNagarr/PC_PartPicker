CREATE TABLE IF NOT EXISTS "case-accessory"  (
  "name" text,
  "price" text NULL,
  "type" text,
  "form_factor" double precision
);

INSERT INTO "case-accessory" VALUES
('NZXT HUE 2 RGB Lighting Kit',NULL,'LED Controller',2.5),
('NZXT Hue+',NULL,'LED Controller',2.5),
('Vantec UGT-CR935','24.99','Card Reader',3.5),
('NZXT Hue','29.95','LED Controller',5.25),
('NZXT Aperture M',NULL,'Card Reader',5.25),
('nMEDIAPC ZE-C668',NULL,'Card Reader',5.25),
('nMEDIAPC ZE-C288',NULL,'Card Reader',5.25),
('Unitech U3903',NULL,'Card Reader',5.25);
