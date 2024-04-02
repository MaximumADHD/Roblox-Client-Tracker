--!strict
export type Config = {
	roduxNetworking: any,
	useMockedResponse: boolean,
}

export type CreateExperienceInviteRequest = {
	squadId: string,
	placeId: string,
}

export type CreateSquadRequest = {
	userIds: { number },
}

export type GetExperienceInviteRequest = {
	inviteId: number,
}

export type GetSquadActiveRequest = {}

export type GetSquadFromSquadIdRequest = {
	squadId: string,
}

export type JoinSquadRequest = {
	squadId: string,
}

export type LeaveSquadRequest = {
	squadId: string,
}

export type RespondExperienceInviteRequest = {
	inviteId: number,
	response: string,
	userId: number, -- TODO: Temp field for mocking. Remove after.
}

export type SquadInviteRequest = {
	squadId: string,
	inviteeUserIds: { number },
}

export type SquadRemoveRequest = {
	squadId: string,
	userIdToRemove: number,
}

export type RequestThunks = {
	CreateExperienceInvite: CreateExperienceInviteRequest,
	CreateSquad: CreateSquadRequest,
	GetExperienceInvite: GetExperienceInviteRequest,
	GetSquadActive: GetSquadActiveRequest,
	GetSquadFromSquadId: GetSquadFromSquadIdRequest,
	JoinSquad: JoinSquadRequest,
	LeaveSquad: LeaveSquadRequest,
	RespondExperienceInvite: RespondExperienceInviteRequest,
	SquadInvite: SquadInviteRequest,
	SquadRemove: SquadRemoveRequest,
}

return {}
