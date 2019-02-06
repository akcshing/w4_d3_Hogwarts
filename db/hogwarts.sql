DROP TABLE IF EXISTS houses;
DROP TABLE IF EXISTS students;




CREATE TABLE houses (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  logo VARCHAR(255)
);

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house VARCHAR(255),  --REFERENCES houses(name) ON DELETE CASCADE,
  age INT4
);
