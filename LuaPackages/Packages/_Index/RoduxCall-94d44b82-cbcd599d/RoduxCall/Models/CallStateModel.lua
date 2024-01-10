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
		status = mergeTable.status or Status.Active,
		callerId = mergeTable.callerId or 123,
		calleeId = mergeTable.calleeId or 456,
		placeId = mergeTable.placeId or 789,
		reservedServerAccessCode = mergeTable.reservedServerAccessCode or nil,
		callId = mergeTable.callId or nil,
		callerCombinedName = mergeTable.callerCombinedName or nil,
		calleeCombinedName = mergeTable.calleeCombinedName or nil,
		instanceId = mergeTable.instanceId or nil,
		createdUtc = mergeTable.createdUtc or 0,
		activeUtc = mergeTable.activeUtc or 0,
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
		callerCombinedName = CallStateData.callerCombinedName,
		calleeCombinedName = CallStateData.calleeCombinedName,
		instanceId = CallStateData.instanceId,
		createdUtc = CallStateData.createdUtc,
		activeUtc = CallStateData.activeUtc,
	})

	return self
end

CallStateModel.isValid = t.strictInterface({
	status = t.string,
	callerId = t.optional(t.number),
	calleeId = t.optional(t.number),
	placeId = t.optional(t.number),
	reservedServerAccessCode = t.optional(t.string),
	callId = t.optional(t.string),
	callerCombinedName = t.optional(t.string),
	calleeCombinedName = t.optional(t.string),
	instanceId = t.optional(t.string),
	createdUtc = t.optional(t.number),
	activeUtc = t.optional(t.number),
})

return CallStateModel
