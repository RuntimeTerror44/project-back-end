"use strict";
require("dotenv").config();
const express = require("express");
const server = express();
const pg = require("pg");
const client = new pg.Client(process.env.DATABASE_URL);
const axios = require("axios");
const port = process.env.PORT;
const cors = require("cors");
server.use(cors());
server.use(express.json());
// const moviesData = require("./Movie Data/data.json"); get data from json
// const movieKey = process.env.API_KEY; API KEY


// User Info Constructor
function UserInfo(username, password, firstName, lastName, email, dateOfBirth, country, city, phoneNumber, address, gender, profilePicture, imgForCover) {
  this.username = username;
  this.password = password;
  this.firstName = firstName;
  this.lastName = lastName;
  this.email = email;
  this.dateOfBirth = dateOfBirth;
  this.country = country;
  this.city = city;
  this.phoneNumber = phoneNumber;
  this.address = address;
  this.gender = gender;
  this.profilePicture = profilePicture;
  this.imgForCover = imgForCover;
}


//routs
server.get("/", handleHome);
server.post('/users', createUser);
server.post('/portfolio', addPortfolioInfo);
// server.post('/login', handleLogin);



//handlers
function handleHome(req, res) {
  res.send("Welcome to Database Home");
}

// function handleLogin(req, res) {
//   const { username, password, email } = req.body;
//   const values = [username, password, email];
//   const sql = `INSERT INTO usersinfo (username, password, email) VALUES ($1, $2, $3)`;

//   client
//     .query(sql, values)
//     .then(() => {
//       res.status(201).json({ message: 'User created successfully' });
//     })
//     .catch((error) => {
//       console.error('Error creating user:', error);
//       res.status(500).json({ message: 'Error creating user' });
//     });
// }

// function createUser(req, res) {
//   const { username, password, firstName, lastName, email, dateOfBirth, country, city, phoneNumber, address, gender, profilePicture, imgForCover } = req.body;
//   const sql = `
//     INSERT INTO usersinfo (
//       username, password, firstName, lastName, email, dateofbirth, country, city,
//       phonenumber, address, gender, profilepicture, imgforcover
//     )
//     VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
//     ON CONFLICT (email) DO UPDATE SET
//       firstName = $1, lastName = $2, dateofbirth = $4, country = $5, city = $6,
//       phonenumber = $7, address = $8, gender = $9, profilepicture = $10, imgforcover = $11
//     RETURNING *;
//   `;
//   const values = [firstName, lastName, email, dateOfBirth, country, city, phoneNumber, address, gender, profilePicture, imgForCover];

//   client.query(sql, values)
//     .then(data => {
//       const createdUser = data.rows[0];
//       res.status(201).json(createdUser);
//     })
//     .catch(err => {
//       console.error("Error creating/updating user:", err);
//       res.status(500).json({ error: "Failed to create/update user" });
//     });
// }
function createUser(req, res) {
  const { username, password, firstName, lastName, email, dateOfBirth, country, city, phoneNumber, address, gender, profilePicture, imgForCover } = req.body;
  const sql = `
    INSERT INTO usersinfo (
      username, password, firstName, lastName, email, dateofbirth, country, city,
      phonenumber, address, gender, profilepicture, imgforcover
    )
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
    RETURNING *;
  `;
  const values = [username, password, firstName, lastName, email, dateOfBirth, country, city, phoneNumber, address, gender, profilePicture, imgForCover];

  client.query(sql, values)
    .then(data => {
      const createdUser = data.rows[0];
      res.status(201).json(createdUser);
    })
    .catch(err => {
      console.error("Error creating user:", err);
      res.status(500).json({ error: "Failed to create user" });
    });
}



function addPortfolioInfo(req, res) {
  const {
    userId,
    fullname,
    email,
    phonenum,
    address,
    country,
    profilepic,
    education,
    certifications,
    workexperience,
    skills,
    projects,
    languages
  } = req.body;

  const sql = `
    INSERT INTO portfolio (
      userId,
      fullname,
      email,
      phonenum,
      address,
      country,
      profilepic,
      education,
      certifications,
      workexperience,
      skills,
      projects,
      languages
    )
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
    RETURNING *
  `;

  const values = [
    userId,
    fullname,
    email,
    phonenum,
    address,
    country,
    profilepic,
    education,
    certifications,
    workexperience,
    skills,
    projects,
    languages
  ];

  client.query(sql, values)
    .then(data => {
      const createdPortfolio = data.rows[0];
      res.status(201).json({ message: 'Portfolio information added successfully', portfolio: createdPortfolio });
    })
    .catch(err => {
      console.error("Error adding portfolio information:", err);
      res.status(500).json({ error: "Failed to add portfolio information" });
    });
}

//-------------------------------------------------------------------------------------------
//function to handle 404 Errors
server.use((req, res, next) => {
  res.status(404).send("page not found error");
});

//function to handle 500 Errors
server.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({
    status: 500,
    responseText: 'Sorry, something went wrong'
  });
});

client.connect().then(()=>{ 
server.listen(port, () => {
  console.log(`server port is ${port}`);
});
})
