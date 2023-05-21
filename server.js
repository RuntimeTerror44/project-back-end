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
server.delete('/users/:id', deleteUsersHandler)
server.get('/users', getUsersHandler)
server.get('posts', addPostHandler)
// server.post('/login', handleLogin);



//handlers
function handleHome(req, res) {
  res.send("Welcome to Database Home");
}

  function addPostHandler(req, res) {
    const {paragraph_content, photo_content, post_date } = req.body;
    const sql = `INSERT INTO posts (paragraph_content, photo_content, post_date)
      VALUES ($1, $2, $3) RETURNING *;`;
    const values = [user_id, paragraph_content, photo_content, post_date];
    client.query(sql, values)
      .then(data => {
        const createdPost = data.rows[0];
        res.status(201).json(createdPost);
      })
      .catch(err => {
        console.error("Error adding post:", err);
        res.status(500).json({ error: "Failed to add post" });
      });
  }
  
function deleteUsersHandler(req, res){
  const userId = req.params.id;
  const sql = 'DELETE FROM usersinfo WHERE id = $1';
  const values = [userId];
  client.query(sql, values)
    .then(() => {
      res.status(200).json({ message: 'User deleted successfully' });
    })
    .catch(err => {
      console.error('Error deleting user:', err);
      res.status(500).json({ error: 'Failed to delete user' });
    });
}

function getUsersHandler(req, res){
  const sql = 'SELECT * FROM usersinfo';

  client.query(sql)
    .then(data => {
      const users = data.rows;
      res.status(200).json(users);
    })
    .catch(err => {
      console.error("Error retrieving users:", err);
      res.status(500).json({ error: "Failed to retrieve users" });
    });
}



function createUser(req, res) {
  const { username, password, firstName, lastName, email, dateOfBirth, country, city, phoneNumber, address, gender, profilePicture, imgForCover } = req.body;
  const sql = `
    INSERT INTO usersinfo (
      username, password, firstName, lastName, email, dateofbirth, country, city,
      phonenumber, address, gender, profilepicture, imgforcover
    )
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13) RETURNING *;`;
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
  const {userId,fullname,email,phonenum,address,country,profilepic,education,certifications,workexperience,skills,projects,languages} = req.body;

  const sql = `
    INSERT INTO portfolio (userId,fullname,email,phonenum,address,country,profilepic,education,certifications,workexperience,skills,projects,languages
    )
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
    RETURNING *
  `;

  const values = [
    userId, fullname, email, phonenum, address, country, profilepic, education, certifications, workexperience, skills, projects, languages];

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
