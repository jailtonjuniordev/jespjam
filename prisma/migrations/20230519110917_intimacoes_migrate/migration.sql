/*
  Warnings:

  - You are about to drop the `Intimacao` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Intimacao";

-- CreateTable
CREATE TABLE "intimacao" (
    "id" TEXT NOT NULL,
    "titulo" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,

    CONSTRAINT "intimacao_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "intimacao_id_key" ON "intimacao"("id");
