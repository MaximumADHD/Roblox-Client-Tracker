--[[
	Reducer for who the localUser follows
]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)

export type State = {
	-- maps user ID to whether or not the local user follows them
	[string]: boolean,
}

--[[
	Function to configure and return the isUserFollowing reducer

	@param options - Configuration options for the reducer
				.networkingUserInfo - The Networking User Info instance
]]
local DEFAULT_STATE = {}
return function(options)
	local NetworkingUserInfo = options.networkingUserInfo
	local NetworkingBlocking = options.networkingBlocking

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingUserInfo.GetFollowingExists.Succeeded.name] = function(state, action)
			local isFollowedByUser = {}

			Dash.forEach(action.responseBody.followings, function(follower)
				isFollowedByUser[tostring(follower.userId)] = follower.isFollowing
			end)

			return Dash.join(state, isFollowedByUser)
		end,
		[NetworkingUserInfo.UnfollowUserById.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)

			return Dash.join(state, {
				[userId] = false,
			})
		end,
		[NetworkingUserInfo.FollowUserById.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)

			return Dash.join(state, {
				[userId] = true,
			})
		end,
		[NetworkingBlocking.BlockUserById.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)

			return Dash.join(state, {
				[userId] = false,
			})
		end,
	})
end
