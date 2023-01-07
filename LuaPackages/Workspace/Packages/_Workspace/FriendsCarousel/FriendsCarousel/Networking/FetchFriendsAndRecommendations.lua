local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local NetworkingFriends = dependencies.NetworkingFriends
local NetworkingAliases = dependencies.NetworkingAliases
local Promise = dependencies.Promise
local Dash = dependencies.Dash
local showRecommendations = require(FriendsCarousel.Utils.showRecommendations)
local FriendsCarouselIXP = require(FriendsCarousel.Flags.FriendsCarouselIXP)
local Analytics = require(FriendsCarousel.Analytics)
local EventNames = Analytics.EventNames
local setupFireEvent = Analytics.setupFireEvent
local AnalyticsService = dependencies.AnalyticsService
local UserSorts = require(FriendsCarousel.Common.UserSorts)
local IXPService = dependencies.IXPService
local getFFlagProfileAliasEnabled = dependencies.getFFlagProfileAliasEnabled

game:DefineFastInt("Debug_RecommendationFetchDelay", 0)

local getDelay = function()
	return game:GetFastInt("Debug_RecommendationFetchDelay")
end

local shouldFetchRecommendations = function(friendsCount, injectedFriendsCarouselIXP: any?)
	local friendsCarouselIXP = injectedFriendsCarouselIXP or FriendsCarouselIXP
	return showRecommendations(friendsCount)
		and friendsCarouselIXP.experimentOrRolloutEnabled(nil, { useIXPdirectly = true })
end

local shouldFetchFriendRequestCount = function(refresh, injectedFriendsCarouselIXP: any?)
	local friendsCarouselIXP = injectedFriendsCarouselIXP or FriendsCarouselIXP
	--* fetch Friends Requests Count only on refresh because initial fetch located in PreloadApplicationData
	return refresh and friendsCarouselIXP.experimentOrRolloutEnabled(nil, { useIXPdirectly = true })
end

local getExperimentLayerStatus = function(injectedFriendsCarouselIXP: any?)
	local friendsCarouselIXP = injectedFriendsCarouselIXP or FriendsCarouselIXP
	return friendsCarouselIXP.experimentLayerStatus()
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

				if config and config.waitUntilIXPUserInit then
					store:dispatch(config.waitUntilIXPUserInit(IXPService, localUserId)):andThen(function()
						local experimentLayerStatus = getExperimentLayerStatus(config and config.friendsCarouselIXP)

						if shouldFetchRecommendations(friendsCount, config and config.friendsCarouselIXP) then
							-- TODO SOCCONN-1625: clean up before release
							if getDelay() > 0 then
								Promise.delay(getDelay()):andThen(function()
									store:dispatch(NetworkingFriends.GetFriendRecommendationsFromUserId.API({
										targetUserId = localUserId,
									}))
								end)
							else
								store
									:dispatch(NetworkingFriends.GetFriendRecommendationsFromUserId.API({
										targetUserId = localUserId,
									}))
									:andThen(function(result: any)
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
												experimentLayerStatus = experimentLayerStatus,
												fetchedRecommendations = true,
												recommendationSessionId = recommendationSessionId,
											})
										end
									end)
							end
						else
							if fireEvent then
								fireEvent(EventNames.CarouselLoadedWithUsers, {
									friendCount = friendsCount,
									recommendationCount = 0,
									-- TODO SOCCONN-1723 move fixed fields to `additionalInfo`
									recommendationLimit = true,
									refreshCount = refreshCount,
									experimentLayerStatus = experimentLayerStatus,
									fetchedRecommendations = false,
								})
							end
						end
					end)
				else
					if shouldFetchRecommendations(friendsCount, config and config.friendsCarouselIXP) then
						-- TODO SOCCONN-1625: clean up before release
						if getDelay() > 0 then
							Promise.delay(getDelay()):andThen(function()
								store:dispatch(NetworkingFriends.GetFriendRecommendationsFromUserId.API({
									targetUserId = localUserId,
								}))
							end)
						else
							store
								:dispatch(NetworkingFriends.GetFriendRecommendationsFromUserId.API({
									targetUserId = localUserId,
								}))
								:andThen(function(result: any)
									if fireEvent then
										local recommendations = result.responseBody.data
										local recommendationCount = recommendations and #recommendations or 0
										fireEvent(EventNames.CarouselLoadedWithUsers, {
											friendCount = friendsCount,
											recommendationCount = recommendationCount,
											-- TODO SOCCONN-1723 move fixed fields to `additionalInfo`
											recommendationLimit = true,
											refreshCount = refreshCount,
											recommendationSessionId = result.responseBody.recommendationRequestId,
										})
									end
								end)
						end
					else
						if fireEvent then
							fireEvent(EventNames.CarouselLoadedWithUsers, {
								friendCount = friendsCount,
								recommendationCount = 0,
								-- TODO SOCCONN-1723 move fixed fields to `additionalInfo`
								recommendationLimit = true,
								refreshCount = refreshCount,
							})
						end
					end
				end

				if shouldFetchFriendRequestCount(config and config.refresh, config and config.friendsCarouselIXP) then
					store:dispatch(NetworkingFriends.GetFriendRequestsCount.API())
				end

				return Promise.resolve(friends)
			end)
	end
end
