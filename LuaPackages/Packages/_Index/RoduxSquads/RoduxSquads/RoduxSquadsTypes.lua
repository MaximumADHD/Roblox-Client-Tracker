-- Models

export type ExperienceInviteModel = {
	createdUtc: number,
	inviteId: string,
	inviteState: string,
	responses: { [string]: string },
	squadId: string,
	universeId: string,
}

export type SquadInviteModel = {
	inviterUserId: number,
	squad: SquadModel,
}

export type SquadMemberModel = {
	userId: number,
	status: string,
}

export type SquadModel = {
	createdUtc: number, -- Milliseconds
	updatedUtc: number, -- Milliseconds
	squadId: string,
	members: { SquadMemberModel },
}

-- Reducer

export type CurrentSquad = SquadModel | nil

export type CurrentExperienceInvite = ExperienceInviteModel | nil

export type NavigationTopBar = {
	topBarOpacity: number,
}

-- Action

export type CreateSquadSucceeded = {
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
