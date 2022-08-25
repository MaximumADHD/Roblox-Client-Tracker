return function(options)
	return {
		isFriendsWith = require(script.isFriendsWith)(options),
		getSortedByRankRecommendations = require(script.getSortedByRankRecommendations)(options),
		getFriendshipStatusByUserId = require(script.getFriendshipStatusByUserId)(options)
	}
end
