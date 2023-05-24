-- Shared

export type CallInfo = {
	callId: string,
	participants: { [string]: ParticipantModel },
	experienceDetail: ExperienceDetailModel,
}

-- Models

export type HistoricalParticipantModel = { userId: number, displayName: string, userName: string }

export type ParticipantModel = { userId: number, displayName: string }

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
	participants: { HistoricalParticipantModel },
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

export type StartCallAction = {
	payload: {
		callInfo: CallInfo,
	},
}

export type EndCallAction = {
	payload: nil,
}

export type ConnectingCallAction = {
	payload: {
		callInfo: CallInfo,
	},
}

export type UpdateCallAction = {
	payload: {
		call: CallModel,
	},
}

export type CurrentCall = CallModel | nil

return {}
