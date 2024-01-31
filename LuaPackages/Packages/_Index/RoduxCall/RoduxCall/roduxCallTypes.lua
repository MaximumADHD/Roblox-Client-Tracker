-- Shared

-- Models
export type SuggestedCalleeModel = {
	userId: number,
	userPresenceType: string,
	lastLocation: string,
}

export type CallAction =
	"Accept"
	| "AcceptSuccess"
	| "Cancel"
	| "ConnectionConfirm"
	| "Decline"
	| "Duplicate"
	| "Fail"
	| "Finish"
	| "Init"
	| "InitSuccess"
	| "Miss"
	| "Receive"
	| "Reject"
	| "Suppress"
	| "TeleportSuccess"

export type CallStateModel = {
	status: string,
	callerId: number?,
	calleeId: number?,
	placeId: number?,
	reservedServerAccessCode: string?,
	callId: string?,
	callerCombinedName: string?,
	calleeCombinedName: string?,
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

export type UpdateCallAction = {
	payload: {
		call: CallStateModel,
	},
}

export type CurrentCall = CallStateModel | nil

return {}
