DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS caterories;
DROP TABLE IF EXISTS memories;


CREATE TABLE users(
    id TEXT PRIMARY KEY,
    u_name TEXT NOT NULL,
    u_password TEXT NOT NULL
);

CREATE TABLE caterories(
    id TEXT PRIMARY KEY,
    c_name TEXT NOT NULL
);

CREATE TABLE books(
    id TEXT PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    category_id TEXT NOT NULL,
    publish TEXT NOT NULL,
    p_date TIMESTAMP
);

CREATE TABLE memories(
    id TEXT PRIMARY KEY,
    book_id TEXT NOT NULL,
    s_date TIMESTAMP,
    e_date TIMESTAMP, 
    memory TEXT,
    FOREIGN KEY(book_id) REFERENCES books (id)
);

