const jwt = require('jsonwebtoken');
const secretKey = "sangatrahasiasekali"; // password agar token aman


module.exports = (req, res, next) => {
    const token = req.header("Authorization");  // Ambil token dari header
    if (!token)
         return res.status(401).json({ error: "Akses ditolak gan, tokenya belum ada!" });
    try {
        const verified = jwt.verify(token.replace("Bearer ", ""), secretKey);
        req.user = verified;
        console.log("Token valid, lanjut ke endpoint!"); // Debugging
        next();
    } catch (error) {
        console.log("Token tidak valid!"); // Debugging
        res.status(403).json({ error: "Token tidak valid gan" });
    }
};
