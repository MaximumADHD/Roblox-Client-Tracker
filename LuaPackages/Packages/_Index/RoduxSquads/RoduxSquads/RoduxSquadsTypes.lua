-- Models

export type ExperienceInviteModel = {
	experienceInviteId: string,
	version: number,
	inviterId: number,
	createdTimestamp: number,
	decisionTimestamp: number,
	universeId: number,
	placeId: number,
	totalSpots: number,
	inviteState: string,
	responses: { { userId: number, response: string } },
}

export type SquadMemberModel = {
	userId: number,
	rank: number,
}

export type SquadModel = {
	squadId: string,
	initiatorId: number,
	createdUtc: number, -- Milliseconds
	channelId: string,
	members: { SquadMemberModel },
}

-- Reducer

export type CurrentSquad = SquadModel | nil

export type CurrentExperienceInvite = ExperienceInviteModel | nil

export type NavigationTopBar = {
	topBarOpacity: number,
}

-- Action

export type CreateOrJoinSquadSucceeded = {
	responseBody: {
		squad: SquadModel,
	},
}

export type GetSquadActiveSucceeded = {
	responseBody: {
		squad: SquadModel,
	},
}

export type GetSquadFromSquadIdSucceeded = {
	responseBody: {
		squad: SquadModel,
	},
}

export type JoinSquadSucceeded = {
	responseBody: {
		squad: SquadModel,
	},
}

export type LeaveSquadSucceeded = {
	ids: { number },
	responseBody: {},
}

export type SquadRemoveSucceeded = {
	responseBody: {
		squad: SquadModel,
	},
}

export type CreateExperienceInviteSucceeded = {
	responseBody: {
		experienceInvite: ExperienceInviteModel,
	},
}

export type GetExperienceInviteSucceeded = {
	responseBody: {
		experienceInvite: ExperienceInviteModel,
	},
}

export type RespondExperienceInviteSucceeded = {
	responseBody: {
		experienceInvite: ExperienceInviteModel,
	},
}

export type SquadUpdatedAction = {
	payload: {
		squad: SquadModel,
	},
}

export type ExperienceInviteUpdatedAction = {
	payload: {
		experienceInvite: ExperienceInviteModel,
	},
}

export type NavigationTopBarUpdatedAction = {
	payload: {
		topBarOpacity: number,
	},
}

return {}
