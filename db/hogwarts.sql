DROP TABLE houses;
DROP TABLE students;

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house VARCHAR(255),
  age INT
);

CREATE TABLE houses (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);
