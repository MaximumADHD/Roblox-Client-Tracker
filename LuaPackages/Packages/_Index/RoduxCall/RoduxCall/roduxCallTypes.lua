export type Participant = { userId: number, displayName: string, userName: string }

export type CallModel = {
	callId: string,
	callerId: number,
	startUtc: number,
	endUtc: number,
	participants: { Participant },
	status: string,
	universeId: number,
	placeId: number,
}

export type GetCallHistorySucceeded = {
	responseBody: {
		callRecords: {
			[number]: CallModel,
		},
		nextPageCursor: string,
		previousPageCursor: string,
	},
}

export type CallHistory = {
	[number]: CallModel,
}

return {}
