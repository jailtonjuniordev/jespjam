/*
  Warnings:

  - Added the required column `valor_acao` to the `processos` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "processos" ADD COLUMN     "valor_acao" TEXT NOT NULL;
