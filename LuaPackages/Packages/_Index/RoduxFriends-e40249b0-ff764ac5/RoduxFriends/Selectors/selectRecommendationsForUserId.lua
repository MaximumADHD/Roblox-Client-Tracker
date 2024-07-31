local RoduxFriends = script.Parent.Parent

local getDeepValue = require(RoduxFriends.getDeepValue)
local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)
local filterByKeys = require(script.Parent.filterByKeys)

type RecommendationModel = roduxFriendsTypes.RecommendationModel
type RecommendationId = roduxFriendsTypes.UserId

return function(options: roduxFriendsTypes.RoduxFriendsOptions)
	local keyPath = options.keyPath
	return function(state)
		return function(currentUserId: string, reccomendationIdFilter: {[number]: RecommendationId }?): { [RecommendationId]: RecommendationModel }
			local currentUserRecommendations = getDeepValue(
				state, string.format("%s.recommendations.byUserId.%s", keyPath, currentUserId or "")
			) or {}

			local selectedUserRecommendations = if reccomendationIdFilter
				then filterByKeys(reccomendationIdFilter, currentUserRecommendations)
				else currentUserRecommendations

			return selectedUserRecommendations
		end
	end
end
