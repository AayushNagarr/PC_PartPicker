CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL
    is_admin BOOLEAN NOT NULL DEFAULT FALSE;
);

ALTER TABLE users ADD CONSTRAINT unique_username UNIQUE (username)

CREATE USER 'guest' IDENTIFIED BY 'password';

-- Grant read-only privileges
GRANT SELECT ON pc.* TO 'guest';

-- Create read-write user
CREATE USER 'admin' IDENTIFIED BY '20030928';

-- Grant read and write privileges
GRANT SELECT, INSERT, UPDATE, DELETE ON pc.* TO 'user';
