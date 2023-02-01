local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local t = require(Packages.t)

local ExperienceInviteModel = {}

function ExperienceInviteModel.new(experienceInvite)
	assert(ExperienceInviteModel.isValid(experienceInvite))

	ExperienceInviteModel.__index = ExperienceInviteModel

	local self = experienceInvite

	setmetatable(self, ExperienceInviteModel)

	return self
end

function ExperienceInviteModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = ExperienceInviteModel.new({
		created = mergeTable.created or 1665988271,
		inviteId = mergeTable.inviteId or "987",
		squadId = mergeTable.squadId or "12345",
		universeId = mergeTable.universeId or "3267012194",
		responses = mergeTable.responses or { [456] = true },
	})

	return self
end

function ExperienceInviteModel.format(experienceInviteData)
	local self = ExperienceInviteModel.new({
		created = experienceInviteData.created,
		inviteId = experienceInviteData.inviteId,
		squadId = experienceInviteData.squadId,
		universeId = experienceInviteData.universeId,
		responses = experienceInviteData.responses,
	})

	return self
end

ExperienceInviteModel.isValid = t.strictInterface({
	created = t.number,
	inviteId = t.string,
	squadId = t.string,
	universeId = t.string,
	responses = t.map(t.integer, t.boolean),
})

return ExperienceInviteModel
