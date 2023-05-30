-- Insert sample user data
INSERT INTO usersinfo (
  username, firstName, lastName, email, dateofbirth, country, city,
  phonenumber, address, gender, profilepicture, imgforcover, career)
VALUES
  ('john11', 'John', 'Doe', 'johndoe@example.com', '1990-01-01', 'USA', 'New York', '+123456789', '123 Main St', 'Male', 'https://t4.ftcdn.net/jpg/00/73/21/11/240_F_73211193_D9zi1Y4DiSTjJ8rxPBPj0ihliPHAK00N.jpg', 'cover.jpg','Software Engineer'),
  ('jane22', 'Jane', 'Smith', 'janesmith@example.com', '1985-02-15', 'Canada', 'Toronto', '+987654321', '456 Elm St', 'Female', 'https://t4.ftcdn.net/jpg/02/36/01/13/240_F_236011345_3W03mLyEwnqy7NmLPjRAkIRJWxMu9Rp3.jpg', 'banner.jpg', 'Information Technology'),
  ('john33', 'John', 'Doe', 'johndoe@example.com', '1990-01-01', 'USA', 'New York', '+123456789', '123 Main St', 'Male', 'https://t4.ftcdn.net/jpg/02/83/34/87/240_F_283348729_wcG8rvBF5f1VfPGKy916pIcmgGk0PK7B.jpg', 'cover.jpg', 'Electrical Engineer'),
  ('john44', 'John', 'Doe', 'johndoe@example.com', '1990-01-01', 'USA', 'New York', '+123456789', '123 Main St', 'Male', 'https://t3.ftcdn.net/jpg/04/43/35/26/240_F_443352684_jFBzQhRy3drUvmomHyztAnWUyoUhifPG.jpg', 'cover.jpg', 'Electrical Engineer'),
  ('john55', 'John', 'Doe', 'johndoe@example.com', '1990-01-01', 'USA', 'New York', '+123456789', '123 Main St', 'Male', 'https://t4.ftcdn.net/jpg/03/68/16/33/240_F_368163351_a0dHndWi59lzACdREInXaQxPanMzLKgl.jpg', 'cover.jpg', 'Electrical Engineer');
-- Insert data into PORTFOLIO table
INSERT INTO portfolio (userId, fullname, email, phonenum, address, country, profilepic, education, certifications, workexperience, skills, projects, languages)
VALUES
  (1, 'John Doe', 'johndoe@example.com', '1234567890', '123 Main St', 'USA', 'profile_pic_1.jpg', 'Bachelor of Science in Computer Science', 'Oracle Certified Java Programmer', 'Software Engineer at XYZ Company', 'Java, C++, Python', 'Project 1, Project 2', 'English, Spanish'),
  (2, 'Jane Smith', 'janesmith@example.com', '9876543210', '456 Elm St', 'Canada', 'profile_pic_2.jpg', 'Master of Business Administration', 'Project Management Professional (PMP)', 'Project Manager at ABC Company', 'Project management, Leadership', 'Project 3, Project 4', 'English, French');
