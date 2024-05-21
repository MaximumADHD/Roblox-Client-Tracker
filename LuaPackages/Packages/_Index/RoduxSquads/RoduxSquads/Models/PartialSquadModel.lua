local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local t = require(Packages.t)

local PartialSquadModel = {}

function PartialSquadModel.new(squad)
	assert(PartialSquadModel.isValid(squad))

	PartialSquadModel.__index = PartialSquadModel

	local self = squad

	setmetatable(self, PartialSquadModel)

	return self
end

function PartialSquadModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = PartialSquadModel.new({
		channelId = mergeTable.channelId or "23456",
		members = mergeTable.members or { "12345" },
	})

	return self
end

function PartialSquadModel.format(squadData)
	local self = PartialSquadModel.new({
		channelId = squadData.channelId,
		members = squadData.members,
	})

	return self
end

PartialSquadModel.isValid = t.strictInterface({
	channelId = t.string,
	members = t.array(t.string),
})

return PartialSquadModel
