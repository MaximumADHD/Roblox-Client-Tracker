--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local llama = dependencies.llama
local RoduxFriends = dependencies.RoduxFriends
local RoduxAnalytics = dependencies.RoduxAnalytics
local FriendsNetworking = dependencies.FriendsNetworking
local GamesNetworking = dependencies.GamesNetworking
local Promise = dependencies.Promise
local NetworkingAccountInformation = dependencies.NetworkingAccountInformation
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local ContactImporterWarningSeen = require(FriendsLanding.installReducer.Actions.ContactImporterWarningSeen)
local RECOMMENDATION_SESSION_ID_KEY = require(FriendsLanding.Common.Constants).RECOMMENDATION_SESSION_ID_KEY
local SocialCommon = dependencies.SocialCommon
local RecommendationSourceEnum = SocialCommon.Enums.RecommendationSourceEnum

local getFFlagShowContactImporterTooltipOnce = require(FriendsLanding.Flags.getFFlagShowContactImporterTooltipOnce)
local getFFlagAddFriendsPYMKExperimentEnabled = require(FriendsLanding.Flags.getFFlagAddFriendsPYMKExperimentEnabled)

-- Extract the userId and sourceUniverseId set for current batch of friend requests
local getIdsForCurrentRequestBatch = function(friendRequestData)
	local userIds = {}
	local universeIds = {}
	for _, request in pairs(friendRequestData) do
		table.insert(userIds, request.id)
		local universeId = request.friendRequest.sourceUniverseId
		if universeId ~= nil and universeId ~= 0 then
			table.insert(universeIds, universeId)
		end
	end
	return {
		userIds = userIds,
		universeIds = universeIds,
	}
end

return function(dispatch)
	return {
		acceptFriendRequest = function(args)
			return dispatch(FriendsNetworking.AcceptFriendRequestFromUserId.API(args))
		end,
		declineFriendRequest = function(args)
			return dispatch(FriendsNetworking.DeclineFriendRequestFromUserId.API(args))
		end,
		ignoreAllFriendsRequests = function(args)
			return dispatch(FriendsNetworking.DeclineAllFriendRequests.API(args))
		end,
		requestFriendship = function(args)
			return dispatch(FriendsNetworking.RequestFriendshipFromUserId.API(args))
		end,
		getFriendRequestsCount = function(userId)
			return dispatch(FriendsNetworking.GetFriendRequestsCount.API(userId))
		end,
		getPhoneInformation = function()
			return dispatch(NetworkingAccountInformation.GetPhoneInformation.API({}))
		end,
		getFriendRequests = function(args)
			return Promise.new(function(resolve, reject)
				args = llama.Dictionary.join(args or {}, {
					currentUserId = args.localUserId,
				})
				dispatch(FriendsNetworking.GetFriendRequests.API(args))
					:andThen(function(response)
						local batchIds = getIdsForCurrentRequestBatch(response.responseBody.data)
						local userContextPromises = {}
						if not llama.isEmpty(batchIds.userIds) then
							table.insert(
								userContextPromises,
								dispatch(FriendsNetworking.GetFollowingExists.API({ targetUserIds = batchIds.userIds }))
							)
						end
						if not llama.isEmpty(batchIds.universeIds) then
							table.insert(
								userContextPromises,
								dispatch(GamesNetworking.GetExperiencesDetails.API(batchIds.universeIds))
							)
						end
						Promise.all(userContextPromises)
							:andThen(function()
								resolve(response)
							end)
							:catch(reject)
					end)
					:catch(reject)
			end)
		end,
		getFriendRecommendations = function(args)
			if getFFlagAddFriendsPYMKExperimentEnabled() then
				return dispatch(FriendsNetworking.GetFriendRecommendationsFromUserId.API({
					targetUserId = args.localUserId,
					source = RecommendationSourceEnum.AddFriendsPage,
				})):andThen(function(response)
					local recommendations = response.responseBody.data
					local recommendationIds = llama.List.map(recommendations, function(recommendation)
						return recommendation.id
					end)
					dispatch(RoduxFriends.Actions.RecommendationSourceCreated({
						source = RecommendationSourceEnum.AddFriendsPage,
						recommendationIds = recommendationIds,
					}))
					local recommendationSessionId = response.responseBody.recommendationRequestId
					dispatch(RoduxAnalytics.Actions.SessionIdUpdated({
						sessionKey = RECOMMENDATION_SESSION_ID_KEY,
						sessionId = recommendationSessionId,
					}))
					return Promise.resolve(response)
				end)
			else
				return dispatch(
					FriendsNetworking.GetFriendRecommendationsFromUserId.API({ targetUserId = args.localUserId })
				)
			end
		end,
		contactImporterWarningSeen = if getFFlagShowContactImporterTooltipOnce()
			then nil
			else function()
				dispatch(ContactImporterWarningSeen())
			end,
		getUserSettingsMetadata = function()
			return dispatch(NetworkingUserSettings.GetUserSettingsMetadata.API())
		end,
	}
end
