local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local FriendsNetworking = dependencies.FriendsNetworking

return function(dispatch)
	return {
		fetchFriends = function(userId)
			return dispatch(FriendsNetworking.GetFriendsFromUserId.API(userId))
		end,
		getFriendRequestsCount = function()
			return dispatch(FriendsNetworking.GetFriendRequestsCount.API())
		end,
	}
end
