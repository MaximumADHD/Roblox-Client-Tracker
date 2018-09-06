local Modules = game:GetService("CorePackages").AppTempCommon

local Action = require(Modules.Common.Action)
local DateTime = require(Modules.LuaChat.DateTime)

local luaChatUseNewFriendsAndPresenceEndpoint = settings():GetFFlag("LuaChatUseNewFriendsAndPresenceEndpoint")
local luaChatPlayTogetherUseRootPresence = settings():GetFFlag("LuaChatPlayTogetherUseRootPresence")
local luaChatRootPresenceEnabled = luaChatUseNewFriendsAndPresenceEndpoint and luaChatPlayTogetherUseRootPresence

if luaChatRootPresenceEnabled then
	return Action(script.Name, function(userId,
			presence, lastLocation,
			placeId, rootPlaceId,
			gameInstanceId, lastOnlineISO)

		local lastOnline = 0
		if lastOnlineISO ~= nil then
			local lastDateTime = DateTime.fromIsoDate(lastOnlineISO)
			if lastDateTime ~= nil then
				lastOnline = lastDateTime:GetUnixTimestamp()
			end
		end

		return {
			userId = userId,
			presence = presence,
			lastLocation = lastLocation,
			placeId = placeId,
			rootPlaceId = rootPlaceId,
			gameInstanceId = gameInstanceId,
			lastOnline = lastOnline,
		}
	end)
else
	return Action(script.Name, function(userId, presence, lastLocation, placeId)
		return {
			userId = userId,
			presence = presence,
			lastLocation = lastLocation,
			placeId = placeId,
		}
	end)
end
