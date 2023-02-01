-- Models

export type ExperienceInviteModel = {
	created: number,
	inviteId: string,
	squadId: string,
	universeId: string,
	responses: {
		[number]: boolean,
	},
}

export type NotificationToastModel = {
	notificationId: number,
	title: string,
	subtext: string,
	description: string,
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
	inviteLinkToken: string,
	members: { SquadMemberModel },
}

-- Reducer

export type CurrentSquad = SquadModel | nil

export type ExperienceInviteByCreated = {
	[number]: ExperienceInviteModel,
}

export type NotificationToast = {
	[number]: NotificationToastModel,
}

export type SquadInviteByCreated = {
	[number]: SquadInviteModel,
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

export type SquadInviteUpdatedAction = {
	payload: {
		squadInvite: SquadInviteModel,
	},
}

export type ExperienceInviteRemovedAction = {
	payload: {
		inviteId: string,
	},
}

export type ExperienceInviteUpdatedAction = {
	payload: {
		experienceInvite: ExperienceInviteModel,
	},
}

export type ExperienceInviteRespondedAction = {
	payload: {
		inviteId: string,
		userId: number,
		response: boolean,
	},
}

export type NotificationToastAddedAction = {
	payload: {
		notificationToast: NotificationToastModel,
	},
}

export type NotificationToastClearedAction = {
	payload: {
		notificationId: number,
	},
}

return {}
