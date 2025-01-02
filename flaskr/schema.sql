DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS caterories;
DROP TABLE IF EXISTS memories;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS books;


CREATE TABLE users(
    id TEXT PRIMARY KEY,
    u_name TEXT NOT NULL,
    u_password TEXT NOT NULL
);

CREATE TABLE caterories(
    id TEXT PRIMARY KEY,
    c_name TEXT NOT NULL,
    user_id TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE books(
    id TEXT PRIMARY KEY,
    title TEXT NOT NULL,
    author_id TEXT NOT NULL,
    category_id TEXT NOT NULL,
    memory_id TEXT NOT NULL,
    user_id TEXT NOT NULL,
    publish TEXT NOT NULL,
    publish_date TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES users (id)
    FOREIGN KEY(author_id) REFERENCES authors (id)
    FOREIGN KEY(category_id) REFERENCES categories (id)
);

CREATE TABLE memories(
    id TEXT PRIMARY KEY,
    s_date TIMESTAMP,
    e_date TIMESTAMP, 
    memory TEXT
);

CREATE TABLE authors(
    id TEXT PRIMARY KEY,
    a_name TEXT NOT NULL,
    user_id TEXT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users (id)
)

