CREATE TABLE pc_parts (
  id SERIAL PRIMARY KEY,
  part_name VARCHAR(255) NOT NULL,
  original_table VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2)
);



INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'case_accessory' AS original_table, price FROM case_accessory;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'case_fan' AS original_table, price FROM case_fan;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'cases' AS original_table, price FROM cases;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'cpu_cooler' AS original_table, price FROM cpu_cooler;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'cpu' AS original_table, price FROM cpu;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'external_hard_drive' AS original_table, price FROM external_hard_drive;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'fan_controller' AS original_table, price FROM fan_controller;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'headphones' AS original_table, price FROM headphones;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'internal_hard_drive' AS original_table, price FROM internal_hard_drive;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'keyboard' AS original_table, price FROM keyboard;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'memory' AS original_table, price FROM memory;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'monitor' AS original_table, price FROM monitor;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'motherboard' AS original_table, price FROM motherboard;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'mouse' AS original_table, price FROM mouse;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'os' AS original_table, price FROM os;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'power_supply' AS original_table, price FROM power_supply;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'sound_card' AS original_table, price FROM sound_card;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'speaker' AS original_table, price FROM speaker;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'thermal_paste' AS original_table, price FROM thermal_paste;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'ups' AS original_table, price FROM ups;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'video_card' AS original_table, price FROM video_card;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'webcam' AS original_table, price FROM webcam;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'wired_network_card' AS original_table, price FROM wired_network_card;

INSERT INTO pc_parts (part_name, original_table, price)
SELECT name, 'wireless_network_card' AS original_table, price FROM wireless_network_card;


DO $$ 
DECLARE 
  tables TEXT[] := ARRAY['case_accessory', 'case_fan', 'cases', 'cpu_cooler', 'cpu', 'external_hard_drive', 'fan_controller', 'headphones', 'internal_hard_drive', 'keyboard', 'memory', 'monitor', 'motherboard', 'mouse', 'os', 'power_supply', 'sound_card', 'speaker', 'thermal_paste', 'ups', 'video_card', 'webcam', 'wired_network_card', 'wireless_network_card'];
  tableName TEXT;
BEGIN
  -- Iterate over each table and apply the queries
  FOREACH tableName IN ARRAY tables
  LOOP
    -- Add the 'id' column to the table
    EXECUTE 'ALTER TABLE ' || tableName || ' ADD COLUMN id INT;';

    -- Update the 'id' column based on the matching 'name' values
    EXECUTE 'UPDATE ' || tableName || '
              SET id = pc_parts.id
              FROM pc_parts
              WHERE ' || tableName || '.name = pc_parts.part_name;';

    -- Add the foreign key constraint in each table with ON DELETE CASCADE and ON UPDATE CASCADE
    EXECUTE 'ALTER TABLE ' || tableName || ' ADD CONSTRAINT fk_' || tableName || '_id 
              FOREIGN KEY (id) 
              REFERENCES pc_parts(id)
              ON DELETE CASCADE
              ON UPDATE CASCADE;';

    -- Drop the 'name' and 'price' columns from the table
    EXECUTE 'ALTER TABLE ' || tableName || ' DROP COLUMN IF EXISTS name, DROP COLUMN IF EXISTS price;';

    -- Make the 'id' column the primary key
    EXECUTE 'ALTER TABLE ' || tableName || ' ADD PRIMARY KEY (id);';
  END LOOP;
END $$;
