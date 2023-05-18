"use strict";
require("dotenv").config();
const express = require("express");
// const movieKey = process.env.API_KEY; API KEY
const pg=require("pg");
//const client=new pg.Client(process.env.DATABASE_URL);
const axios = require("axios");
// const moviesData = require("./Movie Data/data.json"); get data from json
const server = express();
const port=process.env.PORT;
const cors = require("cors");
server.use(cors());
server.use(express.json());


// client.connect().then(()=>{ //connect to DB 


    server.listen(port, () => {
      console.log(`server port is ${port}`);
    });


// })