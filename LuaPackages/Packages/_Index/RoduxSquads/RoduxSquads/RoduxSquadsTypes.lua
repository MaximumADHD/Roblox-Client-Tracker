-- Models

export type ExperienceInviteModel = {
	experienceInviteId: string,
	version: number,
	inviterId: number,
	createdUtcMs: number,
	experienceDetail: {
		placeId: number,
		experienceResultStatus: string,
	},
	totalSpots: number,
	state: string,
	votes: { { userId: number, voteType: string } },
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

export type PartialSquadModel = {
	channelId: string,
	members: { string },
}

-- Reducer

export type CurrentSquad = SquadModel | nil

export type CurrentExperienceInvite = ExperienceInviteModel | nil

export type PartialSquads = { [string]: PartialSquadModel }

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

export type VoteForExperienceInviteSucceeded = {
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

export type PartialSquadAdded = {
	payload: {
		partialSquad: PartialSquadModel,
	},
}

export type PartialSquadRemoved = {
	payload: {
		channelId: string,
	},
}

return {}
