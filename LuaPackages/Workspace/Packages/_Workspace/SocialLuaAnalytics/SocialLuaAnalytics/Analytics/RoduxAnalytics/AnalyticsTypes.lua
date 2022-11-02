export type Options = {
	keyPath: string,
}

export type SessionKey = string
export type SessionId = string

export type BySessionKeyState = {
	[SessionKey]: SessionId,
}

export type State = {
	bySessionKey: BySessionKeyState?,
}

export type SessionIdUpdatedPayload = {
	sessionKey: SessionKey,
	sessionId: SessionId,
}
export type SessionIdUpdatedAction = {
	name: "SessionIdUpdated",
	payload: SessionIdUpdatedPayload,
}

return nil