-- Insert data into JOBS table
INSERT INTO jobs (user_id, job_field, job_title, job_city, job_post_content)
VALUES
    (1,'IT', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer'),
    (1,'IT', 'Software Engineer', 'Amman', 'Looking for a skilled software engineer'),
    (1,'Information Technology', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer'),
    (2,'Information Technology', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer'),
    (2,'Information Technology', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer'),
    (3,'Information Technology', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer'),
    (1,'IT', 'Software Engineer', 'Irbid', 'Looking for a skilled software engineer'),
    (2,'Information Technology', 'Software Engineer', 'Amman', 'Looking for a skilled software engineer to join our development team.'),
    (3,'Data Analyst', 'Data Analyst', 'Amman', 'We are looking for a data analyst to analyze and interpret complex data sets.'),
    (4,'Graphic Design', 'Graphic Designer', 'Amman', 'We are hiring a creative graphic designer to join our design team.'),
    (5,'Marketing', 'Marketing Manager', 'Irbid', 'We are seeking an experienced marketing manager to lead our marketing efforts.'),
    (5,'Project Management', 'Project Manager', 'Irbid', 'We are hiring a project manager to oversee and coordinate project activities.'),
    (4,'Business Analysis', 'Business Analyst', 'Amman', 'Looking for a skilled software engineer'),
    (3,'Sales', 'Sales Representative', 'Amman', 'We are seeking a dynamic sales representative to promote our products.'),
    (2,'Web Development', 'Front-end Developer', 'Amman', 'We are hiring a front-end developer with expertise in JavaScript and React.'),
    (1,'Design', 'UI/UX Designer', 'Irbid', 'We are seeking a talented UI/UX designer to create intuitive user interfaces.'),
    (1,'Data Science', 'Data Scientist', 'Irbid', 'We are looking for a data scientist to build and deploy machine learning models.'),
    (2,'Product Management', 'Product Manager', 'Amman', 'We are seeking a product manager to define and execute product strategies.'),
    (3,'Quality Assurance', 'Quality Assurance Engineer', 'Irbid', 'We are hiring a QA engineer to ensure the quality of our software products.'),
    (4,'DevOps', 'DevOps Engineer', 'Irbid', 'We are looking for a skilled DevOps engineer to streamline our development and deployment processes.'),
    (5,'Customer Service', 'Call Center Representative', 'Irbid', 'We are hiring call center representatives to handle customer inquiries and provide excellent customer service.'),
    (1,'Web Development', 'Backend Developer', 'Irbid', 'We are looking for a skilled backend developer to design and implement server-side logic.'),
    (2,'Human Resources', 'HR Manager', 'Amman', 'We are seeking an HR manager to oversee our human resources department.'),
    (3,'Finance', 'Financial Analyst', 'Irbid', 'We are looking for a financial analyst to perform financial modeling and analysis.'),
    (4,'Customer Service', 'Customer Support Specialist', 'Amman', 'We are hiring a customer support specialist to assist our customers with their inquiries.'),
    (5,'Sales', 'Sales Manager', 'Irbid', 'We are seeking an experienced sales manager to lead and motivate our sales team.'),
    (1,'Marketing', 'Digital Marketing Specialist', 'Irbid', 'We are looking for a digital marketing specialist to develop and execute online marketing campaigns.'),
    (2,'Project Management', 'IT Project Manager', 'Amman', 'We are seeking an IT project manager to oversee the planning and execution of IT projects.'),
    (3,'Data Analysis', 'Business Intelligence Analyst', 'Irbid', 'We are looking for a business intelligence analyst to analyze complex data and generate insights.'),
    (4,'Graphic Design', 'Senior Graphic Designer', 'Irbid','We are hiring a senior graphic designer to lead our design team and create compelling visual materials.'),
    (5,'Product Management', 'Product Owner', 'Amman', 'We are seeking a product owner to define and prioritize product features and requirements.'),
    (5,'Sales', 'Account Executive', 'Irbid', 'We are hiring an account executive to manage and expand our client base.'),
    (4,'Marketing', 'Social Media Manager', 'Amman', 'We are seeking a social media manager to develop and implement social media strategies.'),
    (3,'Software Development', 'Mobile App Developer', 'Irbid','We are looking for a mobile app developer to create innovative and user-friendly mobile applications.'),
    (2,'Data Science', 'Machine Learning Engineer', 'Amman', 'We are hiring a machine learning engineer to develop and deploy advanced machine learning models.'),
    (1,'Design', 'Product Designer', 'Irbid', 'We are seeking a talented product designer to create visually appealing and user-centered designs.'),
    (2,'Finance', 'Chief Financial Officer', 'Irbid', 'We are looking for a CFO to oversee financial planning and manage financial risks.'),
    (3,'Project Management', 'Scrum Master', 'Amman', 'We are seeking a certified scrum master to facilitate agile development processes and ensure project success.'),
    (4,'Data Analysis', 'Data Engineer', 'Irbid', 'We are hiring a data engineer to build and maintain data pipelines for efficient data processing.'),
    (1,'Data Analysis', 'Business Analyst', 'Amman', 'We are hiring a business analyst to analyze business processes and recommend improvements.'),
    (3,'Web Development', 'WordPress Developer', 'Amman', 'We are looking for a WordPress developer to create and customize WordPress themes and plugins.'),
    (5,'Data Analysis', 'Business Analyst', 'Irbid', 'We are hiring a business analyst to analyze business processes and recommend improvements.'),
    (1,'Project Management', 'Product Manager', 'Amman', 'We are seeking a product manager to oversee the development and launch of new products.'),
    (4,'Customer Service', 'Technical Support Specialist', 'Irbid', 'We are hiring a technical support specialist to assist customers with technical issues and provide timely solutions.'),
    (2,'Finance', 'Investment Analyst', 'Amman', 'We are looking for an investment analyst to conduct financial research and analysis to support investment decisions.'),
    (1,'Design', 'Graphic Design Intern', 'Amman', 'We are seeking a graphic design intern to assist in creating visual assets for marketing materials and digital platforms.'),
    (2,'Data Science', 'Data Analyst', 'Irbid', 'We are hiring a data analyst to interpret and analyze data to provide valuable insights and support decision-making.'),
    (3,'Software Development', 'Software Architect', 'Amman', 'We are looking for a software architect to design and oversee the development of complex software systems.'),
    (4,'Marketing', 'Digital Advertising Specialist', 'Amman', 'We are seeking a digital advertising specialist to manage online advertising campaigns and optimize performance.'),
    (5,'Sales', 'Sales Director', 'Irbid', 'We are hiring a sales director to develop and implement sales strategies for our organization.'),
    (4,'Web Development', 'Front-end Developer', 'Amman', 'We are seeking a front-end developer to create interactive and user-friendly web interfaces.'),
    (3,'Product Management', 'Product Marketing Manager', 'Amman', 'We are looking for a product marketing manager to develop and execute marketing strategies for our products.'),
    (2,'Graphic Design', 'UI/UX Designer', 'Amman', 'We are hiring a UI/UX designer to create intuitive and visually appealing user interfaces.'),
    (1,'Data Analysis', 'Data Scientist', 'Amman', 'We are seeking a data scientist to analyze large datasets and provide actionable insights.'),
    (4,'Project Management', 'Construction Project Manager', 'Irbid', 'We are looking for a construction project manager to oversee construction projects from initiation to completion.'),
    (2,'Software Development', 'DevOps Engineer', 'Amman', 'We are hiring a DevOps engineer to streamline our development and deployment processes.'),
    (1,'Marketing', 'Content Marketing Manager', 'Amman', 'We are seeking a content marketing manager to develop and implement content strategies across various channels.'),
    (2,'Sales', 'Sales Representative', 'Amman', 'We are looking for a sales representative to actively promote and sell our products/services.'),
    (3,'Finance', 'Financial Controller', 'Irbid', 'We are hiring a financial controller to oversee financial operations and ensure compliance with regulations.'),
    (4,'Human Resources', 'Recruitment Specialist', 'Amman', 'We are seeking a recruitment specialist to attract and hire top talent for our organization.');








-- POSTS table seed data
INSERT INTO posts (user_id, paragraph_content, photo_content, post_date) VALUES
    (1, 'Hello, this is my 1st post!', '', '2023-05-20'),
    (1, 'Hello, this is my 2nd post!', '', '2023-05-21'),
    (2, 'Hello, this is my 3ed post!', '', '2023-05-22'),
    (1, 'Hello, this is my 4th post!', '', '2023-05-23'),
    (1, 'Hello, this is my 5th post!', '', '2023-05-23');
-- comments table seed
INSERT INTO comments (content, comment_date, user_id, post_id) VALUES
('this is comment 1','2023-05-20',1,1 ),
('this is comment 2','2023-05-21',4,1),
('this is comment 1','2023-05-20',1,2 ),
('this is comment 1','2023-05-20',2,2 ),
('this is comment 1','2023-05-20',3,1 ),
('this is comment 2','2023-05-21',5,2);

-- JOB comments table seed
INSERT INTO jobcomments (content, comment_date, user_id, job_id) VALUES
('this is comment 1','2023-05-20',1,1 ),
('this is comment 2','2023-05-21',4,1),
('this is comment 1','2023-05-20',1,2 ),
('this is comment 1','2023-05-20',2,2 ),
('this is comment 1','2023-05-20',3,1 ),
('this is comment 2','2023-05-21',5,2);