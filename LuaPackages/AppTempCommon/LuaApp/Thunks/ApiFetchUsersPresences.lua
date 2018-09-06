local CorePackages = game:GetService("CorePackages")

local ReceivedUserPresence = require(CorePackages.AppTempCommon.LuaChat.Actions.ReceivedUserPresence)
local User = require(CorePackages.AppTempCommon.LuaApp.Models.User)
local UsersGetPresence = require(CorePackages.AppTempCommon.LuaApp.Http.Requests.UsersGetPresence)

local luaChatUseNewFriendsAndPresenceEndpoint = settings():GetFFlag("LuaChatUseNewFriendsAndPresenceEndpoint")
local luaChatPlayTogetherUseRootPresence = settings():GetFFlag("LuaChatPlayTogetherUseRootPresence")
local luaChatRootPresenceEnabled = luaChatUseNewFriendsAndPresenceEndpoint and luaChatPlayTogetherUseRootPresence

local webPresenceMap = {
	[0] = User.PresenceType.OFFLINE,
	[1] = User.PresenceType.ONLINE,
	[2] = User.PresenceType.IN_GAME,
	[3] = User.PresenceType.IN_STUDIO
}

return function(networkImpl, userIds)
	return function(store)
		return UsersGetPresence(networkImpl, userIds):andThen(function(result)
			local responseBody = result.responseBody

			if luaChatRootPresenceEnabled then
				for _, presenceModel in pairs(responseBody.userPresences) do
					store:dispatch(ReceivedUserPresence(
						tostring(presenceModel.userId),
						webPresenceMap[presenceModel.userPresenceType],
						presenceModel.lastLocation,
						presenceModel.placeId,
						presenceModel.rootPlaceId,
						presenceModel.gameInstanceId,
						presenceModel.lastOnline
					))
				end
			else
				for _, presenceModel in pairs(responseBody.userPresences) do
					store:dispatch(ReceivedUserPresence(
						tostring(presenceModel.userId),
						webPresenceMap[presenceModel.userPresenceType],
						presenceModel.lastLocation,
						presenceModel.placeId
					))
				end
			end
		end)
	end
end