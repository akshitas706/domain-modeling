-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS industry_memberships;



-- CREATE TABLES
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number INTEGER,
    company_id  INTEGER
);

CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    company_id INTEGER
);

CREATE TABLE salespeople (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    salesperson_id INTEGER,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    notes TEXT,
    created_at TEXT,
    salesperson_id INTEGER,
    contact_id INTEGER
);

CREATE TABLE industries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    industry_id INTEGER
);

-- industry and companies have many to many relationships
-- an industry will have multiple companies
-- a company can belong to multiple industries
-- this new table will create a many to one relationship that we need in sql

CREATE TABLE industry_memberships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    industry_id INTEGER 
);