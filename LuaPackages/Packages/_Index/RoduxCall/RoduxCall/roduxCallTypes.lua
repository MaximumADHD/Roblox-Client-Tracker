-- Shared

export type CallInfo = {
	callId: string,
	participants: { [string]: ParticipantModel },
	experienceDetail: ExperienceDetailModel,
}

-- Models

export type ParticipantModel = { userId: number, displayName: string, userName: string }

export type ExperienceDetailModel = {
	experienceName: string,
	placeId: string,
	gameInstanceId: string?,
	reservedServerAccessCode: string?,
}

export type CallRecordModel = {
	callId: string,
	callerId: number,
	startUtc: number,
	endUtc: number,
	participants: { ParticipantModel },
	status: string,
	universeId: number,
	placeId: number,
}

export type CallModel = {
	status: string,
} & CallInfo

-- Reducer

export type GetCallHistorySucceeded = {
	responseBody: {
		callRecords: {
			[number]: CallRecordModel,
		},
		nextPageCursor: string,
		previousPageCursor: string,
	},
}

export type CallHistory = {
	callRecords: { [number]: CallRecordModel },
	nextPageCursor: string,
	previousPageCursor: string,
}

export type CallActivatedAction = {
	payload: {
		callInfo: CallInfo,
	},
}

export type CallEndedAction = {
	payload: nil,
}

export type CallInitializedAction = {
	payload: {
		callInfo: CallInfo,
	},
}

export type CallUpdatedAction = {
	payload: {
		call: CallModel,
	},
}

export type CurrentCall = CallModel | nil

return {}
