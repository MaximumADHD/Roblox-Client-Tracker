-- Shared

-- Models
export type SuggestedCalleeModel = {
	userId: number,
	userPresenceType: string,
	lastLocation: string,
}

export type HistoricalParticipantModel = { userId: number, displayName: string, userName: string }

export type CallAction =
	"Accept"
	| "AcceptSuccess"
	| "Cancel"
	| "ConnectionConfirm"
	| "Decline"
	| "Fail"
	| "Finish"
	| "Init"
	| "InitSuccess"
	| "Miss"
	| "Receive"
	| "Reject"
	| "Suppress"

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

export type CallStateModel = {
	status: string,
	callerId: number,
	calleeId: number,
	placeId: number?,
	reservedServerAccessCode: string?,
	callId: string?,
	callerDisplayName: string?,
	calleeDisplayName: string?,
	instanceId: string?,
}

-- Reducer

export type GetSuggestedCallees = {
	suggestedCallees: { [number]: SuggestedCalleeModel },
}

export type GetSuggestedCalleesSucceeded = {
	responseBody: {
		suggestedCallees: { [number]: SuggestedCalleeModel },
	},
}

export type GetCallHistorySucceeded = {
	responseBody: {
		callRecords: {
			[number]: CallRecordModel,
		},
		nextPageCursor: string,
		previousPageCursor: string,
	},
	queryArgs: {
		cursor: string?,
	},
}

export type CallHistory = {
	callRecords: { [number]: CallRecordModel },
	nextPageCursor: string,
	previousPageCursor: string,
}

export type StartCallAction = {
	payload: {
		call: CallStateModel,
	},
}

export type EndCallAction = {
	payload: nil,
}

export type FailedCallAction = {
	payload: {
		lastCall: CallStateModel,
	},
}

export type ConnectingCallAction = {
	payload: {
		call: CallStateModel,
	},
}

export type UpdateCallAction = {
	payload: {
		call: CallStateModel,
	},
}

export type CurrentCall = CallStateModel | nil

return {}
