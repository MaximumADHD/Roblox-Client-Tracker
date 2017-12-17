local Modules = script.Parent.Parent

local WebApi = require(Modules.WebApi)
local ActionType = require(Modules.ActionType)

return function()
	return function(store)
		spawn(function()
			local status, totalCount = WebApi.GetFriendshipCount()
			if status ~= WebApi.Status.OK then
				store:Dispatch({
					type = ActionType.SetFriendCount,
					count = 0, -- Remember to come back and add status instead of setting to zero
				})
			else
				store:Dispatch({
					type = ActionType.SetFriendCount,
					count = totalCount,
				})
			end
		end)
	end
end