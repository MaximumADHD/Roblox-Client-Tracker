local RoduxFriends = script.Parent.Parent
local getDeepValue = require(RoduxFriends.getDeepValue)
local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

return function(options: roduxFriendsTypes.RoduxFriendsOptions)
	local keyPath = options.keyPath
	return function(state, targetUserId: string): Enum.FriendStatus
		return getDeepValue(
			state, string.format("%s.friendshipStatus.%s", keyPath, targetUserId)
		) or nil
	end
end
