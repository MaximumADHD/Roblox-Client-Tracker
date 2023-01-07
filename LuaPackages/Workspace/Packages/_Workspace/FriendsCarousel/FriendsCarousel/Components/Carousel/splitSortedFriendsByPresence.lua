local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local llama = dependencies.llama
local memoize = dependencies.memoize
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)

local RoduxPresence = dependencies.RoduxPresence
local PresenceType = RoduxPresence.Enums.PresenceType

--* friends list should be sorted by presence for this function to work correctly
local splitSortedFriendsByPresence = memoize(
	function(sortedByPresenceFriendsList: LocalTypes.FriendsList): (LocalTypes.FriendsList, LocalTypes.FriendsList)
		local offlineStartIndex = llama.List.find(
			llama.List.map(sortedByPresenceFriendsList, function(friend)
				return friend.userPresenceType
			end),
			PresenceType.Offline
		)

		if offlineStartIndex then
			local onlineFriends = llama.List.slice(sortedByPresenceFriendsList, 0, offlineStartIndex - 1)
			local offlineFriends = llama.List.slice(sortedByPresenceFriendsList, offlineStartIndex)
			return onlineFriends, offlineFriends
		else
			return sortedByPresenceFriendsList, {}
		end
	end
)

return splitSortedFriendsByPresence
