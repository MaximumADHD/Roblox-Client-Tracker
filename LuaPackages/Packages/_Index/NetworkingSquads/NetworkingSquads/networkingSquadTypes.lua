--!strict
export type Config = {
	roduxNetworking: any,
	useMockedResponse: boolean,
}

export type CreateExperienceInviteRequest = {
	squadId: string,
	placeId: string,
	membershipEntityId: any, -- TODO: Temp field for mocking. Remove after.
}

export type CreateOrJoinSquadRequest = {
	channelId: string,
}

export type GetExperienceInviteRequest = {
	inviteId: number,
	mockedExperienceInvite: any, -- TODO: Temp field for mocking. Remove after.
}

export type GetSquadActiveRequest = {
	mockedSquad: any, -- TODO: Temp field for mocking. Remove after.
}

export type GetSquadFromSquadIdRequest = {
	squadId: string,
	mockedSquad: any, -- TODO: Temp field for mocking. Remove after.
}

export type JoinSquadRequest = {
	squadId: string,
	channelId: string, -- TODO: Temp field for mocking. Remove after.
}

export type LeaveSquadRequest = {
	squadId: string,
}

export type RespondExperienceInviteRequest = {
	inviteId: number,
	response: string,
	userId: number, -- TODO: Temp field for mocking. Remove after.
	mockedExperienceInvite: any, -- TODO: Temp field for mocking. Remove after.
}

export type SquadInviteRequest = {
	squadId: string,
	inviteeUserIds: { number },
	channelId: string, -- TODO: Temp field for mocking. Remove after.
}

export type RequestThunks = {
	CreateExperienceInvite: CreateExperienceInviteRequest,
	CreateOrJoinSquad: CreateOrJoinSquadRequest,
	GetExperienceInvite: GetExperienceInviteRequest,
	GetSquadActive: GetSquadActiveRequest,
	GetSquadFromSquadId: GetSquadFromSquadIdRequest,
	JoinSquad: JoinSquadRequest,
	LeaveSquad: LeaveSquadRequest,
	RespondExperienceInvite: RespondExperienceInviteRequest,
	SquadInvite: SquadInviteRequest,
}

return {}
