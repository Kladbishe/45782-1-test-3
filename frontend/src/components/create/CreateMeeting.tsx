import "./CreateMeeting.css"
import { useEffect, useState } from "react";
import { useForm } from "react-hook-form";
import type { MeetingDraft } from "../../models/Meeting-draft";
import type { Team } from "../../models/Team";
import teamService from "../../services/team";
import meetingService from "../../services/meeting";
import { useNavigate } from "react-router-dom";

export default function CreateMeeting() {
  const [teams, setTeams] = useState<Team[]>([]);
  const { register, handleSubmit } = useForm<MeetingDraft>();
  const navigate = useNavigate();
  const now = new Date().toISOString().slice(0, 16); 



  useEffect(() => {
    (async () => {
      try {
        const data = await teamService.getAll();
        setTeams(data);
      } catch (e) {
        alert(e);
      }
    })();
  }, []);

    async function submit(draft:MeetingDraft){
        try{
            const newMeeting = await meetingService.create(draft)
            console.log(`${newMeeting}`)
            alert(`Meeting was added successfully!`)
            console.log('API base =', import.meta.env.VITE_REST_SERVER_URL);
            navigate(`/meetings`)
        }catch(e){
            alert(e)
        }
    }

return (
  <div className="CreateMeeting">
    <form onSubmit={handleSubmit(submit)}>
      <select {...register("teemsId", { required: true })} defaultValue="">
        <option value="" disabled hidden>
          Select team...
        </option>
        {teams.map(({ id, name }) => (
          <option key={id} value={id}>
            {name}
          </option>
        ))}
      </select>

      <label>Start of meeting:</label>
      <input type="datetime-local" {...register("startDate", { required: true })} />

      <label>End of meeting:</label>
      <input  min={now} type="datetime-local" {...register("endDate", { required: true })} />

      <label>Room:</label>
      <input  min={now} placeholder="Room name" {...register("room", { required: true })} />

      <label>Description:</label>
      <textarea placeholder="Description" {...register("description", { required: true })} />

      <button>Add meeting</button>
    </form>
  </div>
);

}
