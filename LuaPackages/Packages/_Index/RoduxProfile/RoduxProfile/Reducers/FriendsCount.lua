--[[
	Reducer for how many friends a user has
]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)

export type State = {
	-- maps user ID to friend count
	[string]: number,
}

--[[
	Function to configure and return the FriendsCount reducer

	@param options - Configuration options for the reducer
				.networkingFriends - The Networking Friends instance
]]
return function(options)
	local NetworkingFriends = options.networkingFriends

	return Rodux.createReducer({}, {
		[NetworkingFriends.GetFriendsCountFromUserId.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)
			return Dash.join(state, { [userId] = action.responseBody.count })
		end,
	})
end
