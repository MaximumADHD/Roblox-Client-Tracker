local Root = script.Parent
local Packages = Root.Parent

local Promise = require(Packages.Promise)

local Constants = require(Root.CallProtocolConstants)
local CallProtocolTypes = require(Root.CallProtocolTypes)

type CallProtocol = CallProtocolTypes.CallProtocol
type CallProtocolModule = CallProtocolTypes.CallProtocolModule
type InitCallParams = CallProtocolTypes.InitCallParams
type AnswerCallParams = CallProtocolTypes.AnswerCallParams
type RejectCallParams = CallProtocolTypes.RejectCallParams
type CancelCallParams = CallProtocolTypes.CancelCallParams
type FinishCallParams = CallProtocolTypes.FinishCallParams
type HandleInitCallParams = CallProtocolTypes.HandleInitCallParams
type HandleAnswerCallParams = CallProtocolTypes.HandleAnswerCallParams
type HandleEndCallParams = CallProtocolTypes.HandleEndCallParams
type GetCallStateResponse = CallProtocolTypes.GetCallStateResponse

local MessageBus = game:GetService("MessageBusService")

local CallProtocol: CallProtocolModule = {} :: CallProtocolModule;
(CallProtocol :: any).__index = CallProtocol

function CallProtocol.new(): CallProtocol
	local self = setmetatable({}, CallProtocol)
	return (self :: any) :: CallProtocol
end

function CallProtocol:initCall(
	calleeUserId: number,
	placeId: number,
	gameInstanceId: number?,
	reservedServerAccessCode: string?
)
	local initCallParams: InitCallParams = {
		calleeId = calleeUserId,
		placeId = placeId,
	}

	if gameInstanceId ~= nil then
		initCallParams.instanceId = gameInstanceId
	end

	if reservedServerAccessCode ~= nil then
		initCallParams.reservedServerAccessCode = reservedServerAccessCode
	end

	MessageBus:Publish(Constants.MESSAGE_INIT_CALL, initCallParams)
end

function CallProtocol:answerCall(callId: string)
	MessageBus:Publish(Constants.MESSAGE_ANSWER_CALL, {
		callId = callId,
	} :: AnswerCallParams)
end

function CallProtocol:rejectCall(callId: string)
	MessageBus:Publish(Constants.MESSAGE_REJECT_CALL, {
		callId = callId,
	} :: RejectCallParams)
end

function CallProtocol:cancelCall(callId: string)
	MessageBus:Publish(Constants.MESSAGE_CANCEL_CALL, {
		callId = callId,
	} :: CancelCallParams)
end

function CallProtocol:finishCall(callId: string)
	MessageBus:Publish(Constants.MESSAGE_FINISH_CALL, {
		callId = callId,
	} :: FinishCallParams)
end

function CallProtocol:getCallState()
	local promise = Promise.new(function(resolve, _)
		MessageBus:MakeRequest(
			Constants.NAME,
			Constants.METHOD_GET_CALL_STATE,
			{},
			function(response: GetCallStateResponse)
				resolve(response)
			end
		)
	end)
	return promise
end

function CallProtocol:listenToHandleInitCall(callback: (HandleInitCallParams) -> ())
	return MessageBus:Subscribe(Constants.MESSAGE_HANDLE_INIT_CALL, callback, false, true)
end

function CallProtocol:listenToHandleAnswerCall(callback: (HandleAnswerCallParams) -> ())
	return MessageBus:Subscribe(Constants.MESSAGE_HANDLE_ANSWER_CALL, callback, false, true)
end

function CallProtocol:listenToHandleEndCall(callback: (HandleEndCallParams) -> ())
	return MessageBus:Subscribe(Constants.MESSAGE_HANDLE_END_CALL, callback, false, true)
end

CallProtocol.default = CallProtocol.new()

return CallProtocol
