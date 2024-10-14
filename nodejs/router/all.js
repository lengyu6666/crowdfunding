//Load Express module
const express = require('express')
// Introduce an allFun module to point to the routing processor file in the project
const allFun = require("../router-handle/all-fun");
//Create a new Express router instance. This router can be used to define a series of routes and their corresponding processing functions
const router = express.Router();
// Configuring different routes corresponds to different processing methods
router.get("/all/getAllUser",allFun.getAllUser)
router.get("/all/getAllCategory",allFun.getAllCategory)
router.get("/all/getUserByOther",allFun.getUserByOther)
router.get("/all/getUserById",allFun.getUserById)
router.post("/all/donationInsert",allFun.insertDonation)
router.post("/all/createFundraiser",allFun.createFundraiser)
router.delete("/all/fundraiserDelete",allFun.deleteFundraiser);
router.put("/all/updateFundraiser", allFun.updateFundraiser);
module.exports = router;