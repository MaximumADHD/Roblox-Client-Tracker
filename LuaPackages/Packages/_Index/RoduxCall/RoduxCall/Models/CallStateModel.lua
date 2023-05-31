local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent

local Status = require(RoduxCall.Enums).Status :: any

local t = require(Packages.t) :: any

local CallStateModel = {}

function CallStateModel.new(CallState)
	assert(CallStateModel.isValid(CallState))

	CallStateModel.__index = CallStateModel

	local self = CallState

	setmetatable(self, CallStateModel)

	return self
end

function CallStateModel.mock(mergeTable: any)
	mergeTable = mergeTable or {}

	local self = CallStateModel.new({
		status = mergeTable.status or Status.Active.rawValue(),
		callerId = mergeTable.callerId or 123,
		calleeId = mergeTable.calleeId or 456,
		placeId = mergeTable.placeId or 789,
		reservedServerAccessCode = mergeTable.reservedServerAccessCode or nil,
		callId = mergeTable.callId or nil,
		callerDisplayName = mergeTable.callerDisplayName or nil,
		calleeDisplayName = mergeTable.calleeDisplayName or nil,
		gameInstanceId = mergeTable.gameInstanceId or nil,
		launchParamsString = mergeTable.launchParamsString or nil,
	})

	return self
end

function CallStateModel.format(CallStateData)
	local self = CallStateModel.new({
		status = CallStateData.status,
		callerId = CallStateData.callerId,
		calleeId = CallStateData.calleeId,
		placeId = CallStateData.placeId,
		reservedServerAccessCode = CallStateData.reservedServerAccessCode,
		callId = CallStateData.callId,
		callerDisplayName = CallStateData.callerDisplayName,
		calleeDisplayName = CallStateData.calleeDisplayName,
		gameInstanceId = CallStateData.gameInstanceId,
		launchParamsString = CallStateData.launchParamsString,
	})

	return self
end

CallStateModel.isValid = t.strictInterface({
	status = t.string,
	callerId = t.number,
	calleeId = t.number,
	placeId = t.optional(t.number),
	reservedServerAccessCode = t.optional(t.string),
	callId = t.optional(t.string),
	callerDisplayName = t.optional(t.string),
	calleeDisplayName = t.optional(t.string),
	gameInstanceId = t.optional(t.string),
	launchParamsString = t.optional(t.string),
})

return CallStateModel
