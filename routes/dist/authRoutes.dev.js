"use strict";

var express = require("express");

var router = express.Router();

var authController = require("../controllers/authController"); // Endpoint untuk login 


router.post("/login", authController.login);
router.get("/login", authController.login);
module.exports = router;