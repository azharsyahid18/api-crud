const jwt = require('jsonwebtoken');
// Untuk konsistensi, gunakan environment variable juga untuk secret key:
const secretKey = process.env.JWT_SECRET || "sangatrahasiasekali";

module.exports = (req, res, next) => {
  const token = req.header("Authorization");  // Ambil token dari header
  if (!token) {
    return res.status(401).json({ error: "Akses ditolak gan, tokenya belum ada!" });
  }
  try {
    // Jika token dikirim dengan format "Bearer <token>", hapus prefix tersebut
    const tokenValue = token.startsWith("Bearer ") ? token.slice(7) : token;
    const verified = jwt.verify(tokenValue, secretKey);
    req.user = verified;
    console.log("Token valid, lanjut ke endpoint!");
    next();
  } catch (error) {
    console.log("Token tidak valid!", error.message);
    return res.status(403).json({ error: "Token tidak valid gan" });
  }
};
