const jwt = require('jsonwebtoken');
const { PrismaClient } = require('@prisma/client'); // Modul yang benar adalah '@prisma/client'
const prisma = new PrismaClient();
const bcrypt = require('bcryptjs');

// Controller untuk login/pintu masuk
exports.login = async (req, res) => {
  const { email, password } = req.body;

  try {
    // Cari user berdasarkan email
    const user = await prisma.karyawan.findUnique({ where: { email } });
    if (!user) {
      return res.status(404).json({ error: "Email karyawan tidak ditemukan" });
    }

    // Validasi password. Karena data disimpan dalam plain text, perbandingan dilakukan langsung.
    // (Catatan: Sangat disarankan untuk menggunakan hash pada password di database.)
    if (password !== user.password) {
      return res.status(401).json({ error: "Password anda salah" });
    }
    
    // Buat payload token
    const payload = {
      id: user.id,
      email: user.email,
    };

    // Generate token JWT menggunakan secret key dari environment variable
    const token = jwt.sign(payload, process.env.JWT_SECRET, {
      expiresIn: process.env.JWT_EXPIRES_IN || "10m", // Token berlaku 10 menit
    });

    res.json({ token });
  } catch (error) {
    console.error("Error saat login:", error);
    return res.status(500).json({ error: "Terjadi kesalahan saat login" });
  }
};
