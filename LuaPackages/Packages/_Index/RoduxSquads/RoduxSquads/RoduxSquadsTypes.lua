-- Models

export type ExperienceInviteModel = {
	created: number,
	inviteId: number,
	squadId: string,
	universeId: string,
}

export type SquadInviteModel = {
	inviterUserId: number,
	squad: SquadModel,
}

export type SquadModel = {
	created: number,
	updated: number,
	squadId: string,
	members: { number },
}

-- Reducer

export type ExperienceInviteByCreated = {
	[number]: ExperienceInviteModel,
}

export type SquadInviteByCreated = {
	[number]: SquadInviteModel,
}

export type CurrentSquad = {
	CurrentSquad: SquadModel,
}

-- Action

export type CreateSquadSucceeded = {
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

export type SquadInviteUpdatedAction = {
	payload: {
		squadInvite: SquadInviteModel,
	},
}

export type ExperienceInviteRemovedAction = {
	payload: {
		inviteId: number,
	},
}

export type ExperienceInviteUpdatedAction = {
	payload: {
		experienceInvite: ExperienceInviteModel,
	},
}

return {}
