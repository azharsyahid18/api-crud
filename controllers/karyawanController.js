const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

//mengambil data semua karyawan
exports.getAllKaryawan = async (req, res) => {
  try {
    const karyawan = await prisma.karyawan.findMany();
    res.json(karyawan);
  } catch (error) {
    res.status(500).json({ error: "Gagal mengambil data karyawan" });
  }
};

// ✅ Ambil data karyawan berdasarkan ID
exports.getKaryawanById = async (req, res) => {
  const { id } = req.params;
  try {
    const karyawan = await prisma.karyawan.findUnique({ where: { id } });
    if (!karyawan) return res.status(404).json({ error: "Karyawan tidak ditemukan" });
    res.json(karyawan);
  } catch (error) {
    res.status(500).json({ error: "Gagal mengambil data karyawan" });
  }
};

// ✅ Tambahkan karyawan baru
exports.createKaryawan = async (req, res) => {
  const { name, email, posisi } = req.body;
  try {
    const newKaryawan = await prisma.karyawan.create({ data: { name, email, posisi } });
    res.json(newKaryawan);
  } catch (error) {
    res.status(500).json({ error: "Gagal menambahkan karyawan" });
  }
};

// ✅ Update data karyawan berdasarkan ID
exports.updateKaryawan = async (req, res) => {
  const { id } = req.params;
  const { name, email, posisi } = req.body;
  try {
    const updatedKaryawan = await prisma.karyawan.update({
      where: { id: parseInt(id) },
      data: { name, email, posisi },
    });
    res.json(updatedKaryawan);
  } catch (error) {
    res.status(500).json({ error: "Gagal memperbarui data karyawan" });
  }const { PrismaClient } = require("@prisma/client");
  const prisma = new PrismaClient();
  
  // ✅ Ambil semua data karyawan
  exports.getAllKaryawan = async (req, res) => {
    try {
      const karyawan = await prisma.karyawan.findMany();
      res.json(karyawan);
    } catch (error) {
      res.status(500).json({ error: "Gagal mengambil data karyawan" });
    }
  };
  
  // ✅ Ambil data karyawan berdasarkan ID
  exports.getKaryawanById = async (req, res) => {
    const { id } = req.params;
    try {
      const karyawan = await prisma.karyawan.findUnique({ where: { id } });
      if (!karyawan) return res.status(404).json({ error: "Karyawan tidak ditemukan" });
      res.json(karyawan);
    } catch (error) {
      res.status(500).json({ error: "Gagal mengambil data karyawan" });
    }
  };
  
  // ✅ Tambahkan karyawan baru
  exports.createKaryawan = async (req, res) => {
    const { name, email, posisi } = req.body;
    try {
      const newKaryawan = await prisma.karyawan.create({ data: { name, email, posisi } });
      res.json(newKaryawan);
    } catch (error) {
      res.status(500).json({ error: "Gagal menambahkan karyawan" });
    }
  };
  
  // ✅ Update data karyawan berdasarkan ID
  exports.updateKaryawan = async (req, res) => {
    const { id } = req.params;
    const { name, email, posisi } = req.body;
    try {
      const updatedKaryawan = await prisma.karyawan.update({
        where: { id:parseInt(id) },
        data: { name, email, posisi },
      });
      res.json(updatedKaryawan);
    } catch (error) {
      res.status(500).json({ error: "Gagal memperbarui data karyawan" });
    }
  };
  
  // ✅ Hapus karyawan berdasarkan ID
  exports.deleteKaryawan = async (req, res) => {
    const { id } = req.params;
    try {
      await prisma.karyawan.delete({ where: { id } });
      res.json({ message: "Karyawan berhasil dihapus" });
    } catch (error) {
      res.status(500).json({ error: "Gagal menghapus karyawan" });
    }
  };
  
};

// ✅ Hapus karyawan berdasarkan ID
exports.deleteKaryawan = async (req, res) => {
  const { id } = req.params;
  try {
    await prisma.karyawan.delete({ where: { id } });
    res.json({ message: "Karyawan berhasil dihapus" });
  } catch (error) {
    res.status(500).json({ error: "Gagal menghapus karyawan" });
  }
};
