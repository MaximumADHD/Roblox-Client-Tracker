local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local SquadMemberModel = require(script.Parent.SquadMemberModel)

local Cryo = require(Packages.Cryo)
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
		createdUtc = mergeTable.createdUtc or 1666635183,
		updatedUtc = mergeTable.updatedUtc or 1666635183,
		squadId = mergeTable.squadId or "12345",
		inviteLinkToken = mergeTable.inviteLinkToken or "45678",
		members = { SquadMemberModel.mock(mergeTable.members) },
	})

	return self
end

function SquadModel.format(squadData)
	local members = Cryo.List.map(squadData.members, function(member)
		return SquadMemberModel.format(member)
	end)

	local self = SquadModel.new({
		createdUtc = squadData.createdUtc,
		updatedUtc = squadData.updatedUtc,
		squadId = squadData.squadId,
		inviteLinkToken = squadData.inviteLinkToken,
		members = members,
	})

	return self
end

SquadModel.isValid = t.strictInterface({
	createdUtc = t.number, -- Milliseconds
	updatedUtc = t.number, -- Milliseconds
	squadId = t.string,
	inviteLinkToken = t.string,
	members = t.array(SquadMemberModel.isValid),
})

return SquadModel
