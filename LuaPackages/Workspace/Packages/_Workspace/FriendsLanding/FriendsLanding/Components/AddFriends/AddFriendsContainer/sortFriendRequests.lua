local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local llama = dependencies.llama
local t = dependencies.t

export type FriendRequest = {
	sentAt: DateTime?,
	displayName: string?,
	username: string?,
}

return function(friendRequests: { FriendRequest })
	assert(t.table(friendRequests))

	-- sort friend requests by recent, aka sort them by sentAt timestamp.
	-- if the timestamps are the same, then sort them with the order by
	-- displayName or username, just like "FriendsLanding.Friends.sortFriends".
	return llama.List.sort(friendRequests, function(lhs, rhs)
		local lhsSentAtTimestamp = lhs.sentAt and lhs.sentAt.UnixTimestampMillis or 0
		local rhsSentAtTimestamp = rhs.sentAt and rhs.sentAt.UnixTimestampMillis or 0
		if lhsSentAtTimestamp ~= rhsSentAtTimestamp then
			return lhsSentAtTimestamp > rhsSentAtTimestamp
		end

		if lhs.displayName and not rhs.displayName then
			return true
		elseif not lhs.displayName and rhs.displayName then
			return false
		elseif
			lhs.displayName
			and rhs.displayName
			and string.lower(lhs.displayName) ~= string.lower(rhs.displayName)
		then
			return string.lower(lhs.displayName) < string.lower(rhs.displayName)
		else
			if lhs.username and rhs.username then
				return string.lower(lhs.username) < string.lower(rhs.username)
			elseif lhs.username and not rhs.username then
				return true
			else
				return false
			end
		end
	end)
end
