import { Router } from "express";
import express, {Request, Response } from 'express';
import { PrismaClient } from "@prisma/client";

const prismaClient = new PrismaClient();

export default Router()
.get("/recuperar_processos", (async (req: Request, res: Response) => {

    const {
        numero_processo,
        cpf,
        nome_completo
    } = req.body

    const processos = await prismaClient.processo.findMany()

    return res.status(200).json(processos)
}))

.get("/recuperar_intimacoes", (async (req: Request, res: Response) => {

    const intimacoes = await prismaClient.intimacao.findMany()

    return res.status(200).json(intimacoes)
}))

.post("/add_processos", (async (req: Request, res: Response) => {

    const {
        peticao_inicial,
        cpf,
        data_nascimento,
        nome_demandante,
        endereco_demandante,
        valor_acao,
        nome_demandado,
        endereco_demandado,
    } = req.body

    await prismaClient.processo.create({
        data: {
            peticao_inicial,
            cpf,
            data_nascimento,
            nome_demandante,
            endereco_demandante,
            valor_acao,
            nome_demandado,
            endereco_demandado,
        }
    })

    return res.status(200).sendStatus(200)
}))

.post("/add_ouvidoria", (async (req: Request, res: Response) => {
    const { 
    cpf,
    nome,
    data_nascimento,
    email,
    mensagem
    } = req.body

    await prismaClient.ouvidoria.create({
        data: {
            cpf,
            nome,
            data_nascimento,
            email,
            mensagem
        }
    })

    return res.status(200).sendStatus(200)
    
}))

.post("/logar", (async (req: Request, res: Response) => {
    const {
        cpf,
        senha
    } = req.body;

    const user = await prismaClient.usuario.findUnique({
        where: { cpf }
    })
    
    if(!user) {
        return res.status(404).sendStatus(404)
    } else {
        if (user.cpf === cpf && user.senha === senha) {
            return res.status(200).sendStatus(200)
        } else {
            return res.status(401).sendStatus(401)
        }
    }
}))




