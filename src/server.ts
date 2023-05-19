import "dotenv/config";
import cors from "cors";
import express from "express"
import Rotas from "./index.routes";

express()
.use(express.json())
.use(cors())
.use("/api", Rotas)
.listen(process.env.SERVER_PORT, () => {
    console.log(`Server is running on: http://localhost:${process.env.SERVER_PORT}/api/`);
});