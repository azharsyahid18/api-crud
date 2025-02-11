const express = require('express');
const dotenv = require('dotenv');
const { PrismaClient } = require("@prisma/client");
const cors = require("cors");
const bodyParser = require("body-parser");
const multer = require('multer');
const authMiddleware = require('./middlewares/auth');
const karyawanRoutes = require('./routes/karyawanRoutes');
const lemburRoutes = require('./routes/lemburRoutes');

// Konfigurasi dan inisialisasi
dotenv.config();

const app = express();
const prisma = new PrismaClient();
const upload = multer();

// Middleware
app.use(express.json());
app.use(cors());
app.use(bodyParser.json());

// Route awal
app.get('/selamat', (req, res) => {
  res.send('Selamat anda berhasil masuk!');
});

// Gunakan routes dari folder "routes"
app.use("/api/karyawan", karyawanRoutes);
app.use("/api/lembur", lemburRoutes);

const PORT = process.env.PORT ||4500;
app.listen(PORT, () => {                                            
  console.log(`Server berjalan di http://localhost:${PORT}`);
});
