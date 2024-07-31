local RoduxFriends = script.Parent.Parent
local Packages = RoduxFriends.Parent

local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)
local selectRecommendationsForUserId = require(script.Parent.selectRecommendationsForUserId)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local Array = LuauPolyfill.Array

type RecommendationModel = roduxFriendsTypes.RecommendationModel
type RecommendationId = roduxFriendsTypes.UserId

local sortRecommendationByRank = function(user1: RecommendationModel, user2: RecommendationModel): boolean
	local rank1 = user1.rank or 0
	local rank2 = user2.rank or 0
	return rank1 - rank2
end

return function(options: roduxFriendsTypes.RoduxFriendsOptions)
	return function(state)
		return function(currentUserId: string, recommendationIds: {[number]: RecommendationId }?): { [number]: RecommendationId }
			local selectedRecommendations = selectRecommendationsForUserId(options)(state)(currentUserId, recommendationIds)

			return Array.map(
				Array.sort(
					Object.values(selectedRecommendations),
					sortRecommendationByRank
				), function(recommendation)
					return recommendation.id
				end
			)
		end
	end
end
