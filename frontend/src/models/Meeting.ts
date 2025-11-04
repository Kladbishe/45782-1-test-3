
import type { MeetingDraft } from "./Meeting-draft";

export interface Meeting extends MeetingDraft{
    id: string,
    createdAt: string
    updatedAt:string
}