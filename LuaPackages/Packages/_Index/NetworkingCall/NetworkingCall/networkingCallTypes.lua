--!strict
export type Config = {
	roduxNetworking: any,
	useMockedResponse: boolean,
}

export type Participant = { userId: number, displayName: string, userName: string }

export type Call = {
	callId: string,
	callerId: number,
	startUtc: number,
	endUtc: number,
	participants: { Participant },
	status: string,
	universeId: number,
	placeId: number,
}

export type GetCallHistoryRequest = { universeId: number?, limit: number, cursor: string? }

export type GetCallHistoryResponse = {
	callHistory: { [number]: Call },
	nextPageCursor: string,
	previousPageCursor: string,
}

export type RequestThunks = {
	GetCallHistory: GetCallHistoryRequest,
	GetSuggestedCallees: nil,
}

export type QueryArgs = {
	universeId: number?,
	limit: number,
	cursor: string?,
}

return {}
