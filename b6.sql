CREATE DATABASE LibraryDB;

\c LibraryDB;

CREATE SCHEMA library;

CREATE TABLE Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    published_year INT,
    available BOOLEAN DEFAULT TRUE
);

CREATE TABLE Members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    join_date DATE DEFAULT CURRENT_DATE
);
