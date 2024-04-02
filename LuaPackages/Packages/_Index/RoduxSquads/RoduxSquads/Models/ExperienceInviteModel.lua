local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local t = require(Packages.t)

local ExperienceInviteResponse = require(RoduxSquad.Enums.ExperienceInviteResponse)
local ExperienceInviteState = require(RoduxSquad.Enums.ExperienceInviteState)

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
		createdUtc = mergeTable.createdUtc or 1665988271,
		inviteId = mergeTable.inviteId or "987",
		inviteState = mergeTable.inviteState or ExperienceInviteState.Active,
		inviterUserId = mergeTable.inviterUserId or 123456,
		responses = mergeTable.responses or { ["456"] = ExperienceInviteResponse.Accepted },
		squadId = mergeTable.squadId or "12345",
		universeId = mergeTable.universeId or "3267012194",
	})

	return self
end

function ExperienceInviteModel.format(experienceInviteData)
	local self = ExperienceInviteModel.new({
		createdUtc = experienceInviteData.createdUtc,
		inviteId = experienceInviteData.inviteId,
		inviteState = experienceInviteData.inviteState,
		inviterUserId = experienceInviteData.inviterUserId,
		responses = experienceInviteData.responses,
		squadId = experienceInviteData.squadId,
		universeId = experienceInviteData.universeId,
	})

	return self
end

ExperienceInviteModel.isValid = t.strictInterface({
	createdUtc = t.number,
	inviteId = t.string,
	inviteState = t.string,
	inviterUserId = t.number,
	responses = t.map(t.string, t.string),
	squadId = t.string,
	universeId = t.string,
})

return ExperienceInviteModel
