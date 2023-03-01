local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent

local t = require(Packages.t)

local CallModel = {}

function CallModel.new(call)
	assert(CallModel.isValid(call))

	CallModel.__index = CallModel

	local self = call

	setmetatable(self, CallModel)

	return self
end

function CallModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = CallModel.new({
		createdUtc = mergeTable.createdUtc or 1666635183,
		participants = mergeTable.participants or { { userId = 12345, username = "SuperCoolUser" } },
		state = "Missed",
	})

	return self
end

function CallModel.format(callData)
	local self = CallModel.new({
		createdUtc = callData.createdUtc,
		participants = callData.participants,
		state = callData.state,
	})

	return self
end

CallModel.isValid = t.strictInterface({
	createdUtc = t.number, -- Milliseconds
	participants = t.array(t.strictInterface({
		userId = t.number,
		username = t.string,
	})),
	state = t.string,
})

return CallModel
