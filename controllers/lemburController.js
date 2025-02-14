const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

// Ambil semua data lembur
exports.getAllLembur = async (req, res) => {
  try {
    const lembur = await prisma.lembur.findMany({ include: { karyawan: true } });
    res.json(lembur);
  } catch (error) {
    res.status(500).json({ error: "Gagal mengambil data lembur" });
  }
};

//  Ambil data lembur berdasarkan ID
exports.getLemburById = async (req, res) => {
  const { id } = req.params;
  try {
    const lembur = await prisma.lembur.findUnique({ where: { id }, include: { karyawan: true } });
    if (!lembur) return res.status(404).json({ error: "Data lembur tidak ditemukan" });
    res.json(lembur);
  } catch (error) {
    res.status(500).json({ error: "Gagal mengambil data lembur" });
  }
};

//  menambahkan data lembur yang  baru
exports.createLembur = async (req, res) => {
  const { karyawanId, tanggal, durasi, keterangan } = req.body;
  try {
    const newLembur = await prisma.lembur.create({
      data: { karyawanId, tanggal: new Date(tanggal), durasi, keterangan },
    });
    res.json(newLembur);
  } catch (error) {
    console.error("Error createLembur:", error);
    res.status(500).json({ error: "Gagal menambahkan data lembur" });
  }
};

// Update data lembur berdasarkan ID
exports.updateLembur = async (req, res) => {
  const { id } = req.params;
  const { karyawanId, tanggal, durasi, keterangan } = req.body;
  try {
    const updatedLembur = await prisma.lembur.update({
      where: { id },
      data: { karyawanId, tanggal: new Date(tanggal), durasi, keterangan },
    });
    res.json(updatedLembur);
  } catch (error) {
    res.status(500).json({ error: "Gagal memperbarui data lembur" });
  }
};

// Hapus data lembur berdasarkan ID
exports.deleteLembur = async (req, res) => {
  const { id } = req.params;
  try {
    await prisma.lembur.delete({ where: { id } });
    res.json({ message: "Data lembur berhasil dihapus" });
  } catch (error) {
    res.status(500).json({ error: "Gagal menghapus data lembur" });
  }
};
