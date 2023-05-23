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
function UserInfo(
  username,
  password,
  firstName,
  lastName,
  email,
  dateOfBirth,
  country,
  city,
  phoneNumber,
  address,
  gender,
  profilePicture,
  imgForCover
) {
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

// ----------------------------------Home -----------------------
server.get("/", handleHome);                                      //done
// ----------------------------------userInfo-----------------------
server.get("/users", getUsersHandler);                             //done
server.post("/users", addUser);                                    //done     
server.get("/usersbyid", getUserByID);                             //done                    
// server.get("/usersbyid/:email", getUserByD);                    //done                    
server.delete("/users", deleteUsersHandler);                       //done
server.put('/users',updateUser);                                   //done            ##
server.get ("/posts/:id",getPostByD);
server.get("/checkemail/:id", checkEmail);
// ----------------------------------posts-----------------------
server.get("/posts", getPosts);                                    //done
server.post("/posts", addPostHandler);                             //done
server.get("/postsbyuserid", getPostByID);                         //done
server.delete("/posts", deletePost);                               //done
server.put('/posts',updatePost);                                   //done
// ----------------------------------jobss-----------------------
server.get("/job", getJobs);                                        //done
server.post("/job", addJob);                                        //done
server.get("/jobbyfieldcity", getJobsByFieldCity);                  //done
// server.get("/jobbyfield", getJobsByField);
server.delete("/job", deleteJob);                                   //done
server.put('/job',updateJob);                                       //done
// ----------------------------------comment-----------------------
server.get("/comments", getCommentsByPost);                         //done
// server.post("/comments", addCommentsHandler);                    //###############
server.delete("/comments", deleteCommentsFromPost);                 //done        ##
server.put('/comments',updateComments);                             //done        ##
// ----------------------------------portfolio-----------------------
server.post("/portfolio", addPortfolioInfo);



// server.post('/login', handleLogin);


//handlers

// ----------------------------------Home -----------------------
function handleHome(req, res) {
  res.send("Welcome to Database Home");
}



function checkEmail(req, res) {
  const emailCheck = req.params.id;
 
const values =[emailCheck]
  const sql = `SELECT * FROM usersinfo WHERE email = $1;`;
  console.log(sql);
  client
    .query(sql,values)
    .then((data) => {
      res.status(200).json(data.rows);
    })
    .catch((err) => {
      console.error("Error deleting user:", err);
      res.status(500).json({ error: "Failed to delete user" });
    });
}

// ----------------------------------<<  USER INFO  >>-----------------------
function addUser(req, res) {
  const {
    username,
    firstName,
    lastName,
    email,
    dateOfBirth,
    country,
    city,
    phoneNumber,
    address,
    gender,
    profilepicture,
    imgforcover,
  } = req.body;
  const sql = `
    INSERT INTO usersinfo (
      username,firstName, lastName,email, dateofbirth, country, city,
      phonenumber, address, gender, profilepicture, imgforcover)
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10,$11,$12) RETURNING *;`;
  const values = [
    username,
    firstName,
    lastName,
    email,
    dateOfBirth,
    country,
    city,
    phoneNumber,
    address,
    gender,
    profilepicture,
    imgforcover,
  ];

  client
    .query(sql, values)
    .then((data) => {
      res.status(201).json({ message: "User added successfully" });
    })
    .catch((err) => {
      console.error("Error creating user:", err);
      res.status(500).json({ error: "Failed to create user" });
    });
}




function getUsersHandler(req, res) {
  const sql = "SELECT * FROM usersinfo ORDER BY id ASC;";

  client
    .query(sql)
    .then((data) => {
      const users = data.rows;
      res.status(200).json(users);
    })
    .catch((err) => {
      console.error("Error retrieving users:", err);
      res.status(500).json({ error: "Failed to retrieve users" });
    });
}

function getUserByID(req, res) {
  const { id } = req.body;
  const sql = "SELECT * FROM usersinfo WHERE id = $1;";
  const values = [id];
  client
    .query(sql, values)
    .then((data) => {
      res.status(200).json(data.rows);
    })
    .catch((err) => {
      console.error("Error deleting user:", err);
      res.status(500).json({ error: "Failed to delete user" });
    });
}
function getPostByD(req, res) {
  const getPost = req.params.id;
  const sql = `SELECT * FROM posts WHERE user_id = ${getPost}`;
 
  client
    .query(sql)
    .then((data) => {
      res.status(200).json(data.rows);
    })
    .catch((err) => {
      console.error("Error deleting user:", err);
      res.status(500).json({ error: "Failed to delete user" });
    });
}

function deleteUsersHandler(req, res) {
  const { id } = req.body;
  const sql = "DELETE FROM usersinfo WHERE id=$1;";
  const values = [id];
  client
    .query(sql, values)
    .then(() => {
      res.status(200).json({ message: "User deleted successfully" });
    })
    .catch((err) => {
      console.error("Error deleting user:", err);
      res.status(500).json({ error: "Failed to delete user" });
    });
}

function updateUser (req,res){
  const {
    username,
    firstname,
    lastname,
    dateofbirth,
    country,
    city,
    phonenumber,
    address,
    profilepicture,
    imgforcover,
    id
  } = req.body;
  
  const sql = `update usersinfo set username=$1, firstName=$2, lastName=$3, dateofbirth=$4, country=$5, city=$6, phonenumber=$7, address=$8, profilepicture=$9, imgforcover=$10 WHERE id=$11 returning *;`;

  const values = [
    username,
    firstname,
    lastname,
    dateofbirth,
    country,
    city,
    phonenumber,
    address,
    profilepicture,
    imgforcover,
    id
  ];

  client.query(sql,values).then((data) => {
    res.status(200).json({ message: "User Data Updated successfully" });

      // const newsql = 'SELECT * FROM usersinfo;'; //WHERE ID=$11
      // client.query(newsql,values).then ((data) => {
      //     res.status(201).send(data.rows);
      // })    
  })
  .catch((err) => {
    console.error("Error creating user:", err);
    res.status(500).json({ error: "Failed to create user" });
  });
}


// ----------------------------------<<  POSTS  >>-----------------------

function addPostHandler(req, res) {
  const { user_id,paragraph_content, photo_content, post_date } = req.body;
  const sql = `INSERT INTO posts (user_id, paragraph_content, photo_content, post_date)
      VALUES ($1, $2, $3, $4) RETURNING *;`;
  const values = [user_id, paragraph_content, photo_content, post_date];
  client
    .query(sql, values)
    .then((data) => {
      const newsql=`SELECT * FROM posts ORDER BY post_id DESC;`;
      client.query(newsql).then((data) => {
        const posts = data.rows;
        res.status(201).json(posts);
    })
    })
    .catch((err) => {
      console.error("Error adding post:", err);
      res.status(500).json({ error: "Failed to add post" });
    });
}

function getPosts(req, res) {
  const sql = "SELECT * FROM posts ORDER BY post_id DESC;";

  client.query(sql).then((data) => {
    const users = data.rows;
    res.status(200).json(users);
  })
  .catch((err) => {
    console.error("Error deleting user:", err);
    res.status(500).json({ error: "Failed to delete user" });
  });
}

function getPostByID(req, res) {
  const { user_id } = req.body;
  const sql = "SELECT * FROM posts WHERE user_id = $1 ORDER BY user_id DESC;";
  const values = [user_id];
  client
    .query(sql, values)
    .then((data) => {
      res.status(200).json(data.rows);
    })
    .catch((err) => {
      console.error("Error deleting user:", err);
      res.status(500).json({ error: "Failed to delete user" });
    });
}

function deletePost(req, res) {
  const { post_id } = req.body;
  const sql = "DELETE FROM posts WHERE post_id = $1;";
  const values = [post_id];
  client
    .query(sql, values)
    .then(() => {
      const newsql=`SELECT * FROM posts ORDER BY post_id DESC;`;
      client.query(newsql).then((data) => {
        const posts = data.rows;
        res.status(201).json(posts);
    })    })
    .catch((err) => {
      console.error("Error deleting job:", err);
      res.status(500).json({ error: "Failed to delete job" });
    });
}

function updatePost (req,res){
  const { paragraph_content, photo_content,post_id} = req.body;
    const sql = `update posts set paragraph_content=$1, photo_content=$2 where post_id=$3 returning *;`;

    const values = [ paragraph_content, photo_content ,post_id];
    client.query(sql,values).then((data) => {
        const newsql = 'SELECT * FROM posts ORDER BY post_id DESC;';
        client.query(newsql).then ((data) => {
            res.status(201).send(data.rows);
        })    
    })

}

// ----------------------------------<<  JOBS  >>-----------------------

function addJob(req, res) {                     
  const { userid, job_field, job_title, city, job_post_content } = req.body;
  const sql = `INSERT INTO jobs (userId, job_field, city, job_title,job_post_content)
  VALUES ($1,$2,$3,$4,$5) RETURNING *;`;

  const values = [userid, job_field, job_title, city, job_post_content];
  client
    .query(sql, values)
    .then((data) => {
      const newsql=`SELECT * FROM jobs ORDER BY ID DESC;`;
      client.query(newsql).then((data) => {
        const jobs = data.rows;
        res.status(201).json(jobs);
      })
    })
    .catch((err) => {
      console.error("Error creating job:", err);
      res.status(500).json({ error: "Failed to create job" });
    });
}

function getJobs(req, res) {
  const sql = "SELECT * FROM jobs ORDER BY ID DESC;";

  client.query(sql).then((data) => {
    const jobs = data.rows;
    res.status(200).json(jobs);
  })
  .catch((err) => {
    console.error("Error deleting user:", err);
    res.status(500).json({ error: "Failed to delete user" });
  });
}

function getJobsByFieldCity(req, res) {
  const { job_field, city } = req.body;
  const sql = "SELECT * FROM jobs WHERE job_field = $1 AND city=$2 ORDER BY ID DESC;";
  const values = [job_field, city];
  client
    .query(sql, values)
    .then((data) => {
        const getJobsByFieldCity = data.rows;
        res.status(201).json(getJobsByFieldCity);
      })    
    .catch((err) => {
      console.error("Error deleting user:", err);
      res.status(500).json({ error: "Failed to delete user" });
    });
}

// function getJobsByField(req, res) {
//   const { job_field } = req.body;
//   const sql = "SELECT * FROM jobs WHERE job_field=$1 ORDER BY ID DESC";
//   const values = [job_field ];
//   client
//     .query(sql, values)
//     .then((data) => {
//         const getJobsByFieldCity = data.rows;
//         res.status(201).json(getJobsByFieldCity);
//       })    
//     .catch((err) => {
//       console.error("Error deleting user:", err);
//       res.status(500).json({ error: "Failed to delete user" });
//     });
// }

function deleteJob(req, res) {
  const { id } = req.body;
  const sql = "DELETE FROM jobs WHERE ID = $1;";
  const values = [id];
  client
    .query(sql, values)
    .then(() => {
      const newsql=`SELECT * FROM jobs ORDER BY ID DESC;`
      client.query(newsql).then((data) => {
        const jobs = data.rows;
        res.status(201).json(jobs);
    })
  })
    .catch((err) => {
      console.error("Error deleting job:", err);
      res.status(500).json({ error: "Failed to delete job" });
    });
}

function updateJob (req,res){
  const { job_field, job_title, city, job_post_content, id } = req.body;
  const sql = `update jobs set job_field=$1, job_title=$2, city=$3, job_post_content=$4 where ID=$5 returning *;`;


  const values = [ job_field, job_title, city, job_post_content , id];

  client.query(sql,values).then((data) => {
    const newsql = 'SELECT * FROM jobs ORDER BY ID DESC;';
    client.query(newsql).then ((data) => {
          res.status(201).send(data.rows);
      })    
  })
  .catch((err) => {
    console.error("Error creating user:", err);
    res.status(500).json({ error: "Failed to create user" });
  });
}


// ----------------------------------<<  COMMENTS  >>-----------------------

function getCommentsByPost(req, res) {
  const { post_id } = req.body;
  const sql = "SELECT * FROM comments WHERE post_id=$1 ORDER BY comment_id ASC;";
  const values = [post_id];

  client
    .query(sql,values)
    .then((data) => {
      const users = data.rows;
      res.status(200).json(users);
    })
    .catch((err) => {
      console.error("Error retrieving users:", err);
      res.status(500).json({ error: "Failed to retrieve users" });
    });
}

// function addCommentsHandler(req, res) {
//   const { content, comment_date, user_id, post_id} = req.body;
//   const sql = `
//       INSERT INTO comments  (content,comment_date,user_id) VALUES ($1,$2,$3) WHERE post_id = $4;`;
//   const values = [content, comment_date, user_id, post_id];

//   client
//     .query(sql, values)
//     .then((data) => {
//       const newsql=`SELECT * FROM comments;`;     //WHERE post_id = $4 ORDER BY comment_id ASC
//       client.query(newsql,values).then((data) => {
//         const getComments = data.rows;
//         res.status(201).json(getComments);
//       })

      
//     })
//     .catch((err) => {
//       console.error("Error creating comment", err);
//       res.status(500).json({ error: "Failed to create comment" });
//     });
// }

function deleteCommentsFromPost(req, res) {
  const { comment_id} = req.body;
  const sql = "DELETE FROM comments WHERE comment_id=$1;";
  const values = [comment_id];
  client
    .query(sql, values)
    .then(() => {
      res.status(200).json({ message: "the comment deleted successfully" });

      // const newsql=`SELECT * FROM comments WHERE post_id = $2 ORDER BY comment_id ASC;`;  //WHERE post_id = $2 ORDER BY comment_id ASC
      // client.query(newsql,values).then((data) => {
      //   const getComments = data.rows;
      //   res.status(201).json(getComments);
      // }) 
    })
    .catch((err) => {
      console.error("Error deleting user:", err);
      res.status(500).json({ error: "Failed to delete user" });
    });
}

function updateComments (req,res){
  const { content, comment_id} = req.body;   //post_id ,
  
  const sql = `update comments set content=$1 where comment_id=$2 returning *;`;

  const values = [content,  comment_id];   //post_id ,


  client.query(sql,values).then((data) => {
    res.status(200).json({ message: "the comment updated successfully" });


    // const newsql = 'SELECT * FROM comments;';  //WHERE post_id=$2 ORDER BY comment_id ASC
    // client.query(newsql).then ((data) => {
    //       res.status(201).send(data.rows);
    //   })    
  })
  .catch((err) => {
    console.error("Error creating user:", err);
    res.status(500).json({ error: "Failed to create user" });
  });
}

// ----------------------------------<<  PORTFOLIO  >>-----------------------

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
    languages,
  } = req.body;

  const sql = `
    INSERT INTO portfolio (userId,fullname,email,phonenum,address,country,profilepic,education,certifications,workexperience,skills,projects,languages
    )
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
    RETURNING *;
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
    languages,
  ];

  client
    .query(sql, values)
    .then((data) => {
      const createdPortfolio = data.rows[0];
      res.status(201).json({
        message: "Portfolio information added successfully",
        portfolio: createdPortfolio,
      });
    })
    .catch((err) => {
      console.error("Error adding portfolio information:", err);
      res.status(500).json({ error: "Failed to add portfolio information" });
    });
}


//.............................................................................................

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
    responseText: "Sorry, something went wrong",
  });
});

client.connect().then(() => {
  server.listen(port, () => {
    console.log(`server port is ${port}`);
  });
});
