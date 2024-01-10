local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent

local HistoricalParticipantModel = require(script.Parent.HistoricalParticipantModel)

local t = require(Packages.t) :: any

local CallRecordModel = {}

function CallRecordModel.new(call)
	assert(CallRecordModel.isValid(call))

	CallRecordModel.__index = CallRecordModel

	local self = call

	setmetatable(self, CallRecordModel)

	return self
end

function CallRecordModel.mock(mergeTable: any)
	mergeTable = mergeTable or {}

	local self = CallRecordModel.new({
		callId = mergeTable.callId or "12345",
		callerId = mergeTable.callerId or 12345,
		startUtc = mergeTable.startUtc or 1666635183,
		endUtc = mergeTable.endUtc or 1666635183,
		participants = { HistoricalParticipantModel.mock(mergeTable.members) },
		status = mergeTable.status or "CallMissed",
		universeId = mergeTable.universeId or 12345,
		placeId = mergeTable.placeId or 12345,
	})

	return self
end

function CallRecordModel.format(callData)
	local self = CallRecordModel.new({
		callId = callData.callId,
		callerId = callData.callerId,
		startUtc = callData.startUtc,
		endUtc = callData.endUtc,
		participants = callData.participants,
		status = callData.status,
		universeId = callData.universeId,
		placeId = callData.placeId,
	})

	return self
end

CallRecordModel.isValid = t.strictInterface({
	callId = t.string,
	callerId = t.number,
	startUtc = t.number, -- Milliseconds
	endUtc = t.number, -- Milliseconds
	participants = t.array(HistoricalParticipantModel.isValid),
	status = t.string,
	universeId = t.number,
	placeId = t.number,
})

return CallRecordModel
