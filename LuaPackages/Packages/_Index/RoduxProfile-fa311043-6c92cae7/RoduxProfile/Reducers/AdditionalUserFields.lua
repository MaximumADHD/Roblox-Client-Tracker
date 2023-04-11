--[[
	Reducer for additional user fields that are not part of Rodux-Users Skinny Users
	model which gets fetched from
	https://users.roblox.com/docs#!/Users/get_v1_users_userId.
	Fields: isBanned, description and hasVerifiedBadge

]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)

export type State = {
	-- maps user ID to a table of isDeleted, description, hasVerifiedBadge user fields
	[string]: { isDeleted: boolean, description: string, hasVerifiedBadge: boolean },
}

--[[
	Function to configure and return the AdditionalUserFields reducer

	@param options - Configuration options for the reducer
				.NetworkingUsers - The Networking Users instance
]]
return function(options)
	local NetworkingUsers = options.networkingUsers

	return Rodux.createReducer({}, {
		[NetworkingUsers.GetUserV2FromUserId.Succeeded.name] = function(state, action)
			local response = action.responseBody
			local userId = tostring(action.namedIds.users)
			-- the naming of this field is a bit confusing but isBanned is
			-- equivalent to a deleted user (NOT temporary deletion). Code
			-- reference in
			-- https://github.rbx.com/Roblox/web-platform/blob/491f2f837f6b76bedb0fe6dfee9f814662be10f0/Assemblies/Web/Responses/Roblox.Web.Responses.Users/Implementation/UserResponseFactory.cs#L50
			-- (note: Poisoned is deprecated and no longer used)
			local user = {
				[userId] = { isDeleted = response.isBanned, description = response.description, hasVerifiedBadge = response.hasVerifiedBadge },
			}
			return Dash.join(state, user)
		end,
	})
end
