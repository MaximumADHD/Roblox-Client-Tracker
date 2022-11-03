local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local t = require(Packages.t)

local SquadModel = {}

function SquadModel.new(squad)
	assert(SquadModel.isValid(squad))

	SquadModel.__index = SquadModel

	local self = squad

	setmetatable(self, SquadModel)

	return self
end

function SquadModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = SquadModel.new({
		created = mergeTable.created or 1666635183,
		updated = mergeTable.updated or 1666635183,
		squadId = mergeTable.squadId or "12345",
		members = mergeTable.members or { 123, 456 },
	})

	return self
end

function SquadModel.format(squadData)
	local self = SquadModel.new({
		created = squadData.created,
		updated = squadData.updated,
		squadId = squadData.squadId,
		members = squadData.members,
	})

	return self
end

SquadModel.isValid = t.strictInterface({
	created = t.number,
	updated = t.number,
	squadId = t.string,
	members = t.array(t.number),
})

return SquadModel
