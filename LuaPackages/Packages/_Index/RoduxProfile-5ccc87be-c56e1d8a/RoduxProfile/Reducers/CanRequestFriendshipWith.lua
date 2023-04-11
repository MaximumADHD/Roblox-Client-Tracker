--[[
	Reducer for the whether local player can send friend request to other users
]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)

export type State = {
	-- maps user ID to ability to send friendship request to this user
	[string]: boolean,
}

local INELIGIBLE_FRIENDSHIP_STATUS = "Ineligible"

--[[
	Function to configure and return the CanRequestFriendshipWith reducer

	@param options - Configuration options for the reducer
				.networkingUserInfo - The Networking User Info instance
]]
-- TODO switch to NetworkingFriends
return function(options)
	local NetworkingUserInfo = options.networkingUserInfo

	return Rodux.createReducer({}, {
		[NetworkingUserInfo.GetExtendedFriendshipStatus.Succeeded.name] = function(state, action)
			local userId = tostring(action.ids[1])
			return Dash.join(
				state,
				{ [userId] = action.responseBody.status ~= INELIGIBLE_FRIENDSHIP_STATUS }
			)
		end,
	})
end
