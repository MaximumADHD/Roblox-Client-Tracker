local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ShareGame = Modules.Settings.Pages.ShareGame
local UsersGetFriendCount = require(ShareGame.Http.Requests.UsersGetFriendCount)
local SetFriendCount = require(ShareGame.Actions.SetFriendCount)

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