-- Insert sample user data
INSERT INTO usersinfo (
  username, password, firstName, lastName, email, dateofbirth, country, city,
  phonenumber, address, gender, profilepicture, imgforcover)
VALUES
  ('john1234', 'password1', 'John', 'Doe', 'johndoe@example.com', '1990-01-01', 'USA', 'New York', '+123456789', '123 Main St', 'Male', 'profile.jpg', 'cover.jpg'),
  ('jane456', 'password2', 'Jane', 'Smith', 'janesmith@example.com', '1985-02-15', 'Canada', 'Toronto', '+987654321', '456 Elm St', 'Female', 'avatar.jpg', 'banner.jpg');

-- Insert data into PORTFOLIO table
INSERT INTO portfolio (userId, fullname, email, phonenum, address, country, profilepic, education, certifications, workexperience, skills, projects, languages)
VALUES
  (1, 'John Doe', 'jonnnnhndoe@example.com', '1234567890', '123 Main St', 'USA', 'profile_pic_1.jpg', 'Bachelor of Science in Computer Science', 'Oracle Certified Java Programmer', 'Software Engineer at XYZ Company', 'Java, C++, Python', 'Project 1, Project 2', 'English, Spanish'),
  (2, 'Jane Smith', 'janesmdfghjklith@example.com', '9876543210', '456 Elm St', 'Canada', 'profile_pic_2.jpg', 'Master of Business Administration', 'Project Management Professional (PMP)', 'Project Manager at ABC Company', 'Project management, Leadership', 'Project 3, Project 4', 'English, French');

-- Insert data into JOBS table
INSERT INTO jobs (userId, job_field, job_title, job_post_content, job_details)
VALUES
    (1,'Information Technology', 'Software Engineer', 'Looking for a skilled software engineer', 'Responsibilities include developing software applications.'),
    (1,'Information Technology', 'Software Engineer', 'Looking for a skilled software engineer', 'Responsibilities include developing software applications.');
 
-- POSTS table seed data
INSERT INTO posts (user_id,paragraph_content, photo_content, post_date) VALUES
    (1, 'Hello, this is my first post!', 'photo1.jpg', '2023-05-20'),
    (1, 'I had a great day at the beach!', 'photo2.jpg', '2023-05-21'),
    (2, 'Excited for my upcoming trip!', 'photo3.jpg', '2023-05-22'),
    (2, 'Enjoying the beautiful sunset.', 'photo4.jpg', '2023-05-23');
