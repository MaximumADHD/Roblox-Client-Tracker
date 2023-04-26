local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent

local t = require(Packages.t) :: any

local CallModel = {}

function CallModel.new(call)
	assert(CallModel.isValid(call))

	CallModel.__index = CallModel

	local self = call

	setmetatable(self, CallModel)

	return self
end

function CallModel.mock(mergeTable: any)
	mergeTable = mergeTable or {}

	local self = CallModel.new({
		callId = mergeTable.callId or "12345",
		callerId = mergeTable.callerId or 12345,
		startUtc = mergeTable.startUtc or 1666635183,
		endUtc = mergeTable.endUtc or 1666635183,
		participants = mergeTable.participants or {
			{ userId = 1, displayName = "SuperCoolUser1", userName = "SuperCoolUser1" },
			{ userId = 2, displayName = "SuperCoolUser2", userName = "SuperCoolUser2" },
		},
		status = mergeTable.status or "CallMissed",
		universeId = mergeTable.universeId or 12345,
		placeId = mergeTable.placeId or 12345,
	})

	return self
end

function CallModel.format(callData)
	local self = CallModel.new({
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

CallModel.isValid = t.strictInterface({
	callId = t.string,
	callerId = t.number,
	startUtc = t.number, -- Milliseconds
	endUtc = t.number, -- Milliseconds
	participants = t.array(t.strictInterface({
		userId = t.number,
		displayName = t.string,
		userName = t.string,
	})),
	status = t.string,
	universeId = t.number,
	placeId = t.number,
})

return CallModel
