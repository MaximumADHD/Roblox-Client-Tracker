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
			local blockedUserIds = action.responseBody and action.responseBody.blockedUserIds or {}
			local blockedUsers = {}
			for _, userId in ipairs(blockedUserIds) do
				blockedUsers[tostring(userId)] = true
			end
			return blockedUsers
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
