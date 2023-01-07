return function(friendshipStatus: Enum.FriendStatus?, hasIncomingFriendRequest: boolean?): Enum.FriendStatus
	if hasIncomingFriendRequest then
		return Enum.FriendStatus.FriendRequestReceived
	elseif friendshipStatus then
		return friendshipStatus
	else
		return Enum.FriendStatus.NotFriend
	end
end
