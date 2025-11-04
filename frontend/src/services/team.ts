import axios from "axios"

import type { Team } from "../models/Team";


class TeamsService {
    async getAll(): Promise<Team[]> {
        const { data } = await axios.get<Team[]>(`${import.meta.env.VITE_REST_SERVER_URL}/teams`);
        return data;
    }
}
const teamService = new TeamsService();
export default teamService

