DROP TABLE IF EXISTS houses;
DROP TABLE IF EXISTS students;

CREATE TABLE houses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    url VARCHAR(255)
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    second_name VARCHAR(255),
    house VARCHAR(255),
    age INT
);

