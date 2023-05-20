-- USERS Info table
CREATE TABLE IF NOT EXISTS usersinfo (
    ID SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    fullname VARCHAR(100),
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    password VARCHAR(255),
    age INT,
    address VARCHAR(100),
    country VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    phonenumber VARCHAR(20),
    profilepicture VARCHAR(255),
    imgforcover VARCHAR(255)
);


-- PORTFOLIO table
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

