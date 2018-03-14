local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Actions = Modules.LuaApp.Actions
local Requests = Modules.LuaApp.Http.Requests
local UsersGetPresence = require(Requests.UsersGetPresence)
local SetUserPresence = require(Actions.SetUserPresence)

local User = require(Modules.LuaApp.Models.User)

local webPresenceMap = {
	[0] = User.PresenceType.OFFLINE,
	[1] = User.PresenceType.ONLINE,
	[2] = User.PresenceType.IN_GAME,
	[3] = User.PresenceType.IN_STUDIO
}

return function(networkImpl, userIds)
	return function(store)
		return UsersGetPresence(networkImpl, userIds):andThen(function(result)
			local data = result.responseBody
			if data.isValid == false then
				return
			end

			for _, presenceModel in pairs(data) do
				store:Dispatch(SetUserPresence(
					presenceModel.UserId, webPresenceMap[presenceModel.UserPresenceType], presenceModel.LastLocation
				))
			end
		end)
	end
end