const express = require('express');
const dotenv = require('dotenv');
const { PrismaClient } = require("@prisma/client");
const cors = require("cors");
const bodyParser = require('body-parser');


//konfigurasi dan inilisasi
dotenv.config();

const app = express();
const prisma = new PrismaClient();

app.use(express.json()); // Memungkinkan aplikasi untuk membaca JSON dalam body request
app.use(cors());  // Mengaktifkan CORS agar API bisa diakses dari berbagai domain
app.use(bodyParser.json());

//route awal
app.get('/selamat', (req, res) => {
  res.send('Selamat anda berhasil masuk!')
})


//mengambil semua data karyawan pada tabel karyawan
app.get("/karyawan", async (req, res) => {
  try {
    const karyawan = await prisma.karyawan.findMany();
    res.json(karyawan);
  } catch (error) {
    res.status(500).json({ error: "Terjadi kesalahan" });
  }
});

app.get("/karyawan/:id", async (req, res) => {
  const {id} = req.params;
  try {
    const karyawan = await prisma.karyawan.findUnique({ where: {id} });
    if (!karyawan) return res.status(404).json({ error: "Data karyawan tidak ditemukan" });
    res.json(karyawan);
  } catch (error) {
    res.status(500).json({ error: "Terjadi kesalahan saat mengambil data karyawan" });
  }
});

app.post("/karyawan", async (req, res) => {
  const { name, email, posisi} = req.body;
  try {
    const newkaryawan = await prisma.karyawan.create({ data: { name, email } });    //Menambahkan karyawan data padakaryawan
    res.json(newkaryawan);
  } catch (error) {
    res.status(500).json({ error: "Gagal menambahkan data. Silahkan coba lagi" });
  }
});

app.put("/karyawan/:id", async (req, res) => {
  const { id } = req.params;
  const { name, email, posisi} = req.body;           //mengupdate data karyawan
  try {
    const updatedkaryawan = await prisma.karyawan.update({
      where: { id  },
      data: { name, email },
    });
    res.json(updatedkaryawan);
  } catch (error) {
    res.status(500).json({ error: "Gagal mengupdate data" });
  }
});

app.delete("/karyawan/:id", async (req, res) => {
  const { id } = req.params;
  try {
    await prisma.karyawan.delete({ where: { id } }); //Menghapus data karyawan
    res.json({ message: "Data berhasil dihapus" });
  } catch (error) {
    res.status(500).json({ error: "Gagal menghapus data" });
  }
});

const PORT = process.env.PORT || 5000; // Port yang digunakan adalah 5000
app.listen(PORT, () => {                                            
  console.log(`Server berjalan nih di http://localhost:${PORT}`);
});


const authMiddleware = require("../middlewares/authMiddleware");

router.get("/", authMiddleware, async (req, res) => {
  try {
    const karyawan = await prisma.karyawan.findMany();
    res.json(karyawan);
  } catch (error) {
    res.status(500).json({ error: "Terjadi kesalahan saat mengambil data karyawan" });
  }
});

