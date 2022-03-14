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
			local blockedUsers = {}
			if action.responseBody.userList then
				for _, userId in ipairs(action.responseBody.userList) do
					blockedUsers[tostring(userId)] = true
				end
			end
			return blockedUsers
		end,
		[NetworkingBlocking.BlockUserById.Succeeded.name] = function(state, action)
			-- TODO: check when SOCCONN-1093 done
			local userId = tostring(action.postBody.userId)
			return Dash.join(state, {
				[userId] = true,
			})
		end,
		[NetworkingBlocking.UnblockUserById.Succeeded.name] = function(state, action)
			-- TODO: check when SOCCONN-1093 done
			local userId = tostring(action.postBody.userId)
			return Dash.join(state, {
				[userId] = false,
			})
		end,
	})
end
