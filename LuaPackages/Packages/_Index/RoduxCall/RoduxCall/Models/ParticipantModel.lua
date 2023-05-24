local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent

local t = require(Packages.t) :: any

local ParticipantModel = {}

function ParticipantModel.new(call)
	assert(ParticipantModel.isValid(call))

	ParticipantModel.__index = ParticipantModel

	local self = call

	setmetatable(self, ParticipantModel)

	return self
end

function ParticipantModel.mock(mergeTable: any)
	mergeTable = mergeTable or {}

	local self = ParticipantModel.new({
		userId = mergeTable.userId or 12345,
		displayName = mergeTable.displayName or "displayName",
	})

	return self
end

function ParticipantModel.format(participantData)
	local self = ParticipantModel.new({
		userId = participantData.userId,
		displayName = participantData.displayName,
	})

	return self
end

ParticipantModel.isValid = t.strictInterface({
	userId = t.number,
	displayName = t.string,
})

return ParticipantModel
