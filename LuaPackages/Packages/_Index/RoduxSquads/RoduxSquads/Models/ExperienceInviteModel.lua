local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local t = require(Packages.t)

local ExperienceDetailResultStatus = require(RoduxSquad.Enums.ExperienceDetailResultStatus)
local ExperienceInviteState = require(RoduxSquad.Enums.ExperienceInviteState)
local ExperienceInviteVoteType = require(RoduxSquad.Enums.ExperienceInviteVoteType)
local MembershipEntityType = require(RoduxSquad.Enums.MembershipEntityType)

local function getSpotsTaken(votes: { { userId: number, voteType: string } })
	local spotsTaken = 0
	for i = 1, #votes do
		local vote = votes[i]
		if vote.voteType == "Accepted" then
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

	local votes = mergeTable.votes or { [1] = { userId = 456, voteType = ExperienceInviteVoteType.Accept } }
	local spotsTaken = getSpotsTaken(votes)
	local self = ExperienceInviteModel.new({
		experienceInviteId = mergeTable.experienceInviteId or "987",
		version = mergeTable.version or 1,
		inviterId = mergeTable.inviterId or 123456,
		membershipEntityType = mergeTable.membershipEntityType or MembershipEntityType.GroupUp,
		membershipEntityId = mergeTable.membershipEntityId or "54321",
		createdUtcMs = mergeTable.createdUtcMs or 1665988271,
		experienceDetail = mergeTable.experienceDetail
			or { placeId = 15308759682, experienceResultStatus = ExperienceDetailResultStatus.Reserved },
		totalSpots = mergeTable.totalSpots or 6,
		spotsTaken = spotsTaken,
		state = mergeTable.state or ExperienceInviteState.Active,
		votes = votes,
	})

	return self
end

function ExperienceInviteModel.format(experienceInviteData)
	local votes = experienceInviteData.votes and experienceInviteData.votes or experienceInviteData.Votes
	local self = ExperienceInviteModel.new({
		experienceInviteId = experienceInviteData.experienceInviteId and experienceInviteData.experienceInviteId
			or experienceInviteData.ExperienceInviteId,
		version = experienceInviteData.version and experienceInviteData.version or experienceInviteData.Version,
		inviterId = experienceInviteData.inviterId and experienceInviteData.inviterId or experienceInviteData.InviterId,
		membershipEntityType = experienceInviteData.membershipEntityType and experienceInviteData.membershipEntityType
			or experienceInviteData.MembershipEntityType,
		membershipEntityId = experienceInviteData.membershipEntityId and experienceInviteData.membershipEntityId
			or experienceInviteData.MembershipEntityId,
		createdUtcMs = experienceInviteData.createdUtcMs and experienceInviteData.createdUtcMs
			or experienceInviteData.CreatedUtcMs,
		experienceDetail = experienceInviteData.experienceDetail and experienceInviteData.experienceDetail
			or experienceInviteData.ExperienceDetail,
		totalSpots = experienceInviteData.totalSpots and experienceInviteData.totalSpots
			or experienceInviteData.TotalSpots,
		spotsTaken = getSpotsTaken(votes),
		state = experienceInviteData.state and experienceInviteData.state or experienceInviteData.State,
		votes = votes,
	})

	return self
end

ExperienceInviteModel.isValid = t.strictInterface({
	experienceInviteId = t.string,
	version = t.number,
	inviterId = t.number,
	membershipEntityType = t.string,
	membershipEntityId = t.string,
	createdUtcMs = t.number,
	experienceDetail = t.strictInterface({
		placeId = t.number,
		experienceResultStatus = t.string,
	}),
	totalSpots = t.number,
	spotsTaken = t.number,
	state = t.string,
	votes = t.array(t.strictInterface({
		userId = t.number,
		voteType = t.string,
	})),
})

return ExperienceInviteModel
