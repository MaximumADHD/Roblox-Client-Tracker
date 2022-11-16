local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)

export type State = {
	[string]: boolean,
}

return function(options)
	local NetworkingBlocking = options.networkingBlocking

	return Rodux.createReducer({}, {
		[NetworkingBlocking.GetBlockedUsers.Succeeded.name] = function(state, action)
			local blockedUsers = action.responseBody and action.responseBody.blockedUsers or {}
			local blockedUsersState = {}
			for _, blockedUser in ipairs(blockedUsers) do
				local userId = tostring(blockedUser.userId)
				blockedUsersState[userId] = true
			end
			return blockedUsersState
		end,
		[NetworkingBlocking.BlockUserById.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)
			return Dash.join(state, {
				[userId] = true,
			})
		end,
		[NetworkingBlocking.UnblockUserById.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)
			return Dash.join(state, {
				[userId] = false,
			})
		end,
	})
end
