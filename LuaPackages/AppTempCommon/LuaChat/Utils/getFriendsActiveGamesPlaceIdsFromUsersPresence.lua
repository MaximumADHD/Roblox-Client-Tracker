local CorePackages = game:GetService("CorePackages")

local User = require(CorePackages.AppTempCommon.LuaApp.Models.User)
local WebPresenceMap = require(CorePackages.AppTempCommon.LuaApp.Enum.WebPresenceMap)

return function(friendsPresence, store)
	local placeIds = {}

	for _, presenceModel in pairs(friendsPresence) do
		if WebPresenceMap[presenceModel.userPresenceType] == User.PresenceType.IN_GAME
			and (not store:getState().UniversePlaceInfos[presenceModel.universeId]) then
			table.insert(placeIds, presenceModel.placeId)
		end
	end

	return placeIds
end