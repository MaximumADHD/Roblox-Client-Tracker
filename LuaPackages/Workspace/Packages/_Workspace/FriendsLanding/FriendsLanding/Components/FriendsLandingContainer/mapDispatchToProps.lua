local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

local FriendsNetworking = dependencies.FriendsNetworking

return function(dispatch)
	return {
		fetchFriends = function(userId)
			return dispatch(FriendsNetworking.GetFriendsFromUserId.API(userId))
		end,
		getFriendRequestsCount = function()
			return dispatch(FriendsNetworking.GetFriendRequestsCount.API())
		end,
		getInactiveFriends = if getFFlagFriendsLandingInactiveFriendsEnabled()
			then function(userId)
				return dispatch(FriendsNetworking.GetInactiveFriends.API(userId))
			end
			else nil,
		unfriendTargetUser = if getFFlagFriendsLandingInactiveFriendsEnabled()
			then function(params)
				return dispatch(FriendsNetworking.UnfriendTargetUserId.API(params))
			end
			else nil,
	}
end
