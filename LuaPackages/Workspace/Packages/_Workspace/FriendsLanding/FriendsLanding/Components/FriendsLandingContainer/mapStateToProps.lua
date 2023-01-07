local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local mapToUsers = require(FriendsLanding.Friends.mapToUsers)

return function(state, _)
	return {
		localUserId = state.LocalUserId,
		friends = mapToUsers(state)(state.LocalUserId),
	}
end
