local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local SquadModel = require(script.Parent.SquadModel)

local t = require(Packages.t)

local SquadInviteModel = {}

function SquadInviteModel.new(squad)
	assert(SquadInviteModel.isValid(squad))

	SquadInviteModel.__index = SquadInviteModel

	local self = squad

	setmetatable(self, SquadInviteModel)

	return self
end

function SquadInviteModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = SquadInviteModel.new({
		inviterUserId = mergeTable.inviterUserId or 123,
		squad = SquadModel.mock(mergeTable.squad),
	})

	return self
end

function SquadInviteModel.format(squadInviteData)
	local self = SquadInviteModel.new({
		inviterUserId = squadInviteData.inviterUserId,
		squad = SquadModel.format(squadInviteData.squad),
	})

	return self
end

SquadInviteModel.isValid = t.strictInterface({
	inviterUserId = t.number,
	squad = SquadModel.isValid,
})

return SquadInviteModel
