local CorePackages = game:GetService("CorePackages")

local ReceivedUserPresence = require(CorePackages.AppTempCommon.LuaChat.Actions.ReceivedUserPresence)
local WebPresenceMap = require(CorePackages.AppTempCommon.LuaApp.Enum.WebPresenceMap)

local luaChatUseNewFriendsAndPresenceEndpoint = settings():GetFFlag("LuaChatUseNewFriendsAndPresenceEndpointV356")
local luaChatPlayTogetherUseRootPresence = settings():GetFFlag("LuaChatPlayTogetherUseRootPresence")
local luaChatRootPresenceEnabled = luaChatUseNewFriendsAndPresenceEndpoint and luaChatPlayTogetherUseRootPresence

return function(friendsPresence, store)
	for _, presenceModel in pairs(friendsPresence) do
		local userInStore = store:getState().Users[tostring(presenceModel.userId)]
		local previousUniverseId = userInStore and userInStore.universeId or nil

		if luaChatRootPresenceEnabled then
			store:dispatch(ReceivedUserPresence(
				tostring(presenceModel.userId),
				WebPresenceMap[presenceModel.userPresenceType],
				presenceModel.lastLocation,
				presenceModel.placeId and tostring(presenceModel.placeId) or nil,
				presenceModel.rootPlaceId and tostring(presenceModel.rootPlaceId) or nil,
				presenceModel.gameId and tostring(presenceModel.gameId) or nil,
				presenceModel.lastOnline and tostring(presenceModel.lastOnline) or nil,
				presenceModel.universeId,
				previousUniverseId
			))
		else
			store:dispatch(ReceivedUserPresence(
				tostring(presenceModel.userId),
				WebPresenceMap[presenceModel.userPresenceType],
				presenceModel.lastLocation,
				presenceModel.placeId and tostring(presenceModel.placeId) or nil,
				presenceModel.gameId and tostring(presenceModel.gameId) or nil,
				presenceModel.universeId,
				previousUniverseId
			))
		end
	end
end