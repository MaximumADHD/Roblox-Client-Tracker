local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local llama = dependencies.llama
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local mapIdToUser = require(script.Parent.mapIdToUser)
local showRecommendations = require(FriendsCarousel.Utils.showRecommendations)
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)
local Constants = require(FriendsCarousel.Common.Constants)
local SocialCommon = dependencies.SocialCommon
local RecommendationSourceEnum = SocialCommon.Enums.RecommendationSourceEnum
local getFFlagSocialMoveRecsSource = dependencies.getFFlagSocialMoveRecsSource

local sortRecommendationByRank = function(user1: LocalTypes.Recommendation, user2: LocalTypes.Recommendation)
	return user1.rank < user2.rank
end

local getRecommendationsList = function(state, keyPath: string, props: any?): LocalTypes.RecommendationsList
	local localUserId = tostring(state.LocalUserId)
	local friendCount = getDeepValue(state, string.format("%s.Friends.countsByUserId.%s", keyPath, localUserId)) or 0
	local recommendationsDict = getDeepValue(
		state,
		string.format("%s.Friends.recommendations.byUserId.%s", keyPath, localUserId)
	) or {}
	local friendshipStatus = getDeepValue(state, string.format("%s.Friends.friendshipStatus", keyPath)) or {}

	local recommendationsIds = llama.Dictionary.keys(recommendationsDict)

	local friendsCarouselRecommendationIds = getDeepValue(
		state,
		string.format(
			"%s.Friends.recommendations.bySource.%s",
			keyPath,
			if getFFlagSocialMoveRecsSource()
				then RecommendationSourceEnum.HomepageFriendsCarousel
				else Constants.RECS_SOURCE
		)
	) or {}
	recommendationsIds = llama.List.filter(recommendationsIds, function(id)
		return friendsCarouselRecommendationIds[id]
	end)

	local mapRecommendationToUserAndContext = function(id)
		local recommendation = recommendationsDict[id]
		local userFriendshipStatus = friendshipStatus[id]
		local hasIncomingFriendRequest =
			getDeepValue(state, string.format("%s.Friends.recommendations.hasIncomingFriendRequest.%s", keyPath, id))
		return llama.Dictionary.join(mapIdToUser(state, keyPath, props)(id), recommendation, {
			isFriendWithUser = if userFriendshipStatus then userFriendshipStatus == Enum.FriendStatus.Friend else false,
			hasPendingFriendRequest = if userFriendshipStatus
				then userFriendshipStatus == Enum.FriendStatus.FriendRequestSent
				else false,
			canSendFriendRequest = if userFriendshipStatus
				then userFriendshipStatus == Enum.FriendStatus.NotFriend
				else true,
			hasIncomingFriendRequest = hasIncomingFriendRequest,
		})
	end

	if not showRecommendations(friendCount) then
		return {}
	end

	return llama.List.sort(
		llama.List.map(recommendationsIds, mapRecommendationToUserAndContext),
		sortRecommendationByRank
	)
end

return getRecommendationsList
