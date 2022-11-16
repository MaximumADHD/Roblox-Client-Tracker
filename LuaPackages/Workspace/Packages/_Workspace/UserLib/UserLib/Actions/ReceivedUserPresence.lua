local UserLib = script:FindFirstAncestor("UserLib")
local Packages = UserLib.Parent

local Action = require(Packages.Rodux).makeActionCreator
-- flag protect migrating to use Engine DateTime
local LuaDateTime = require(Packages.Time).DateTime

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
