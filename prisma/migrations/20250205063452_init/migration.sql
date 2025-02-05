/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_authorId_fkey";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "Karyawan" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "posisi" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Karyawan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Lembur" (
    "id" TEXT NOT NULL,
    "karyawanId" TEXT NOT NULL,
    "tanggal" TIMESTAMP(3) NOT NULL,
    "durasi" INTEGER NOT NULL,
    "keterangan" TEXT NOT NULL,

    CONSTRAINT "Lembur_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Karyawan_email_key" ON "Karyawan"("email");

-- AddForeignKey
ALTER TABLE "Lembur" ADD CONSTRAINT "Lembur_karyawanId_fkey" FOREIGN KEY ("karyawanId") REFERENCES "Karyawan"("id") ON DELETE CASCADE ON UPDATE CASCADE;
