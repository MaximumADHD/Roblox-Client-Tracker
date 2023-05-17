local Root = script.Parent
local Packages = Root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local CallStatus = require(Root.Enums.CallStatus)

type CallStatus = CallStatus.CallStatus
type Promise<T> = LuauPolyfill.Promise<T>

export type Participant = {
	userId: number,
	userName: string,
	displayName: string,
}

export type Call = {
	callStatus: CallStatus,
	callId: string?,
	participants: { [string]: Participant } | nil,
	experienceDetail: {
		placeId: number,
		universeName: string,
		gameInstanceId: number,
		reservedServerAccessCode: string?,
	} | nil,
}

export type InitCallParams = {
	calleeId: number,
	placeId: number,
	instanceId: number?,
	reservedServerAccessCode: string?,
}

export type AnswerCallParams = {
	callId: string,
}

export type RejectCallParams = {
	callId: string,
}

export type CancelCallParams = {
	callId: string,
}

export type FinishCallParams = {
	callId: string,
}

export type HandleInitCallParams = Call

export type HandleAnswerCallParams = Call

export type HandleEndCallParams = Call

export type GetCallStateResponse = Call

export type CallProtocol = {
	initCall: (
		CallProtocol,
		calleeUserId: number,
		placeId: number,
		gameInstanceId: number?,
		reservedServerAccessCode: string?
	) -> (),
	answerCall: (CallProtocol, callId: string) -> (),
	rejectCall: (CallProtocol, callId: string) -> (),
	cancelCall: (CallProtocol, callId: string) -> (),
	finishCall: (CallProtocol, callId: string) -> (),

	getCallState: (CallProtocol) -> Promise<GetCallStateResponse>,

	listenToHandleInitCall: (CallProtocol, callback: (HandleInitCallParams) -> ()) -> Instance,
	listenToHandleAnswerCall: (CallProtocol, callback: (HandleAnswerCallParams) -> ()) -> Instance,
	listenToHandleEndCall: (CallProtocol, callback: (HandleEndCallParams) -> ()) -> Instance,
}

export type CallProtocolModule = CallProtocol & {
	new: () -> CallProtocol,
	default: CallProtocol,
}

return nil
