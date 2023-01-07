local PYMKCarousel = script.Parent.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)

local RoduxFriends = dependencies.RoduxFriends
local llama = dependencies.llama

local filterOutPYMKRecommendations = require(script.Parent.filterOutPYMKRecommendations)

type RecommendationIds = {
	[number]: {
		id: string,
	},
}

local getPYMKSortedRecommendationIds = function(userId: string)
	return function(state: any): RecommendationIds
		local recommendations =
			filterOutPYMKRecommendations(RoduxFriends.Selectors.getSortedByRankRecommendations(state, userId))(state)

		return llama.List.map(recommendations, function(recommendation, index)
			return {
				id = recommendation.id,
				absolutePosition = index,
				recommendationRank = recommendation.rank,
				recommendationContextType = recommendation.contextType,
			}
		end)
	end
end

return getPYMKSortedRecommendationIds
