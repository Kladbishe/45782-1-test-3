import { Router } from "express";
import paramValidation from "../middlewares/param-validation";
import validation from "../middlewares/validation";
import { createMeetingValidator, meetingsByTeamValidator } from "../controllers/meetings/validator";
import { createMeeting, filterByTeam } from "../controllers/meetings/controller";

const router = Router()

router.get("/by-team/:id",paramValidation(meetingsByTeamValidator) ,filterByTeam)

router.post('/', validation(createMeetingValidator), createMeeting)

export default router