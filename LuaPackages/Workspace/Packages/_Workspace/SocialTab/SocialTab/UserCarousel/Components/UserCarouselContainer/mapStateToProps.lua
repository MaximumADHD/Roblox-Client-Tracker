local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local llama = dependencies.llama
local SocialLibraries = dependencies.SocialLibraries
local User = SocialLibraries.User
local UserUtils = require(SocialTab.User)
local Logger = require(SocialTab.Logger)

local getFFlagDebugSocialTabCarouselEnabled = require(SocialTab.Flags.getFFlagDebugSocialTabCarouselEnabled)
local getFIntDebugSocialTabCarouselFriendsNumber = require(SocialTab.Flags.getFIntDebugSocialTabCarouselFriendsNumber)

local getFriendSort = function(state, props)
	local localFriendsList = state.SocialTab.Friends.byUserId.localUserId or {}

	local success, result = xpcall(function()
		return llama.List.sort(
			llama.List.map(localFriendsList, UserUtils.mapToUsers(state, props)),
			User.sortFriendsByCorrectedPresenceAndRank
		)
	end, debug.traceback)
	if not success then
		Logger:info(tostring(result))
	end
	assert(success, tostring(result))
	return result
end

local getFriendsNumberForDebuging = function(friendsList)
	local friendsNumberForDebuging = getFIntDebugSocialTabCarouselFriendsNumber()
	if friendsNumberForDebuging == 0 or not friendsList then
		return {}
	else
		if friendsNumberForDebuging > #friendsList then
			local bigListOfFriends = {}
			while #bigListOfFriends < friendsNumberForDebuging do
				bigListOfFriends = llama.List.join(bigListOfFriends, friendsList)
			end
			return llama.List.slice(bigListOfFriends, 1, friendsNumberForDebuging)
		else
			return llama.List.slice(friendsList, 1, friendsNumberForDebuging)
		end
	end
end

return function(state, props)
	local friendRequestsCount = state.SocialTab.Friends.requests.receivedCount or 0

	return {
		screenSize = state.ScreenSize,
		friends = if getFFlagDebugSocialTabCarouselEnabled()
			then getFriendsNumberForDebuging(getFriendSort(state, props))
			else getFriendSort(state, props),
		hasFriendRequests = friendRequestsCount > 0,
	}
end
