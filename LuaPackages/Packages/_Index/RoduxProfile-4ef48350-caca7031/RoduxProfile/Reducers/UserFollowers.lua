--[[
	Reducer for followers that a user has
]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)

export type State = {
	-- maps user ID to a boolean on whether user A is a follower of local user
	[string]: boolean,
}

--[[
	Function to configure and return the UserFollowers reducer
	@param options - Configuration options for the reducer
	.networkingUserInfo - The Networking User Info instance
]]
return function(options)
	local NetworkingUserInfo = options.networkingUserInfo

	return Rodux.createReducer({}, {
		[NetworkingUserInfo.GetUserFollowers.Succeeded.name] = function(state, action)
			local newState = {}
			local data = action.responseBody.data
			for _, followerData in ipairs(data) do
				local userId = tostring(followerData.id)
				newState[userId] = true
			end
			return newState
		end,
	})
end
