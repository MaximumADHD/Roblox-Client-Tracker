local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent

local t = require(Packages.t) :: any

local HistoricalParticipantModel = {}

function HistoricalParticipantModel.new(call)
	assert(HistoricalParticipantModel.isValid(call))

	HistoricalParticipantModel.__index = HistoricalParticipantModel

	local self = call

	setmetatable(self, HistoricalParticipantModel)

	return self
end

function HistoricalParticipantModel.mock(mergeTable: any)
	mergeTable = mergeTable or {}

	local self = HistoricalParticipantModel.new({
		userId = mergeTable.userId or 12345,
		displayName = mergeTable.displayName or "displayName",
		userName = mergeTable.userName or "userName",
	})

	return self
end

function HistoricalParticipantModel.format(participantData)
	local self = HistoricalParticipantModel.new({
		userId = participantData.userId,
		displayName = participantData.displayName,
		userName = participantData.userName,
	})

	return self
end

HistoricalParticipantModel.isValid = t.strictInterface({
	userId = t.number,
	displayName = t.string,
	userName = t.string,
})

return HistoricalParticipantModel
