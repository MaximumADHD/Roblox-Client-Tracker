local Modules = game:GetService("CorePackages").AppTempCommon

local Action = require(Modules.Common.Action)
local LuaDateTime = require(Modules.LuaChat.DateTime)

return Action(script.Name, function(userId,
		presence, lastLocation,
		placeId, rootPlaceId,
		gameInstanceId, lastOnlineISO, universeId, previousUniverseId)

	local lastOnline = 0
	if lastOnlineISO ~= nil then
		local lastDateTime = LuaDateTime.fromIsoDate(lastOnlineISO)
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
		universeId = universeId,
		previousUniverseId = previousUniverseId,
	}
end)