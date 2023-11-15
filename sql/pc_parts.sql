CREATE TABLE pc_parts (
  part_name VARCHAR(255) NOT NULL,
  original_table VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (part_name, original_table)
)



INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'case_accessory' AS original_table, price FROM case_accessory
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'case_fan' AS original_table, price FROM case_fan
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'case' AS original_table, price FROM case_table
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'cpu_cooler' AS original_table, price FROM cpu_cooler
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'cpu' AS original_table, price FROM cpu
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'external_hard_drive' AS original_table, price FROM external_hard_drive
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'fan_controller' AS original_table, price FROM fan_controller
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'headphones' AS original_table, price FROM headphones
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'internal_hard_drive' AS original_table, price FROM internal_hard_drive
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'keyboard' AS original_table, price FROM keyboard
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'memory' AS original_table, price FROM memory
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'monitor' AS original_table, price FROM monitor
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'motherboard' AS original_table, price FROM motherboard
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'mouse' AS original_table, price FROM mouse
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'os' AS original_table, price FROM os
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'power_supply' AS original_table, price FROM power_supply
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'sound_card' AS original_table, price FROM sound_card
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'speaker' AS original_table, price FROM speaker
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'thermal_paste' AS original_table, price FROM thermal_paste
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'ups' AS original_table, price FROM ups
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'video_card' AS original_table, price FROM video_card
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'webcam' AS original_table, price FROM webcam
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'wired_network_card' AS original_table, price FROM wired_network_card
ON CONFLICT (name) DO NOTHING;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'wireless_network_card' AS original_table, price FROM wireless_network_card
ON CONFLICT (name) DO NOTHING;
