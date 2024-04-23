local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local t = require(Packages.t)

local ExperienceInviteResponse = require(RoduxSquad.Enums.ExperienceInviteResponse)
local ExperienceInviteState = require(RoduxSquad.Enums.ExperienceInviteState)

local function getSpotsTaken(responses: { { userId: number, response: string } })
	local spotsTaken = 0
	for i = 1, #responses do
		local response = responses[i]
		if response.response == "Accepted" then
			spotsTaken = spotsTaken + 1
		end
	end

	return spotsTaken
end

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

	local responses = mergeTable.responses or { [1] = { userId = 456, response = ExperienceInviteResponse.Accepted } }
	local spotsTaken = getSpotsTaken(responses)
	local self = ExperienceInviteModel.new({
		experienceInviteId = mergeTable.experienceInviteId or "987",
		version = mergeTable.version or 1,
		inviterId = mergeTable.inviterId or 123456,
		createdTimestamp = mergeTable.createdTimestamp or 1665988271,
		decisionTimestamp = mergeTable.decisionTimestamp or 1665998271,
		universeId = mergeTable.universeId or 3267012194,
		placeId = mergeTable.placeId or 15308759682,
		totalSpots = mergeTable.totalSpots or 6,
		spotsTaken = spotsTaken,
		inviteState = mergeTable.inviteState or ExperienceInviteState.Active,
		responses = responses,
	})

	return self
end

function ExperienceInviteModel.format(experienceInviteData)
	local self = ExperienceInviteModel.new({
		experienceInviteId = experienceInviteData.experienceInviteId,
		version = experienceInviteData.version,
		inviterId = experienceInviteData.inviterId,
		createdTimestamp = experienceInviteData.createdTimestamp,
		decisionTimestamp = experienceInviteData.decisionTimestamp,
		universeId = experienceInviteData.universeId,
		placeId = experienceInviteData.placeId,
		totalSpots = experienceInviteData.totalSpots,
		spotsTaken = getSpotsTaken(experienceInviteData.responses),
		inviteState = experienceInviteData.inviteState,
		responses = experienceInviteData.responses,
	})

	return self
end

ExperienceInviteModel.isValid = t.strictInterface({
	experienceInviteId = t.string,
	version = t.number,
	inviterId = t.number,
	createdTimestamp = t.number,
	decisionTimestamp = t.number,
	universeId = t.number,
	placeId = t.number,
	totalSpots = t.number,
	spotsTaken = t.number,
	inviteState = t.string,
	responses = t.array(t.strictInterface({
		userId = t.number,
		response = t.string,
	})),
})

return ExperienceInviteModel
