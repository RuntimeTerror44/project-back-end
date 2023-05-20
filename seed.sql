INSERT INTO usersinfo (firstName, lastName, email, dateofbirth, country, city, phonenumber, address, gender, profilepicture, imgforcover)
VALUES
    ('John', 'Doe', 'johndoe@example.com', '1998-05-15', 'USA', 'New York', '+1 123-456-7890', '123 Main St', 'Male', 'http://example.com/profile1.jpg', 'http://example.com/cover1.jpg'),
    ('Jane', 'Smith', 'janesmith@example.com', '1990-12-02', 'Canada', 'Toronto', '+1 987-654-3210', '456 Elm St', 'Female', 'http://example.com/profile2.jpg', 'http://example.com/cover2.jpg');



-- Insert data into PORTFOLIO table
INSERT INTO portfolio (userId, fullname, email, phonenum, address, country, profilepic, education, certifications, workexperience, skills, projects, languages)
VALUES
  (1, 'John Doe', 'johndoe@example.com', '1234567890', '123 Main St', 'USA', 'profile_pic_1.jpg', 'Bachelor of Science in Computer Science', 'Oracle Certified Java Programmer', 'Software Engineer at XYZ Company', 'Java, C++, Python', 'Project 1, Project 2', 'English, Spanish'),
  (2, 'Jane Smith', 'janesmith@example.com', '9876543210', '456 Elm St', 'Canada', 'profile_pic_2.jpg', 'Master of Business Administration', 'Project Management Professional (PMP)', 'Project Manager at ABC Company', 'Project management, Leadership', 'Project 3, Project 4', 'English, French');
