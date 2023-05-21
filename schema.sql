DROP TABLE IF EXISTS usersinfo;
CREATE TABLE IF NOT EXISTS usersinfo (
    ID SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(50),
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    dateofbirth DATE,
    country VARCHAR(50),
    city VARCHAR(50),
    phonenumber VARCHAR(20),
    address VARCHAR(100),
    gender VARCHAR(10),
    profilepicture VARCHAR(255),
    imgforcover VARCHAR(255)
);

-- PORTFOLIO table
DROP TABLE IF EXISTS portfolio;
CREATE TABLE IF NOT EXISTS portfolio (
  ID SERIAL PRIMARY KEY,
  userId INT,
  fullname VARCHAR(100),
  email VARCHAR(100),
  phonenum VARCHAR(20),
  address VARCHAR(100),
  country VARCHAR(50),
  profilepic VARCHAR(255),
  education TEXT,
  certifications TEXT,
  workexperience TEXT,
  skills TEXT,
  projects TEXT,
  languages TEXT
);

