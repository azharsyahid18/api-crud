const express = require("express");
const router = express.Router();
const lemburController = require("../controllers/lemburController");
const authMiddleware= require("../middlewares/auth");

router.get("/", authMiddleware, lemburController.getAllLembur);
router.get("/:id", authMiddleware, lemburController.getLemburById);
router.post("/", authMiddleware, lemburController.createLembur);
router.put("/:id", authMiddleware, lemburController.updateLembur);
router.delete("/:id", authMiddleware, lemburController.deleteLembur);

module.exports = router;
