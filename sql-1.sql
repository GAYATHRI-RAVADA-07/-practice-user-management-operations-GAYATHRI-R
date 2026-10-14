-- Create database
CREATE DATABASE my_first_db;

-- Create users table
CREATE TABLE users (
                   id INT PRIMARY KEY AUTO_INCREMENT,
                   username VARCHAR(45),
                   firstName VARCHAR(45),
                   lastName VARCHAR(45),
                   age INT
 );

-- View empty table (and re-run this in future to see records)
SELECT * FROM users;

-- Add first record
INSERT INTO users (username, firstName, lastName, age) VALUES ('jdoe', 'John', 'Doe', 35);

-- Add 2 more records at the same time
INSERT INTO users (username, firstName, lastName, age) VALUES ('jsmith', 'John', 'smith', 30), ('asmith', 'Alice', 'Smith', 44);

-- create full table
INSERT INTO users (username, firstName, lastName, age)
VALUES
    ('asmith', 'Alice', 'Smith', 20),
    ('bdoe', 'Bob', 'Doe', 33),
    ('cjohnson', 'Charlie', 'Johnson', 41),
    ('dlee', 'David', 'Lee', 19),
    ('ejones', 'Eve', 'Jones', 30),
    ('fkim', 'Frank', 'Kim', 15),
    ('gwhite', 'Grace', 'White', 22),
    ('hwang', 'Henry', 'Wang', 19),
    ('ijones', 'Ivy', 'Jones', 50),
    ('jdoe', 'John', 'Doe', 65),
    ('klee', 'Kevin', 'Lee', 62),
    ('lchen', 'Linda', 'Chen', 24),
    ('mlee', 'Michael', 'Lee', 29),
    ('nkim', 'Nancy', 'Kim', 18),
    ('ojohnson', 'Oscar', 'Johnson', 40),
    ('pchen', 'Peter', 'Chen', 55),
    ('qwang', 'Quincy', 'Wang', 28),
    ('rjones', 'Rachel', 'Jones', 37),
    ('slee', 'Sam', 'Lee', 21),
    ('tkim', 'Tina', 'Kim', 26);

-- View all records in the table
SELECT * FROM users

--update data in table
UPDATE users SET firstName = 'Jane', lastName = 'Doe' WHERE username = 'jdoe';

--delete data from table
DELETE FROM users WHERE username = 'jdoe';

--querying data using SELECT
SELECT firstName, lastName FROM users WHERE lastName = 'Doe';

--Compound conditions
--Find users whose last name is Doe and first name is John.
SELECT * FROM users WHERE lastName = 'Doe' AND firstName = 'John';

--Find users whose last name is Doe or first name is John.
SELECT * FROM users WHERE lastName = 'Doe' OR firstName = 'John';

--Find users whose last name is Doe but whose first name is not John.
SELECT * FROM users WHERE lastName = 'Doe' AND NOT firstName = 'John';

--Find users whose last name is Doe and whose first name is either John or Jane.
SELECT * FROM users WHERE lastName = 'Doe' AND (firstName = 'John' OR firstName = 'Jane');

--Display each user's username and their age increased by 10, using the alias ageIn10Years.
SELECT username, age + 10 AS ageIn10Years FROM users;

--Combine each user's first and last names into a single column named fullName.
SELECT concat(firstName, ' ', lastName) AS fullName FROM users;

--Display all users from oldest to youngest.
SELECT * FROM users ORDER BY age DESC;

--Sort users alphabetically by last name, then by first name.
SELECT * FROM users ORDER BY lastName ASC, firstName ASC;

--Display only the first five users.
SELECT * FROM users LIMIT 5;

--Skip the First Five Users and Display the Next Five
SELECT * FROM users LIMIT 5 OFFSET 5;