local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local NetworkingFriends = dependencies.NetworkingFriends
local NetworkingAliases = dependencies.NetworkingAliases
local RoduxFriends = dependencies.RoduxFriends
local RoduxAnalytics = dependencies.RoduxAnalytics
local Promise = dependencies.Promise
local Dash = dependencies.Dash
local showRecommendations = require(FriendsCarousel.Utils.showRecommendations)
local Analytics = require(FriendsCarousel.Analytics)
local EventNames = Analytics.EventNames
local setupFireEvent = Analytics.setupFireEvent
local AnalyticsService = dependencies.AnalyticsService
local UserSorts = require(FriendsCarousel.Common.UserSorts)
local Constants = require(FriendsCarousel.Common.Constants)
local RECOMMENDATION_SESSION_ID_KEY = require(FriendsCarousel.Common.Constants).RECOMMENDATION_SESSION_ID_KEY

local getFFlagProfileAliasEnabled = dependencies.getFFlagProfileAliasEnabled
local isSubjectToDesktopPolicies = dependencies.isSubjectToDesktopPolicies
local getFFlagFriendsCarouselRemoveRecsAdaptors =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselRemoveRecsAdaptors)

local shouldFetchRecommendations = function(friendsCount, injectedFriendsCarouselIXP: any?)
	return showRecommendations(friendsCount) and not isSubjectToDesktopPolicies()
end

type Config = {
	refresh: boolean?,
	friendsCarouselIXP: any?,
	analytics: any?,
	waitUntilIXPUserInit: any?,
}

local refreshCount = 0

return function(config: Config?): any
	return function(store): any
		local localUserId = tostring(store:getState().LocalUserId)

		local fireEvent = setupFireEvent({
			infoForAllEvents = { uid = localUserId },
			analytics = if config and config.analytics then config.analytics else AnalyticsService,
		})

		return store
			:dispatch(NetworkingFriends.GetFriendsFromUserId.API(localUserId, { userSort = UserSorts.StatusFrequents }))
			:andThen(function(result: any)
				local friends = result.responseBody.data
				local friendsCount = friends and #friends or 0
				refreshCount = if config and config.refresh then refreshCount + 1 else refreshCount
				if getFFlagProfileAliasEnabled() then
					local friendIds = if friends
						then Dash.map(friends, function(friend)
							return friend.id
						end)
						else {}
					store
						:dispatch(NetworkingAliases.GetTagsFromUserIds.API(friendIds))
						:andThen(function()
							return Promise.resolve()
						end)
						:catch(function()
							return Promise.reject()
						end)
				end

				if shouldFetchRecommendations(friendsCount) then
					store
						:dispatch(NetworkingFriends.GetFriendRecommendationsFromUserId.API({
							targetUserId = localUserId,
						}))
						:andThen(function(result: any)
							if getFFlagFriendsCarouselRemoveRecsAdaptors() then
								local recommendations = result.responseBody.data
								local recommendationIds = Dash.map(recommendations, function(recommendation)
									return recommendation.id
								end)
								store:dispatch(RoduxFriends.Actions.RecommendationSourceCreated({
									source = Constants.RECS_SOURCE,
									recommendationIds = recommendationIds,
								}))
								local recommendationSessionId = result.responseBody.recommendationRequestId
								store:dispatch(RoduxAnalytics.Actions.SessionIdUpdated({
									sessionKey = RECOMMENDATION_SESSION_ID_KEY,
									sessionId = recommendationSessionId,
								}))
								return Promise.resolve(result):andThen(function(result: any)
									if fireEvent then
										local recommendations = result.responseBody.data
										local recommendationCount = recommendations and #recommendations or 0
										local recommendationSessionId = result.responseBody.recommendationRequestId

										fireEvent(EventNames.CarouselLoadedWithUsers, {
											friendCount = friendsCount,
											recommendationCount = recommendationCount,
											-- TODO SOCCONN-1723 move fixed fields to `additionalInfo`
											recommendationLimit = true,
											refreshCount = refreshCount,
											fetchedRecommendations = true,
											recommendationSessionId = recommendationSessionId,
										})
									end
								end)
							else
								if fireEvent then
									local recommendations = result.responseBody.data
									local recommendationCount = recommendations and #recommendations or 0
									local recommendationSessionId = result.responseBody.recommendationRequestId

									fireEvent(EventNames.CarouselLoadedWithUsers, {
										friendCount = friendsCount,
										recommendationCount = recommendationCount,
										-- TODO SOCCONN-1723 move fixed fields to `additionalInfo`
										recommendationLimit = true,
										refreshCount = refreshCount,
										fetchedRecommendations = true,
										recommendationSessionId = recommendationSessionId,
									})
								end
							end
						end)
				else
					if fireEvent then
						fireEvent(EventNames.CarouselLoadedWithUsers, {
							friendCount = friendsCount,
							recommendationCount = 0,
							-- TODO SOCCONN-1723 move fixed fields to `additionalInfo`
							recommendationLimit = true,
							refreshCount = refreshCount,
							fetchedRecommendations = false,
						})
					end
				end

				return Promise.resolve(friends)
			end)
	end
end
