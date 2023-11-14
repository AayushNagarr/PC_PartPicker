CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL
);

ALTER TABLE users ADD CONSTRAINT unique_username UNIQUE (username)