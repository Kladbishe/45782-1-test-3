import axios from "axios"
import type { Meeting } from "../models/Meeting"
import type { MeetingDraft } from "../models/Meeting-draft"

class MeetingService {
    async getByTeamId(id: string): Promise<Meeting[]> {
        const { data } = await axios.get<Meeting[]>(`${import.meta.env.VITE_REST_SERVER_URL}/meetings/by-team/${id}`)
        return data
    }

    async create(draft: MeetingDraft): Promise<Meeting> {
        const { data } = await axios.post<Meeting>(`${import.meta.env.VITE_REST_SERVER_URL}/meetings/`, draft)
        return data
    }
}

const meetingService = new MeetingService()
export default meetingService