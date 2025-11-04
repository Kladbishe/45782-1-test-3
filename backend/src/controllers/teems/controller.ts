import { NextFunction, Request, Response } from "express";

import Teems from "../../models/Teems";


export async function getAll(req: Request, res: Response, next: NextFunction) {
    try{
        const teems = await Teems.findAll()
        res.json(teems)
    }catch(e){
        next(e)
    }
}