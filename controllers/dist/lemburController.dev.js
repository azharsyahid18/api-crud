"use strict";

var _require = require("@prisma/client"),
    PrismaClient = _require.PrismaClient;

var prisma = new PrismaClient(); // Ambil semua data lembur

exports.getAllLembur = function _callee(req, res) {
  var lembur;
  return regeneratorRuntime.async(function _callee$(_context) {
    while (1) {
      switch (_context.prev = _context.next) {
        case 0:
          _context.prev = 0;
          _context.next = 3;
          return regeneratorRuntime.awrap(prisma.lembur.findMany({
            include: {
              karyawan: true
            }
          }));

        case 3:
          lembur = _context.sent;
          res.json(lembur);
          _context.next = 10;
          break;

        case 7:
          _context.prev = 7;
          _context.t0 = _context["catch"](0);
          res.status(500).json({
            error: "Gagal mengambil data lembur"
          });

        case 10:
        case "end":
          return _context.stop();
      }
    }
  }, null, null, [[0, 7]]);
}; //  Ambil data lembur berdasarkan ID


exports.getLemburById = function _callee2(req, res) {
  var id, lembur;
  return regeneratorRuntime.async(function _callee2$(_context2) {
    while (1) {
      switch (_context2.prev = _context2.next) {
        case 0:
          id = req.params.id;
          _context2.prev = 1;
          _context2.next = 4;
          return regeneratorRuntime.awrap(prisma.lembur.findUnique({
            where: {
              id: id
            },
            include: {
              karyawan: true
            }
          }));

        case 4:
          lembur = _context2.sent;

          if (lembur) {
            _context2.next = 7;
            break;
          }

          return _context2.abrupt("return", res.status(404).json({
            error: "Data lembur tidak ditemukan"
          }));

        case 7:
          res.json(lembur);
          _context2.next = 13;
          break;

        case 10:
          _context2.prev = 10;
          _context2.t0 = _context2["catch"](1);
          res.status(500).json({
            error: "Gagal mengambil data lembur"
          });

        case 13:
        case "end":
          return _context2.stop();
      }
    }
  }, null, null, [[1, 10]]);
}; //  menambahkan data lembur yang  baru


exports.createLembur = function _callee3(req, res) {
  var _req$body, karyawanId, tanggal, durasi, keterangan, newLembur;

  return regeneratorRuntime.async(function _callee3$(_context3) {
    while (1) {
      switch (_context3.prev = _context3.next) {
        case 0:
          _req$body = req.body, karyawanId = _req$body.karyawanId, tanggal = _req$body.tanggal, durasi = _req$body.durasi, keterangan = _req$body.keterangan;
          _context3.prev = 1;
          _context3.next = 4;
          return regeneratorRuntime.awrap(prisma.lembur.create({
            data: {
              karyawanId: karyawanId,
              tanggal: new Date(tanggal),
              durasi: durasi,
              keterangan: keterangan
            }
          }));

        case 4:
          newLembur = _context3.sent;
          res.json(newLembur);
          _context3.next = 12;
          break;

        case 8:
          _context3.prev = 8;
          _context3.t0 = _context3["catch"](1);
          console.error("Error createLembur:", _context3.t0);
          res.status(500).json({
            error: "Gagal menambahkan data lembur"
          });

        case 12:
        case "end":
          return _context3.stop();
      }
    }
  }, null, null, [[1, 8]]);
}; // Update data lembur berdasarkan ID


exports.updateLembur = function _callee4(req, res) {
  var id, _req$body2, karyawanId, tanggal, durasi, keterangan, updatedLembur;

  return regeneratorRuntime.async(function _callee4$(_context4) {
    while (1) {
      switch (_context4.prev = _context4.next) {
        case 0:
          id = req.params.id;
          _req$body2 = req.body, karyawanId = _req$body2.karyawanId, tanggal = _req$body2.tanggal, durasi = _req$body2.durasi, keterangan = _req$body2.keterangan;
          _context4.prev = 2;
          _context4.next = 5;
          return regeneratorRuntime.awrap(prisma.lembur.update({
            where: {
              id: id
            },
            data: {
              karyawanId: karyawanId,
              tanggal: new Date(tanggal),
              durasi: durasi,
              keterangan: keterangan
            }
          }));

        case 5:
          updatedLembur = _context4.sent;
          res.json(updatedLembur);
          _context4.next = 12;
          break;

        case 9:
          _context4.prev = 9;
          _context4.t0 = _context4["catch"](2);
          res.status(500).json({
            error: "Gagal memperbarui data lembur"
          });

        case 12:
        case "end":
          return _context4.stop();
      }
    }
  }, null, null, [[2, 9]]);
}; // Hapus data lembur berdasarkan ID


exports.deleteLembur = function _callee5(req, res) {
  var id;
  return regeneratorRuntime.async(function _callee5$(_context5) {
    while (1) {
      switch (_context5.prev = _context5.next) {
        case 0:
          id = req.params.id;
          _context5.prev = 1;
          _context5.next = 4;
          return regeneratorRuntime.awrap(prisma.lembur["delete"]({
            where: {
              id: id
            }
          }));

        case 4:
          res.json({
            message: "Data lembur berhasil dihapus"
          });
          _context5.next = 10;
          break;

        case 7:
          _context5.prev = 7;
          _context5.t0 = _context5["catch"](1);
          res.status(500).json({
            error: "Gagal menghapus data lembur"
          });

        case 10:
        case "end":
          return _context5.stop();
      }
    }
  }, null, null, [[1, 7]]);
};