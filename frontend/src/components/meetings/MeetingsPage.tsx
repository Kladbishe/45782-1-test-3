import "./MeetingsPage.css";
import { useEffect, useState, type ChangeEvent } from "react";
import type { Team } from "../../models/Team";
import type { Meeting } from "../../models/Meeting";
import teamService from "../../services/team";
import meetingService from "../../services/meeting";

export default function MeetingsPage() {




  const [teams, setTeams] = useState<Team[]>([]);
  const [selectedTeamId, setSelectedTeamId] = useState<string>("");
  const [meetings, setMeetings] = useState<Meeting[]>([]);




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




  useEffect(() => {
    (async () => {
      if (!selectedTeamId) return;
      try {
        const data = await meetingService.getByTeamId(selectedTeamId);
        setMeetings(data);
      } catch (e) {
        alert(e);
      }
    })();
  }, [selectedTeamId]);


  function handleTeamChange(event: ChangeEvent<HTMLSelectElement>) {
    setSelectedTeamId(event.currentTarget.value);
  }




  return (
    <div className="MeetingsPage">
      <div className="select">
        <select onChange={handleTeamChange} value={selectedTeamId}>
          <option value="" disabled hidden>Select a team...</option>
          {teams.map(({ id, name }) => (
            <option key={id} value={id}>
              {name}
            </option>
          ))}
        </select>
      </div>

      <div className="meeting">
                {selectedTeamId && (
                    <ul>
                        {meetings.map(({ id, description, startDate, endDate, room }) => (
                         <li key={id}>
                         <b>{description}</b> <br />
                         Start: {new Date(startDate).toLocaleString()} <br />
                         End: {new Date(endDate).toLocaleString()} <br />
                        Room: {room}
                        </li>
                        ))}
                    </ul>
                )}
      </div>
    </div>
  );
}
