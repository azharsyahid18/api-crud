[33mcommit 8dacabffba9030730390f978efcacaacfbccfebe[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmaster[m[33m)[m
Author: AIIA\itd.magang02 <azharsyahid.2021@student.uny.ac.id>
Date:   Tue Feb 4 15:21:58 2025 +0700

    Perubahan add

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..10bd421[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m# Exclude node_modules directory[m
[32m+[m[32mnode_modules/[m
[32m+[m[32m.env[m
\ No newline at end of file[m
[1mdiff --git a/index.js b/index.js[m
[1mnew file mode 100644[m
[1mindex 0000000..7d26f96[m
[1m--- /dev/null[m
[1m+++ b/index.js[m
[36m@@ -0,0 +1,79 @@[m
[32m+[m[32mconst express = require('express');[m
[32m+[m[32mconst dotenv = require('dotenv');[m
[32m+[m[32mconst { PrismaClient } = require("@prisma/client");[m
[32m+[m[32mconst cors = require("cors");[m
[32m+[m
[32m+[m[32m//konfigurasi dan inilisasi[m
[32m+[m[32mdotenv.config();[m
[32m+[m
[32m+[m[32mconst app = express();[m
[32m+[m[32mconst prisma = new PrismaClient();[m
[32m+[m
[32m+[m[32mapp.use(express.json()); // Memungkinkan aplikasi untuk membaca JSON dalam body request[m
[32m+[m[32mapp.use(cors());  // Mengaktifkan CORS agar API bisa diakses dari berbagai domain[m
[32m+[m
[32m+[m[32m//route awal[m
[32m+[m[32mapp.get('/', (req, res) => {[m
[32m+[m[32m  res.send('Selamat anda berhasil!')[m
[32m+[m[32m})[m
[32m+[m
[32m+[m
[32m+[m[32m//mengambil semua data user pada tabel user[m
[32m+[m[32mapp.get("/users", async (req, res) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const users = await prisma.user.findMany();[m
[32m+[m[32m    res.json(users);[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ error: "Terjadi kesalahan" });[m
[32m+[m[32m  }[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mapp.get("/users/:id", async (req, res) => {[m
[32m+[m[32m  const { id } = req.params;[m
[32m+[m[32m  try {[m
[32m+[m[32m    const user = await prisma.user.findUnique({ where: { id: Number(id) } });[m
[32m+[m[32m    if (!user) return res.status(404).json({ error: "User tidak ditemukan" });[m
[32m+[m[32m    res.json(user);[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ error: "Terjadi kesalahan" });[m
[32m+[m[32m  }[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mapp.post("/users", async (req, res) => {[m
[32m+[m[32m  const { name, email } = req.body;[m
[32m+[m[32m  try {[m
[32m+[m[32m    const newUser = await prisma.user.create({ data: { name, email } });    //Menambahkan user data padauser[m
[32m+[m[32m    res.json(newUser);[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ error: "Gagal menambahkan data" });[m
[32m+[m[32m  }[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mapp.put("/users/:id", async (req, res) => {[m
[32m+[m[32m  const { id } = req.params;[m
[32m+[m[32m  const { name, email } = req.body;           //mengupdate data user[m
[32m+[m[32m  try {[m
[32m+[m[32m    const updatedUser = await prisma.user.update({[m
[32m+[m[32m      where: { id: Number(id) },[m
[32m+[m[32m      data: { name, email },[m
[32m+[m[32m    });[m
[32m+[m[32m    res.json(updatedUser);[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ error: "Gagal mengupdate data" });[m
[32m+[m[32m  }[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mapp.delete("/users/:id", async (req, res) => {[m
[32m+[m[32m  const { id } = req.params;[m
[32m+[m[32m  try {[m
[32m+[m[32m    await prisma.user.delete({ where: { id: Number(id) } }); //Menghapus dara user[m
[32m+[m[32m    res.json({ message: "Data berhasil dihapus" });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ error: "Gagal menghapus data" });[m
[32m+[m[32m  }[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mconst PORT = process.env.PORT || 3000; // Port yang digunakan adalah 3000[m[41m  [m
[32m+[m[32mapp.listen(PORT, () => {[m[41m                                            [m
[32m+[m[32m  console.log(`Server berjalan nih di http://localhost:${PORT}`);[m
[32m+[m[32m});[m
[1mdiff --git a/middlewares/auth.js b/middlewares/auth.js[m
[1mnew file mode 100644[m
[1mindex 0000000..b7eeef9[m
[1m--- /dev/null[m
[1m+++ b/middlewares/auth.js[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32mconst jwt = require('jsonwebtoken');[m
[32m+[m[32mconst secretKey = "sangatrahasiasekali"; // password agar token aman[m
[32m+[m
[32m+[m
[32m+[m[32mmodule.exports = (req, res, next) => {[m
[32m+[m[32m    const token = req.header("Authorization");[m
[32m+[m[32m    if (!token) return res.status(401).json({ error: "Akses ditolak gan, tokenya belum ada!" });[m
[32m+[m
[32m+[m[32m    try {[m
[32m+[m[32m        const verified = jwt.verify(token.replace("Bearer ", ""), secretKey);[m
[32m+[m[32m        req.user = verified;[m
[32m+[m[32m        next();[m
[32m+[m[32m    } catch (error) {[m
[32m+[m[32m        res.status(400).json({ error: "Token tidak valid" });[m
[32m+[m[32m    }[m
[32m+[m[32m};[m
[1mdiff --git a/npx-prisma-migrate-dev-name-init/package-lock.json b/npx-prisma-migrate-dev-name-init/package-lock.json[m
[1mnew file mode 100644[m
[1mindex 0000000..3916276[m
[1m--- /dev/null[m
[1m+++ b/npx-prisma-migrate-dev-name-init/package-lock.json[m
[36m@@ -0,0 +1,4830 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "name": "npx prisma migrate dev --name init",[m
[32m+[m[32m  "version": "1.0.0",[m
[32m+[m[32m  "lockfileVersion": 3,[m
[32m+[m[32m  "requires": true,[m
[32m+[m[32m  "packages": {[m
[32m+[m[32m    "": {[m
[32m+[m[32m      "name": "npx prisma migrate dev --name init",[m
[32m+[m[32m      "version": "1.0.0",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@swc-node/register": "^1.10.9",[m
[32m+[m[32m        "@swc/cli": "^0.6.0",[m
[32m+[m[32m        "@swc/core": "^1.10.12",[m
[32m+[m[32m        "@swc/helpers": "^0.5.15",[m
[32m+[m[32m        "@tsed/ajv": "^8.4.6",[m
[32m+[m[32m        "@tsed/barrels": "^6.1.11",[m
[32m+[m[32m        "@tsed/core": "^8.4.6",[m
[32m+[m[32m        "@tsed/di": "^8.4.6",[m
[32m+[m[32m        "@tsed/engines": "^8.4.6",[m
[32m+[m[32m        "@tsed/exceptions": "^8.4.6",[m
[32m+[m[32m        "@tsed/json-mapper": "^8.4.6",[m
[32m+[m[32m        "@tsed/logger": "^7.0.1",[m
[32m+[m[32m        "@tsed/openspec": "^8.4.6",[m
[32m+[m[32m        "@tsed/platform-cache": "^8.4.6",[m
[32m+[m[32m        "@tsed/platform-exceptions": "^8.4.6",[m
[32m+[m[32m        "@tsed/platform-express": "^8.4.6",[m
[32m+[m[32m        "@tsed/platform-http": "^8.4.6",[m
[32m+[m[32m        "@tsed/platform-log-request": "^8.4.6",[m
[32m+[m[32m        "@tsed/platform-middlewares": "^8.4.6",[m
[32m+[m[32m        "@tsed/platform-params": "^8.4.6",[m
[32m+[m[32m        "@tsed/platform-response-filter": "^8.4.6",[m
[32m+[m[32m        "@tsed/platform-views": "^8.4.6",[m
[32m+[m[32m        "@tsed/schema": "^8.4.6",[m
[32m+[m[32m        "ajv": "^8.17.1",[m
[32m+[m[32m        "body-parser": "^1.20.3",[m
[32m+[m[32m        "compression": "^1.7.5",[m
[32m+[m[32m        "cookie-parser": "^1.4.7",[m
[32m+[m[32m        "cors": "^2.8.5",[m
[32m+[m[32m        "cross-env": "^7.0.3",[m
[32m+[m[32m        "dotenv": "^16.4.7",[m
[32m+[m[32m        "dotenv-expand": "^12.0.1",[m
[32m+[m[32m        "dotenv-flow": "^4.1.0",[m
[32m+[m[32m        "express": "^4.21.2",[m
[32m+[m[32m        "method-override": "^3.0.0",[m
[32m+[m[32m        "prisma": "^6.3.0",[m
[32m+[m[32m        "typescript": "^5.7.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@emnapi/core": {[m
[32m+[m[32m      "version": "1.3.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@emnapi/core/-/core-1.3.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-pVGjBIt1Y6gg3EJN8jT