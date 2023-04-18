return function(options)
	return {
		isFriendsWith = require(script.isFriendsWith)(options),
		getSortedByRankRecommendations = require(script.getSortedByRankRecommendations)(options),
		selectFriendshipStatusesByUserIds = require(script.selectFriendshipStatusesByUserIds)(options),
		getRecommendationIdsBySource = require(script.getRecommendationIdsBySource)(options),
		selectRecommendationsForUserId = require(script.selectRecommendationsForUserId)(options),
		getSortedByRankRecommendationIds = require(script.getSortedByRankRecommendationIds)(options),
	}
end
