local Modules = script.Parent.Parent

local WebApi = require(Modules.WebApi)

local SetFriendCount = require(Modules.Actions.SetFriendCount)

return function()
	return function(store)
		spawn(function()
			local status, totalCount = WebApi.GetFriendCount()
			if status ~= WebApi.Status.OK then
				store:Dispatch(SetFriendCount(0)) -- Remember to come back and add status instead of setting to zero
			else
				store:Dispatch(SetFriendCount(totalCount))
			end
		end)
	end
end