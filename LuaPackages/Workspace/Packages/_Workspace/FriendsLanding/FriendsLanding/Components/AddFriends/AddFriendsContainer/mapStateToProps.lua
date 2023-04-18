local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AppStorageService = game:GetService("AppStorageService")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local llama = dependencies.llama
local RoduxPresence = dependencies.RoduxPresence
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local contactImporterTooltip = require(FriendsLanding.Utils.contactImporterTooltip)
local getFFlagContactNameOnFriendRequestEnabled =
	require(FriendsLanding.Flags.getFFlagContactNameOnFriendRequestEnabled)
local getFFlagShowContactImporterTooltipOnce = require(FriendsLanding.Flags.getFFlagShowContactImporterTooltipOnce)

local sortFunc = require(script.Parent.sortFriendRequests)

local getFriendRequestsFromState = function(state)
	local byUserId = getDeepValue(state, "FriendsLanding.Friends.requests.byUserId")
	if not byUserId then
		return {}
	end

	local userIds = llama.Dictionary.keys(byUserId)
	local users = llama.List.map(userIds, function(userId)
		return llama.Dictionary.join(
			getDeepValue(state, string.format("FriendsLanding.Users.byUserId.%s", userId)),
			RoduxPresence.Selectors.getUserPresenceByUserId(state, userId),
			{
				sentAt = getDeepValue(state, string.format("FriendsLanding.Friends.requests.sentAt.%s", userId)),
			},
			{
				mutualFriends = getDeepValue(
					state,
					string.format("FriendsLanding.Friends.requests.mutualFriends.%s", userId)
				),
			},
			{
				contactName = if getFFlagContactNameOnFriendRequestEnabled()
					then getDeepValue(state, string.format("FriendsLanding.Friends.contactNamesByUserId.%s", userId))
					else nil,
			}
		)
	end)
	return sortFunc(users)
end

-- TODO: SOCCONN-1557 Use correct recommendation endpoint
local getFriendRecommendationsFromState = function(state)
	local localUserId = state.LocalUserId
	local userIds =
		getDeepValue(state, string.format("FriendsLanding.Friends.recommendations.byUserId.%s", tostring(localUserId)))

	if not userIds then
		return {}
	end

	local users = llama.Dictionary.map(userIds, function(userId)
		return getDeepValue(state, string.format("FriendsLanding.Users.byUserId.%s", userId.id))
	end)

	users = llama.Dictionary.values(users)

	return users
end

return function(state)
	local shouldShowContactImporterFeature, shouldShowContactImporterUpsellModal
	local showModalParams = getDeepValue(state, "FriendsLanding.ShowContactImporterParams") or {}
	shouldShowContactImporterFeature = showModalParams.shouldShowContactImporterFeature
	shouldShowContactImporterUpsellModal = showModalParams.shouldShowContactImporterUpsellModal

	local canUploadContacts, isPhoneVerified, hasOSPermissions, isDiscoverabilityUnset
	isPhoneVerified = showModalParams.isPhoneVerified
	hasOSPermissions = showModalParams.hasOSPermissions
	canUploadContacts = showModalParams.canUploadContacts
	isDiscoverabilityUnset = showModalParams.isDiscoverabilityUnset

	local contactImporterFriendRequests = getDeepValue(
		state,
		"FriendsLanding.ContactImporterWarning.contactImporterFriendRequests"
	) or {}
	local seenContactImporterFriendRequest = getDeepValue(
		state,
		"FriendsLanding.ContactImporterWarning.seenContactImporterFriendRequest"
	) or false
	local hasRequestsFromContactImporter = not llama.isEmpty(contactImporterFriendRequests)

	if getFFlagShowContactImporterTooltipOnce() then
		seenContactImporterFriendRequest = contactImporterTooltip.getKey(AppStorageService)
	end

	local showTooltip = hasRequestsFromContactImporter and not seenContactImporterFriendRequest

	return {
		screenSize = state.ScreenSize,
		localUserId = state.LocalUserId,
		-- TODO: SOCCONN-1557 Add tests when we're using the proper recommendation endpoint
		friendRecommendations = getFriendRecommendationsFromState(state) or {},
		friendRequests = getFriendRequestsFromState(state),
		receivedCount = getDeepValue(state, "FriendsLanding.Friends.requests.receivedCount") or 0,
		nextPageCursor = getDeepValue(state, "FriendsLanding.Friends.requests.nextPageCursor"),
		amIFollowingUser = function(user)
			local isUserFollowing = getDeepValue(state, "FriendsLanding.IsUserFollowing") or {}
			return isUserFollowing[user.id] and isUserFollowing[user.id].isFollowing or false
		end,
		isUserFollowingMe = function(user)
			local isUserFollowing = getDeepValue(state, "FriendsLanding.IsUserFollowing") or {}
			return isUserFollowing[user.id] and isUserFollowing[user.id].isFollowed or false
		end,
		getFriendshipRequestSentFromExperience = function(user)
			local sourceUniverseIds = getDeepValue(state, "FriendsLanding.Friends.requests.sourceUniverseIds")
			local universeId = sourceUniverseIds[user.id]
			if universeId ~= nil and universeId ~= 0 then
				local gameModel = getDeepValue(
					state,
					string.format("FriendsLanding.Games.byGameId.%s", tostring(universeId))
				) or {}
				return gameModel.name
			else
				return nil
			end
		end,
		shouldShowContactImporterFeature = shouldShowContactImporterFeature,
		shouldShowContactImporterUpsellModal = shouldShowContactImporterUpsellModal,
		isPhoneVerified = isPhoneVerified,
		hasOSPermissions = hasOSPermissions,
		canUploadContacts = canUploadContacts,
		isDiscoverabilityUnset = isDiscoverabilityUnset,
		showTooltip = showTooltip,
	}
end
