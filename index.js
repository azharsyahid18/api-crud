const express = require('express');
const dotenv = require('dotenv');
const { PrismaClient } = require("@prisma/client");
const cors = require("cors");

//konfigurasi dan inilisasi
dotenv.config();

const app = express();
const prisma = new PrismaClient();

app.use(express.json()); // Memungkinkan aplikasi untuk membaca JSON dalam body request
app.use(cors());  // Mengaktifkan CORS agar API bisa diakses dari berbagai domain

//route awal
app.get('/', (req, res) => {
  res.send('Selamat anda berhasil!')
})


//mengambil semua data user pada tabel user
app.get("/users", async (req, res) => {
  try {
    const users = await prisma.user.findMany();
    res.json(users);
  } catch (error) {
    res.status(500).json({ error: "Terjadi kesalahan" });
  }
});

app.get("/users/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const user = await prisma.user.findUnique({ where: { id: Number(id) } });
    if (!user) return res.status(404).json({ error: "User tidak ditemukan" });
    res.json(user);
  } catch (error) {
    res.status(500).json({ error: "Terjadi kesalahan" });
  }
});

app.post("/users", async (req, res) => {
  const { name, email } = req.body;
  try {
    const newUser = await prisma.user.create({ data: { name, email } });    //Menambahkan user data padauser
    res.json(newUser);
  } catch (error) {
    res.status(500).json({ error: "Gagal menambahkan data" });
  }
});

app.put("/users/:id", async (req, res) => {
  const { id } = req.params;
  const { name, email } = req.body;           //mengupdate data user
  try {
    const updatedUser = await prisma.user.update({
      where: { id: Number(id) },
      data: { name, email },
    });
    res.json(updatedUser);
  } catch (error) {
    res.status(500).json({ error: "Gagal mengupdate data" });
  }
});

app.delete("/users/:id", async (req, res) => {
  const { id } = req.params;
  try {
    await prisma.user.delete({ where: { id: Number(id) } }); //Menghapus dara user
    res.json({ message: "Data berhasil dihapus" });
  } catch (error) {
    res.status(500).json({ error: "Gagal menghapus data" });
  }
});

const PORT = process.env.PORT || 3000; // Port yang digunakan adalah 3000  
app.listen(PORT, () => {                                            
  console.log(`Server berjalan nih di http://localhost:${PORT}`);
});
