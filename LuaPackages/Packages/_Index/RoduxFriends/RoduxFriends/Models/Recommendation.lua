local RoduxFriends = script:FindFirstAncestor("RoduxFriends")
local Packages = RoduxFriends.Parent
local mockId = require(script.Parent.mockId)
local roduxFriendsTypes = require(script.Parent.Parent.roduxFriendsTypes)
local llama = require(Packages.llama)

local Recommendation = {}

function Recommendation.new(recommendation: roduxFriendsTypes.RecommendationModel)
	assert(Recommendation.isValid(recommendation))

	Recommendation.__index = Recommendation

	local self = {
		id = recommendation.id,
		mutualFriendsList = recommendation.mutualFriendsList,
		score = recommendation.score,
	}

	setmetatable(self, Recommendation)

	return self
end

function Recommendation.mock(mergeTable: { id: string?, mutualFriendsList: { string }? }?)
	local defaultValues: roduxFriendsTypes.RecommendationModel = { id = mockId(),  }
	local mergedValues: roduxFriendsTypes.RecommendationModel = llama.Dictionary.join(defaultValues, mergeTable)

	local self = Recommendation.new({
		id = mergedValues.id,
		mutualFriendsList = mergedValues.mutualFriendsList,
		score = tonumber(mergedValues.id),
	})

	return self
end

function Recommendation.isValid(recommendation: any?)
	if not recommendation then
		return false, "Expected recommendation information to be given"
	elseif not recommendation.id then
		return false, "Expected user's id to be given"
	elseif not recommendation.score then
		return false, "Expected user's score to be given"
	end

	if recommendation.mutualFriendsList and type(recommendation.mutualFriendsList) ~= "table" then
		return false, "mutualFriendList must be a table of strings"
	end

	return true, "Valid Recommendation"
end

function Recommendation.isEqual(
	recommendation1: roduxFriendsTypes.RecommendationModel,
	recommendation2: roduxFriendsTypes.RecommendationModel
)
	return recommendation1.id == recommendation2.id
		and llama.List.equals(recommendation1.mutualFriendsList, recommendation2.mutualFriendsList)
		and recommendation1.score == recommendation2.score
end

return Recommendation
