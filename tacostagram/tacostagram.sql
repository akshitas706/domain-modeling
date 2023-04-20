DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;



CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_name INTEGER,
    real_name TEXT,
    location TEXT

);

CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    image_url TEXT,
    posted_at TEXT,
    user_id INTEGER
);
