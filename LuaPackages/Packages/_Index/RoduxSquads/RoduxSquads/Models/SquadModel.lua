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

	local members = Cryo.List.map(mergeTable.members or { { userId = 1234, rank = 0 } }, function(member)
		return SquadMemberModel.mock(member)
	end)

	local self = SquadModel.new({
		squadId = mergeTable.squadId or "12345",
		initiatorId = mergeTable.initiatorId or 54321,
		createdUtc = mergeTable.createdUtc or 1666635183,
		channelId = mergeTable.channelId or "23456",
		members = members,
	})

	return self
end

function SquadModel.format(squadData)
	local members = Cryo.List.map(squadData.members, function(member)
		return SquadMemberModel.format(member)
	end)

	local self = SquadModel.new({
		squadId = squadData.squadId,
		initiatorId = squadData.initiatorId,
		createdUtc = squadData.createdUtc,
		channelId = squadData.channelId,
		members = members,
	})

	return self
end

SquadModel.isValid = t.strictInterface({
	squadId = t.string,
	initiatorId = t.number,
	createdUtc = t.number, -- Milliseconds
	channelId = t.string,
	members = t.array(SquadMemberModel.isValid),
})

return SquadModel
