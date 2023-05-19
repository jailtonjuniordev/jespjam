-- CreateTable
CREATE TABLE "usuarios" (
    "id" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "senha" TEXT NOT NULL,

    CONSTRAINT "usuarios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "processos" (
    "id" TEXT NOT NULL,
    "peticao_inicial" VARCHAR(5000) NOT NULL,
    "cpf" TEXT NOT NULL,
    "data_nascimento" TEXT NOT NULL,
    "nome_demandante" TEXT NOT NULL,
    "endereco_demandante" TEXT NOT NULL,
    "nome_demandado" TEXT NOT NULL,
    "endereco_demandado" TEXT NOT NULL,

    CONSTRAINT "processos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ouvidoria" (
    "id" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "data_nascimento" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "mensagem" VARCHAR(5000) NOT NULL,

    CONSTRAINT "ouvidoria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Intimacao" (
    "id" TEXT NOT NULL,
    "titulo" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,

    CONSTRAINT "Intimacao_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "usuarios_id_key" ON "usuarios"("id");

-- CreateIndex
CREATE UNIQUE INDEX "usuarios_cpf_key" ON "usuarios"("cpf");

-- CreateIndex
CREATE UNIQUE INDEX "processos_id_key" ON "processos"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ouvidoria_id_key" ON "ouvidoria"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Intimacao_id_key" ON "Intimacao"("id");
