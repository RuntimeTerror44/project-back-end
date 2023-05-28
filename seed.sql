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
  (1, 'John Doe', 'johndoe@example.com', '1234567890', '123 Main St', 'USA', 'profile_pic_1.jpg', 'Bachelor of Science in Computer Science', 'Oracle Certified Java Programmer', 'Software Engineer at XYZ Company', 'Java, C++, Python', 'Project 1, Project 2', 'English, Spanish'),
  (2, 'Jane Smith', 'janesmith@example.com', '9876543210', '456 Elm St', 'Canada', 'profile_pic_2.jpg', 'Master of Business Administration', 'Project Management Professional (PMP)', 'Project Manager at ABC Company', 'Project management, Leadership', 'Project 3, Project 4', 'English, French');
-- Insert data into JOBS table
INSERT INTO jobs (userId, job_field, job_title, city, job_post_content)
VALUES
    (1,'Information Technology', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer to join our development team.'),
    (6,'Data Analyst', 'Data Analyst', 'Amman', 'We are looking for a data analyst to analyze and interpret complex data sets.'),
    (5,'Graphic Design', 'Graphic Designer', 'Irbid', 'We are hiring a creative graphic designer to join our design team.'),
    (9,'Marketing', 'Marketing Manager', 'Irbid', 'We are seeking an experienced marketing manager to lead our marketing efforts.'),
    (8,'Project Management', 'Project Manager', 'Irbid', 'We are hiring a project manager to oversee and coordinate project activities.'),
    (5,'Business Analysis', 'Business Analyst', 'Irbid', 'Looking for a skilled software engineer');
    (4,'Sales', 'Sales Representative', 'Irbid', 'We are seeking a dynamic sales representative to promote our products.');
    (6,'Web Development', 'Front-end Developer', 'Irbid', 'We are hiring a front-end developer with expertise in JavaScript and React.');
    (5,'Design', 'UI/UX Designer', 'Irbid', 'We are seeking a talented UI/UX designer to create intuitive user interfaces.');
    (8,'Data Science', 'Data Scientist', 'Irbid', 'We are looking for a data scientist to build and deploy machine learning models.');
    (2,'Product Management', 'Product Manager', 'Irbid', 'We are seeking a product manager to define and execute product strategies.');
    (6,'Quality Assurance', 'Quality Assurance Engineer', 'Irbid', 'Quality Assurance Engineer', 'Berlin', 'We are hiring a QA engineer to ensure the quality of our software products.');
    (5,'DevOps', 'DevOps Engineer', 'San Francisco', 'Irbid', 'We are looking for a skilled DevOps engineer to streamline our development and deployment processes.');
    (1,'Customer Service', 'Call Center Representative', 'Irbid', 'We are hiring call center representatives to handle customer inquiries and provide excellent customer service.');
    (2,'Web Development', 'Backend Developer', 'Irbid', 'We are looking for a skilled backend developer to design and implement server-side logic.');
    (9,'Human Resources', 'HR Manager', 'Irbid', 'We are seeking an HR manager to oversee our human resources department.');
    (5,'Finance', 'Financial Analyst', 'Irbid', 'We are looking for a financial analyst to perform financial modeling and analysis.');
    (7,'Customer Service', 'Customer Support Specialist', 'Irbid', 'We are hiring a customer support specialist to assist our customers with their inquiries.');
    (6,'Sales', 'Sales Manager', 'Irbid', 'We are seeking an experienced sales manager to lead and motivate our sales team.');
    (4,'Marketing', 'Digital Marketing Specialist', 'Irbid', 'We are looking for a digital marketing specialist to develop and execute online marketing campaigns.');
    (2,'Project Management', 'IT Project Manager', 'Irbid', 'We are seeking an IT project manager to oversee the planning and execution of IT projects.');
    (8,'Data Analysis', 'Business Intelligence Analyst', 'Irbid', 'We are looking for a business intelligence analyst to analyze complex data and generate insights.');
    (9,'Graphic Design', 'Senior Graphic Designer', 'Irbid','We are hiring a senior graphic designer to lead our design team and create compelling visual materials.');
    (5,'Product Management', 'Product Owner', 'Irbid', 'We are seeking a product owner to define and prioritize product features and requirements.');
    (4,'Sales', 'Account Executive', 'Irbid', 'We are hiring an account executive to manage and expand our client base.');
    (8,'Marketing', 'Social Media Manager', 'Irbid', 'We are seeking a social media manager to develop and implement social media strategies.');
    (4,'Software Development', 'Mobile App Developer', 'Irbid','We are looking for a mobile app developer to create innovative and user-friendly mobile applications.');
    (1,'Data Science', 'Machine Learning Engineer', 'Irbid', 'We are hiring a machine learning engineer to develop and deploy advanced machine learning models.');
    (8,'Design', 'Product Designer', 'Irbid', 'We are seeking a talented product designer to create visually appealing and user-centered designs.');
    (3,'Finance', 'Chief Financial Officer', 'Irbid', 'We are looking for a CFO to oversee financial planning and manage financial risks.');
    (3,'Project Management', 'Scrum Master', 'Irbid', 'We are seeking a certified scrum master to facilitate agile development processes and ensure project success.');
    (1,'Data Analysis', 'Data Engineer', 'Irbid', 'We are hiring a data engineer to build and maintain data pipelines for efficient data processing.');
    (2,'Data Analysis', 'Business Analyst', 'Amman', 'We are hiring a business analyst to analyze business processes and recommend improvements.');
    (5,'Web Development', 'WordPress Developer', 'Amman', 'We are looking for a WordPress developer to create and customize WordPress themes and plugins.');
    (7,'Data Analysis', 'Business Analyst', 'Irbid', 'We are hiring a business analyst to analyze business processes and recommend improvements.');
    (9,'Project Management', 'Product Manager', 'Amman', 'We are seeking a product manager to oversee the development and launch of new products.');
    (6,'Customer Service', 'Technical Support Specialist', 'Irbid', 'We are hiring a technical support specialist to assist customers with technical issues and provide timely solutions.');
    (5,'Finance', 'Investment Analyst', 'Amman', 'We are looking for an investment analyst to conduct financial research and analysis to support investment decisions.');
    (8,'Design', 'Graphic Design Intern', 'Amman', 'We are seeking a graphic design intern to assist in creating visual assets for marketing materials and digital platforms.');
    (4,'Data Science', 'Data Analyst', 'Irbid', 'We are hiring a data analyst to interpret and analyze data to provide valuable insights and support decision-making.');
    (4,'Software Development', 'Software Architect', 'Amman', 'We are looking for a software architect to design and oversee the development of complex software systems.');
    (1,'Marketing', 'Digital Advertising Specialist', 'Amman', 'We are seeking a digital advertising specialist to manage online advertising campaigns and optimize performance.');
    (5,'Sales', 'Sales Director', 'Irbid', 'We are hiring a sales director to develop and implement sales strategies for our organization.');
    (7,'Web Development', 'Front-end Developer', 'Amman', 'We are seeking a front-end developer to create interactive and user-friendly web interfaces.');
    (3,'Product Management', 'Product Marketing Manager', 'Amman', 'We are looking for a product marketing manager to develop and execute marketing strategies for our products.');
    (9,'Graphic Design', 'UI/UX Designer', 'Amman', 'We are hiring a UI/UX designer to create intuitive and visually appealing user interfaces.');
    (5,'Data Analysis', 'Data Scientist', 'Amman', 'We are seeking a data scientist to analyze large datasets and provide actionable insights.');
    (6,'Project Management', 'Construction Project Manager', 'Irbid', 'We are looking for a construction project manager to oversee construction projects from initiation to completion.');
    (4,'Software Development', 'DevOps Engineer', 'Amman', 'We are hiring a DevOps engineer to streamline our development and deployment processes.');
    (1,'Marketing', 'Content Marketing Manager', 'Amman', 'We are seeking a content marketing manager to develop and implement content strategies across various channels.');
    (9,'Sales', 'Sales Representative', 'Amman', 'We are looking for a sales representative to actively promote and sell our products/services.');
    (4,'Finance', 'Financial Controller', 'Irbid', 'We are hiring a financial controller to oversee financial operations and ensure compliance with regulations.');
    (10,'Human Resources', 'Recruitment Specialist', 'Amman', 'We are seeking a recruitment specialist to attract and hire top talent for our organization.');
    
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

-- JOB comments table seed
INSERT INTO comments (content, comment_date, user_id, job_id) VALUES
('this is comment 1','2023-05-20',1,1 ),
('this is comment 2','2023-05-21',4,1),
('this is comment 1','2023-05-20',1,2 ),
('this is comment 1','2023-05-20',2,2 ),
('this is comment 1','2023-05-20',3,1 ),
('this is comment 2','2023-05-21',5,2);