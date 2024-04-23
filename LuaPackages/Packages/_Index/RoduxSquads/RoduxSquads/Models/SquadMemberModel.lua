local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local t = require(Packages.t)

local SquadMemberModel = {}

function SquadMemberModel.new(squadMember)
	assert(SquadMemberModel.isValid(squadMember))

	SquadMemberModel.__index = SquadMemberModel

	local self = squadMember

	setmetatable(self, SquadMemberModel)

	return self
end

function SquadMemberModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = SquadMemberModel.new({
		userId = mergeTable.userId or 1234,
		rank = mergeTable.rank or 0,
	})

	return self
end

function SquadMemberModel.format(squadMemberData)
	local self = SquadMemberModel.new({
		userId = squadMemberData.userId,
		rank = squadMemberData.rank,
	})

	return self
end

SquadMemberModel.isValid = t.strictInterface({
	userId = t.number,
	rank = t.number,
})

return SquadMemberModel
