local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ShareGame = Modules.Settings.Pages.ShareGame
local Actions = ShareGame.Actions
local Requests = ShareGame.Http.Requests
local UsersGetPresence = require(Requests.UsersGetPresence)
local SetUserPresence = require(Actions.SetUserPresence)

local User = require(ShareGame.Models.User)

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

			for _, presenceModel in pairs(data.userPresences) do
				store:dispatch(SetUserPresence(
					presenceModel.userId, webPresenceMap[presenceModel.userPresenceType], presenceModel.lastLocation
				))
			end
		end)
	end
end