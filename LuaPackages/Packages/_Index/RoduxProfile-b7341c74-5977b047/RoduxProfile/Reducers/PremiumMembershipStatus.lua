--[[
	Reducer for whether a user has a premium membership on Roblox
]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)

export type State = {
	-- maps user ID to hasPremiumMembership
	[string]: boolean,
}

--[[
	Function to configure and return the PremiumMembershipStatus reducer

	@param options - Configuration options for the reducer
				.networkingUserInfo - The Networking User Info instance
]]
return function(options)
	local NetworkingUserInfo = options.networkingUserInfo

	return Rodux.createReducer({}, {
		[NetworkingUserInfo.GetUserPremiumMembershipStatus.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)
			return Dash.join(state, { [userId] = action.responseBody })
		end,
	})
end
