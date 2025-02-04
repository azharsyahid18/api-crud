const jwt = require('jsonwebtoken');
const secretKey = "sangatrahasiasekali"; // password agar token aman


module.exports = (req, res, next) => {
    const token = req.header("Authorization");
    if (!token) return res.status(401).json({ error: "Akses ditolak gan, tokenya belum ada!" });

    try {
        const verified = jwt.verify(token.replace("Bearer ", ""), secretKey);
        req.user = verified;
        next();
    } catch (error) {
        res.status(400).json({ error: "Token tidak valid" });
    }
};
