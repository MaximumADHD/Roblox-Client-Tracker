local CorePackages = game:GetService("CorePackages")

local ReceivedUserPresence = require(CorePackages.AppTempCommon.LuaChat.Actions.ReceivedUserPresence)
local WebPresenceMap = require(CorePackages.AppTempCommon.LuaApp.Enum.WebPresenceMap)

local luaChatUseNewFriendsAndPresenceEndpoint = settings():GetFFlag("LuaChatUseNewFriendsAndPresenceEndpoint2")
local luaChatPlayTogetherUseRootPresence = settings():GetFFlag("LuaChatPlayTogetherUseRootPresence")
local luaChatRootPresenceEnabled = luaChatUseNewFriendsAndPresenceEndpoint and luaChatPlayTogetherUseRootPresence

return function(friendsPresence, store)
	for _, presenceModel in pairs(friendsPresence) do
		if luaChatRootPresenceEnabled then
			store:dispatch(ReceivedUserPresence(
					tostring(presenceModel.userId),
					WebPresenceMap[presenceModel.userPresenceType],
					presenceModel.lastLocation,
					presenceModel.placeId,
					presenceModel.rootPlaceId,
					presenceModel.gameId,
					presenceModel.lastOnline,
					presenceModel.universeId
			))
		else
			store:dispatch(ReceivedUserPresence(
					tostring(presenceModel.userId),
					WebPresenceMap[presenceModel.userPresenceType],
					presenceModel.lastLocation,
					presenceModel.placeId,
					presenceModel.gameId,
					presenceModel.universeId
			))
		end
	end
end