local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama

local Rodux = dependencies.Rodux
local FriendsNetworking = dependencies.FriendsNetworking

local DEFAULT_STATE = {}

return Rodux.createReducer(DEFAULT_STATE, {
	[FriendsNetworking.GetFollowingExists.Succeeded.name] = function(state, action)
		local isFollowingUser = {}
		llama.List.every(action.responseBody.followings, function(following)
			isFollowingUser[tostring(following.userId)] = {
				isFollowing = following.isFollowing,
				isFollowed = following.isFollowed,
			}
			return true
		end)

		return llama.Dictionary.join(state, isFollowingUser)
	end,
})
