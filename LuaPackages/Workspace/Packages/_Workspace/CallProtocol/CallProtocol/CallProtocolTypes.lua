local Root = script.Parent
local Packages = Root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local CallNotificationType = require(Root.Enums.CallNotificationType)
local CallStatus = require(Root.Enums.CallStatus)
local ParticipantStatus = require(Root.Enums.ParticipantStatus)
local UserPresenceType = require(Root.Enums.UserPresenceType)

type CallNotificationType = CallNotificationType.CallNotificationType
type CallStatus = CallStatus.CallStatus
type ParticipantStatus = ParticipantStatus.ParticipantStatus
type UserPresenceType = UserPresenceType.UserPresenceType
type Promise<T> = LuauPolyfill.Promise<T>

export type Participant = {
	userId: string,
	username: string,
	status: ParticipantStatus,
}

export type Call = {
	callStatus: CallStatus,
	callId: string,
	participants: { [number]: Participant },
	experience: {
		placeId: number,
		gameInstanceId: number,
	},
}

export type InitCallParams = {
	calleeUserId: number,
	callerPresenceType: UserPresenceType,
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

export type HandleInitCallParams = {
	isSuccess: boolean,
	call: Call,
}

export type HandleAnswerCallParams = {
	isSuccess: boolean,
	call: Call,
}

export type HandleRejectCallParams = {
	call: Call,
}

export type HandleCancelCallParams = {
	call: Call,
}

export type HandleCallNotificationUpdateParams = {
	notificationType: CallNotificationType,
	call: Call,
}

export type GetCallStateResponse = {
	call: Call,
}

export type CallProtocol = {
	initCall: (CallProtocol, calleeUserId: number, callerPresenceType: UserPresenceType) -> (),
	answerCall: (CallProtocol, callId: string) -> (),
	rejectCall: (CallProtocol, callId: string) -> (),
	cancelCall: (CallProtocol, callId: string) -> (),

	getCallState: (CallProtocol) -> Promise<GetCallStateResponse>,

	listenToHandleInitCall: (CallProtocol, callback: (HandleInitCallParams) -> ()) -> Instance,
	listenToHandleAnswerCall: (CallProtocol, callback: (HandleAnswerCallParams) -> ()) -> Instance,
	listenToHandleRejectCall: (CallProtocol, callback: (HandleRejectCallParams) -> ()) -> Instance,
	listenToHandleCancelCall: (CallProtocol, callback: (HandleCancelCallParams) -> ()) -> Instance,
	listenToHandleCallNotificationUpdate: (
		CallProtocol,
		callback: (HandleCallNotificationUpdateParams) -> ()
	) -> Instance,
}

export type CallProtocolModule = CallProtocol & {
	new: () -> CallProtocol,
	default: CallProtocol,
}

return nil
