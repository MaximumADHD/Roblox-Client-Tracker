--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local llama = dependencies.llama
local FriendsNetworking = dependencies.FriendsNetworking
local GamesNetworking = dependencies.GamesNetworking
local Promise = dependencies.Promise
local NetworkingAccountInformation = dependencies.NetworkingAccountInformation
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local ContactImporterWarningSeen = require(FriendsLanding.installReducer.Actions.ContactImporterWarningSeen)

local getFFlagShowContactImporterTooltipOnce = require(FriendsLanding.Flags.getFFlagShowContactImporterTooltipOnce)
local getFFlagEnableContactInvitesForNonPhoneVerified = dependencies.getFFlagEnableContactInvitesForNonPhoneVerified

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
			return dispatch(
				FriendsNetworking.GetFriendRecommendationsFromUserId.API({ targetUserId = args.localUserId })
			)
		end,
		contactImporterWarningSeen = if getFFlagShowContactImporterTooltipOnce()
			then nil
			else function()
				dispatch(ContactImporterWarningSeen())
			end,
		getUserSettingsMetadata = if getFFlagEnableContactInvitesForNonPhoneVerified()
			then function()
				return dispatch(NetworkingUserSettings.GetUserSettingsMetadata.API())
			end
			else nil,
	}
end
