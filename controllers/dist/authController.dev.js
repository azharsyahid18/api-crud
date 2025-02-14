"use strict";

var jwt = require('jsonwebtoken');

var _require = require('@prisma/client'),
    PrismaClient = _require.PrismaClient; // Modul yang benar adalah '@prisma/client'


var prisma = new PrismaClient();

var bcrypt = require('bcryptjs'); // Controller untuk login/pintu masuk


exports.login = function _callee(req, res) {
  var _req$body, email, password, user, payload, token;

  return regeneratorRuntime.async(function _callee$(_context) {
    while (1) {
      switch (_context.prev = _context.next) {
        case 0:
          _req$body = req.body, email = _req$body.email, password = _req$body.password;
          _context.prev = 1;
          _context.next = 4;
          return regeneratorRuntime.awrap(prisma.karyawan.findUnique({
            where: {
              email: email
            }
          }));

        case 4:
          user = _context.sent;

          if (user) {
            _context.next = 7;
            break;
          }

          return _context.abrupt("return", res.status(404).json({
            error: "Email karyawan tidak ditemukan"
          }));

        case 7:
          if (!(password !== user.password)) {
            _context.next = 9;
            break;
          }

          return _context.abrupt("return", res.status(401).json({
            error: "Password anda salah"
          }));

        case 9:
          // Buat payload token
          payload = {
            id: user.id,
            email: user.email
          }; // Generate token JWT menggunakan secret key dari environment variable

          token = jwt.sign(payload, process.env.JWT_SECRET, {
            expiresIn: process.env.JWT_EXPIRES_IN || "10m" // Token berlaku 10 menit

          });
          res.json({
            token: token
          });
          _context.next = 18;
          break;

        case 14:
          _context.prev = 14;
          _context.t0 = _context["catch"](1);
          console.error("Error saat login:", _context.t0);
          return _context.abrupt("return", res.status(500).json({
            error: "Terjadi kesalahan saat login"
          }));

        case 18:
        case "end":
          return _context.stop();
      }
    }
  }, null, null, [[1, 14]]);
};