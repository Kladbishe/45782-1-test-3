import Joi from "joi";

export const meetingsByTeamValidator = Joi.object({
    id: Joi.string().uuid().required()
})

export const createMeetingValidator = Joi.object({
    teemsId: Joi.string().uuid().required(),
    startDate: Joi.date().required(),
    endDate: Joi.date().required(),
    description: Joi.string().min(2).required(),
    room: Joi.string().min(2).required()
})
