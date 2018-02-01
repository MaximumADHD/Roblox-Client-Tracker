local Modules = script.Parent.Parent

local WebApi = require(Modules.WebApi)
local ActionType = require(Modules.ActionType)

local function shouldFetchUsername(state, userId)
	local userAS = state.UsersAsync[userId]
	if userAS and userAS.nameIsFetching then
		return false
	end
	local user = state.Users[userId]
	if not user then
		return true
	end
	if not user.name then
		return true
	end
	return false
end

return function(userId)
	return function(store)
		if not shouldFetchUsername(store:GetState(), userId) then
			return
		end

		store:Dispatch({
			type = ActionType.RequestUsername,
			userId = userId,
		})

		spawn(function()
			local status, result = WebApi.GetUsername(userId)

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetUsername")
				return
			end

			store:Dispatch({
				type = ActionType.ReceivedUsername,
				userId = userId,
				username = result.username,
			})
		end)
	end
end
