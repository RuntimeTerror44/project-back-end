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

const users = [];

// User constructor function
function User(username, password, email) {
  this.username = username;
  this.password = password;
  this.email = email;
}


//routs
server.get("/", handleHome);
server.post('/users', createUser);
server.post('/portfolio', addPortfolioInfo);



//handlers
function handleHome(req, res) {
  res.send("Welcome to Database Home");
}
function createUser(req, res) {
  const { username, password, email } = req.body;
  const user = new User(username, password, email);

  const sql = "INSERT INTO usersinfo (username, password, email) VALUES ($1, $2, $3) RETURNING *";
  const values = [username, password, email];

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


// function createUser(req, res) {
//   const { username, password, email } = req.body;
//   const user = new User(username, password, email);
//   users.push(user);
//   res.status(201).json(user);
// }
// function createUser(req, res) {
//   const sql = "INSERT INTO login ('username', 'password', 'email') VALUES ($1,$2,$3) RETURNING *;";
//   const values = [req.body.username, req.body.password, req.body.email];
  
//   db.query(sql, [values], (err, data) => {
//     if (err) {
//       return res.json("Error");
//     }
//     return res.json(data);
//   });
// }


// function addPortfolioInfo(req, res) {
//   const {
//     userId,
//     fullname,
//     email,
//     phonenum,
//     address,
//     country,
//     profilepic,
//     education,
//     certifications,
//     workexperience,
//     skills,
//     projects,
//     languages
//   } = req.body;

//   const portfolio = {
//     userId,
//     fullname,
//     email,
//     phonenum,
//     address,
//     country,
//     profilepic,
//     education,
//     certifications,
//     workexperience,
//     skills,
//     projects,
//     languages
//   };

//   res.status(201).json({ message: 'Portfolio information added successfully', portfolio });
// }

  



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
