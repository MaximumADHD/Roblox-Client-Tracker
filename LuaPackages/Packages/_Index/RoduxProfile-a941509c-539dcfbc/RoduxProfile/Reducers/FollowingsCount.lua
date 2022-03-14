--[[
	Reducer for how many people a user follows 
]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)

export type State = {
	-- maps user ID to how many people a user follows
	[string]: number,
}

--[[
	Function to configure and return the FollowingsCount reducer

	@param options - Configuration options for the reducer
				.networkingUserInfo - The Networking User Info instance
]]
return function(options)
	local NetworkingUserInfo = options.networkingUserInfo

	return Rodux.createReducer({}, {
		[NetworkingUserInfo.GetFollowingsCount.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)
			return Dash.join(state, { [userId] = action.responseBody.count })
		end,
	})
end
