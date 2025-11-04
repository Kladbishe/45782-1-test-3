import { Routes, Route, Navigate } from "react-router-dom";

import NotFound from "../not-found/NotFound";
import CreateMeeting from "../../create/CreateMeeting";
import MeetingsPage from "../../meetings/MeetingsPage";

export default function Main() {
  return (
    <Routes>
      <Route path="/" element={<Navigate to="/meetings" />} />
      <Route path="/meetings" element={<MeetingsPage />} />
      <Route path="/add" element={<CreateMeeting />} />
      <Route path="*" element={<NotFound />} />
    </Routes>
  );
}
