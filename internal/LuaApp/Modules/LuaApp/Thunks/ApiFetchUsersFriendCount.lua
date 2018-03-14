local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Actions = Modules.LuaApp.Actions
local Requests = Modules.LuaApp.Http.Requests
local UsersGetFriendCount = require(Requests.UsersGetFriendCount)
local SetFriendCount = require(Actions.SetFriendCount)

return function(networkImpl)
	return function(store)
		return UsersGetFriendCount(networkImpl):andThen(function(result)
			local data = result.responseBody

			if data.success and data.count then
				store:Dispatch(SetFriendCount(data.count))
			end

			return data.count
		end)
	end
end