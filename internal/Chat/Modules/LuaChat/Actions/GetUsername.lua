local Modules = script.Parent.Parent

local WebApi = require(Modules.WebApi)
local ActionType = require(Modules.ActionType)

return function(userId)
	return function(store)
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
