import { Router } from "express";
import { getAll } from "../controllers/teems/controller";


const router = Router()

router.get("/", getAll)


export default router