CREATE TABLE IF NOT EXISTS "case_accessory"  (
  "name" text PRIMARY KEY,
  "price" text NULL,
  "type" text,
  "form_factor" double precision
);

INSERT INTO "case_accessory" VALUES
('NZXT HUE 2 RGB Lighting Kit',NULL,'LED Controller',2.5),
('NZXT Hue+',NULL,'LED Controller',2.5),
('Vantec UGT_CR935','24.99','Card Reader',3.5),
('NZXT Hue','29.95','LED Controller',5.25),
('NZXT Aperture M',NULL,'Card Reader',5.25),
('nMEDIAPC ZE_C668',NULL,'Card Reader',5.25),
('nMEDIAPC ZE_C288',NULL,'Card Reader',5.25),
('Unitech U3903',NULL,'Card Reader',5.25)
ON CONFLICT (name)
DO NOTHING;


ALTER TABLE "case_accessory" ADD CONSTRAINT unique_case_accessory UNIQUE (name)
