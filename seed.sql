-- Insert sample user data
INSERT INTO usersinfo (
  username, firstName, lastName, email, dateofbirth, country, city,
  phonenumber, address, gender, profilepicture, imgforcover)
VALUES
  ('john11', 'John', 'Doe', 'johndoe@example.com', '1990-01-01', 'USA', 'New York', '+123456789', '123 Main St', 'Male', 'profile.jpg', 'cover.jpg'),
  ('jane22', 'Jane', 'Smith', 'janesmith@example.com', '1985-02-15', 'Canada', 'Toronto', '+987654321', '456 Elm St', 'Female', 'avatar.jpg', 'banner.jpg'),
  ('john33', 'John', 'Doe', 'johndoe@example.com', '1990-01-01', 'USA', 'New York', '+123456789', '123 Main St', 'Male', 'profile.jpg', 'cover.jpg'),
  ('john44', 'John', 'Doe', 'johndoe@example.com', '1990-01-01', 'USA', 'New York', '+123456789', '123 Main St', 'Male', 'profile.jpg', 'cover.jpg'),
  ('john55', 'John', 'Doe', 'johndoe@example.com', '1990-01-01', 'USA', 'New York', '+123456789', '123 Main St', 'Male', 'profile.jpg', 'cover.jpg');

-- Insert data into PORTFOLIO table
INSERT INTO portfolio (userId, fullname, email, phonenum, address, country, profilepic, education, certifications, workexperience, skills, projects, languages)
VALUES
  (1, 'John Doe', 'jonnnnhndoe@example.com', '1234567890', '123 Main St', 'USA', 'profile_pic_1.jpg', 'Bachelor of Science in Computer Science', 'Oracle Certified Java Programmer', 'Software Engineer at XYZ Company', 'Java, C++, Python', 'Project 1, Project 2', 'English, Spanish'),
  (2, 'Jane Smith', 'janesmdfghjklith@example.com', '9876543210', '456 Elm St', 'Canada', 'profile_pic_2.jpg', 'Master of Business Administration', 'Project Management Professional (PMP)', 'Project Manager at ABC Company', 'Project management, Leadership', 'Project 3, Project 4', 'English, French');

-- Insert data into JOBS table
INSERT INTO jobs (userId, job_field, job_title, city, job_post_content)
VALUES
    (1,'IT', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer'),
    (1,'IT', 'Software Engineer', 'Amman', 'Looking for a skilled software engineer'),
    (1,'Information Technology', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer'),
    (2,'Information Technology', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer'),
    (2,'Information Technology', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer'),
    (3,'Information Technology', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer');

-- POSTS table seed data
INSERT INTO posts (user_id, paragraph_content, photo_content, post_date) VALUES
    (1, 'Hello, this is my 1st post!', 'photo1.jpg', '2023-05-20'),
    (1, 'Hello, this is my 2nd post!', 'photo2.jpg', '2023-05-21'),
    (2, 'Hello, this is my 3ed post!', 'photo3.jpg', '2023-05-22'),
    (1, 'Hello, this is my 4th post!', 'photo4.jpg', '2023-05-23'),
    (1, 'Hello, this is my 5th post!', 'photo4.jpg', '2023-05-23');



-- comments table seed 
INSERT INTO comments (content, comment_date, user_id, post_id) VALUES
('this is comment 1','2023-05-20',1,1 ),
('this is comment 2','2023-05-21',4,1),
('this is comment 1','2023-05-20',1,2 ),
('this is comment 1','2023-05-20',2,2 ),
('this is comment 1','2023-05-20',3,1 ),
('this is comment 2','2023-05-21',5,2);
