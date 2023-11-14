local RoduxFriends = script.Parent.Parent
local Packages = RoduxFriends.Parent

local llama = require(Packages.llama)
local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)
local getDeepValue = require(RoduxFriends.getDeepValue)

type RecommendationModel = roduxFriendsTypes.RecommendationModel

local sortRecommendationByRank = function(user1: RecommendationModel, user2: RecommendationModel): boolean
	return user1.rank < user2.rank
end

type SortedByRankRecommendations = {
	[number]: RecommendationModel
}

return function(options: roduxFriendsTypes.RoduxFriendsOptions)
	local keyPath = options.keyPath
	return function(state, targetUserId: roduxFriendsTypes.UserId): SortedByRankRecommendations
		local recommendationsDict = getDeepValue(
			state, string.format("%s.recommendations.byUserId.%s", keyPath, targetUserId)
		) or {}

		return llama.List.sort(
			llama.Dictionary.values(recommendationsDict),
			sortRecommendationByRank
		)
	end
end
