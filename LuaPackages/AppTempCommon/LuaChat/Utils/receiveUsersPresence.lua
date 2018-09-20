local CorePackages = game:GetService("CorePackages")

local ReceivedUserPresence = require(CorePackages.AppTempCommon.LuaChat.Actions.ReceivedUserPresence)
local WebPresenceMap = require(CorePackages.AppTempCommon.LuaApp.Enum.WebPresenceMap)

local luaChatUseNewFriendsAndPresenceEndpoint = settings():GetFFlag("LuaChatUseNewFriendsAndPresenceEndpoint2")
local luaChatPlayTogetherUseRootPresence = settings():GetFFlag("LuaChatPlayTogetherUseRootPresence")
local luaChatRootPresenceEnabled = luaChatUseNewFriendsAndPresenceEndpoint and luaChatPlayTogetherUseRootPresence
local LuaChatAddToStringWhenUpdatingPresence = settings():GetFFlag("LuaChatAddToStringWhenUpdatingPresence")

return function(friendsPresence, store)
	for _, presenceModel in pairs(friendsPresence) do
		local userInStore = store:getState().Users[tostring(presenceModel.userId)]
		local previousUniverseId = userInStore and userInStore.universeId or nil

		if luaChatRootPresenceEnabled then
			local placeId = presenceModel.placeId
			local rootPlaceId = presenceModel.rootPlaceId
			local gameId = presenceModel.gameId
			local lastOnline = presenceModel.lastOnline

			if LuaChatAddToStringWhenUpdatingPresence then
				placeId = presenceModel.placeId and tostring(presenceModel.placeId) or nil
				rootPlaceId = presenceModel.rootPlaceId and tostring(presenceModel.rootPlaceId) or nil
				gameId = presenceModel.gameId and tostring(presenceModel.gameId) or nil
				lastOnline = presenceModel.lastOnline and tostring(presenceModel.lastOnline) or nil
			end

			store:dispatch(ReceivedUserPresence(
				tostring(presenceModel.userId),
				WebPresenceMap[presenceModel.userPresenceType],
				presenceModel.lastLocation,
				placeId,
				rootPlaceId,
				gameId,
				lastOnline,
				presenceModel.universeId,
				previousUniverseId
			))
		else
			local placeId = presenceModel.placeId
			local gameId = presenceModel.gameId

			if LuaChatAddToStringWhenUpdatingPresence then
				placeId = presenceModel.placeId and tostring(presenceModel.placeId) or nil
				gameId = presenceModel.gameId and tostring(presenceModel.gameId) or nil
			end

			store:dispatch(ReceivedUserPresence(
				tostring(presenceModel.userId),
				WebPresenceMap[presenceModel.userPresenceType],
				presenceModel.lastLocation,
				placeId,
				gameId,
				presenceModel.universeId,
				previousUniverseId
			))
		end
	end
end