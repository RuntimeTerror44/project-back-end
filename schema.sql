-- USERS table
DROP TABLE IF EXISTS usersinfo CASCADE;
CREATE TABLE IF NOT EXISTS usersinfo (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) ,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email  VARCHAR (100) ,
    dateofbirth VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    phonenumber VARCHAR(20),
    address VARCHAR(100),
    gender VARCHAR(10),
    profilepicture VARCHAR(255),
    imgforcover VARCHAR(255),
    career VARCHAR(50)

);

-- PORTFOLIO table
DROP TABLE IF EXISTS portfolio ;
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
--jobs table
DROP TABLE IF EXISTS jobs CASCADE;
CREATE TABLE IF NOT EXISTS jobs(
job_id SERIAL PRIMARY KEY,
user_id INTEGER REFERENCES usersinfo(id) ON DELETE CASCADE,
job_field VARCHAR(255),
job_title VARCHAR(255),
job_city VARCHAR(255),
job_post_content VARCHAR(255)
);


-- POSTS table
DROP TABLE IF EXISTS posts CASCADE;
CREATE TABLE IF NOT EXISTS posts (
  post_id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES usersinfo(id) ON DELETE CASCADE,
  paragraph_content TEXT,
  photo_content TEXT,
  post_date DATE
);


-- comments table
DROP TABLE IF EXISTS comments;
CREATE TABLE IF NOT EXISTS comments (
  comment_id SERIAL PRIMARY KEY,
  content TEXT,
  comment_date DATE,
  user_id INTEGER REFERENCES usersinfo(id) ON DELETE CASCADE,
  post_id  INTEGER REFERENCES posts(post_id) ON DELETE CASCADE     
);


-- Jobs comments table
DROP TABLE IF EXISTS jobcomments;
CREATE TABLE IF NOT EXISTS jobcomments (
  comment_id SERIAL PRIMARY KEY,
  content TEXT,
  comment_date DATE,
  user_id INTEGER REFERENCES usersinfo(id) ON DELETE CASCADE,
  job_id  INTEGER REFERENCES jobs (job_id) ON DELETE CASCADE     
);

