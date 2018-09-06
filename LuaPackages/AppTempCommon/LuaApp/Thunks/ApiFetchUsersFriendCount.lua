local CorePackages = game:GetService("CorePackages")

local Actions = CorePackages.AppTempCommon.LuaApp.Actions
local Requests = CorePackages.AppTempCommon.LuaApp.Http.Requests

local UsersGetFriendCount = require(Requests.UsersGetFriendCount)
local SetFriendCount = require(Actions.SetFriendCount)

return function(networkImpl)
	return function(store)
		return UsersGetFriendCount(networkImpl):andThen(function(result)
			local data = result.responseBody

			if data.success and data.count then
				store:dispatch(SetFriendCount(data.count))
			end

			return data.count
		end)
	end
end