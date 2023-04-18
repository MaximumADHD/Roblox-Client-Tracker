local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType
local llama = dependencies.llama
local t = dependencies.t
local filterToPresence = require(FriendsLanding.Friends.filterToPresence)
local filterStates = require(FriendsLanding.Friends.filterStates)
local getCorrectUserPresence = require(FriendsLanding.Friends.getCorrectUserPresence)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

return function(friends, filter)
	assert(t.table(friends), "friends should be a table")
	assert(t.string(filter), "filter should be a string")

	return llama.List.filter(friends, function(friend)
		if getFFlagFriendsLandingInactiveFriendsEnabled() and filter == filterStates.Inactive then
			return friend.isInactiveFriend
		else
			local presenceKeys = filterToPresence(filter)
			local correctPresence = getCorrectUserPresence(friend) or EnumPresenceType.Offline
			return llama.List.includes(presenceKeys, correctPresence)
		end
	end)
end
