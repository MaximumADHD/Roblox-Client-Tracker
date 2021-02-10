local CorePackages = game:GetService("CorePackages")

local User = require(CorePackages.AppTempCommon.LuaApp.Models.User)
local WebPresenceMap = require(CorePackages.AppTempCommon.LuaApp.Enum.WebPresenceMap)
local convertUniverseIdToString = require(CorePackages.AppTempCommon.LuaApp.Flags.ConvertUniverseIdToString)

return function(friendsPresence, store)
	local placeIds = {}

	for _, presenceModel in pairs(friendsPresence) do
		local universeId = convertUniverseIdToString(presenceModel.universeId)
		if WebPresenceMap[presenceModel.userPresenceType] == User.PresenceType.IN_GAME
			and (not store:getState().UniversePlaceInfos[universeId]) then
			table.insert(placeIds, presenceModel.placeId)
		end
	end

	return placeIds
end