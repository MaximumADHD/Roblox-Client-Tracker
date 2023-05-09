local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local NetworkingFriends = dependencies.NetworkingFriends
local RoduxFriends = dependencies.RoduxFriends
local llama = dependencies.llama
local Constants = require(FriendsCarousel.Common.Constants)
local SocialCommon = dependencies.SocialCommon
local RecommendationSourceEnum = SocialCommon.Enums.RecommendationSourceEnum
local getFFlagSocialMoveRecsSource = dependencies.getFFlagSocialMoveRecsSource

local friendsRecommendationsBySouceAdaptor = function()
	return {
		[NetworkingFriends.GetFriendRecommendationsFromUserId.Succeeded.name] = function(action)
			local responseData = action.responseBody.data or {}

			local recommendationIds = llama.List.map(responseData, function(recommendation)
				return recommendation.id
			end)

			local RecommendationSourceCreatedAction = RoduxFriends.Actions.RecommendationSourceCreated({
				source = if getFFlagSocialMoveRecsSource()
					then RecommendationSourceEnum.HomepageFriendsCarousel
					else Constants.RECS_SOURCE,
				recommendationIds = recommendationIds,
			})

			return { action, RecommendationSourceCreatedAction }
		end,
	}
end

return friendsRecommendationsBySouceAdaptor
