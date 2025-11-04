import { NextFunction, Request, Response } from "express";
import Teems from "../../models/Teems";
import Meetings from "../../models/Meetings";

export async function filterByTeam(req: Request<{id: string}>, res: Response, next: NextFunction) {
    try{
        const {meetings} = await Teems.findByPk(req.params.id,{
            include: [Meetings]
        })
        res.json(meetings)
    }catch(e){
        next(e)
    }
}

export async function createMeeting(req: Request, res: Response, next: NextFunction) {

    try {
        const newMeeting = await Meetings.create(req.body)
        await newMeeting.reload({include: Teems})
        res.json(newMeeting)
    } catch (e) {
        next(e)
    }
}

