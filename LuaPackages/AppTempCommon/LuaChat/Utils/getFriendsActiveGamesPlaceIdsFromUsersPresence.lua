local CorePackages = game:GetService("CorePackages")

local User = require(CorePackages.Workspace.Packages.UserLib).Models.UserModel
local WebPresenceMap = require(CorePackages.Workspace.Packages.UserLib).Enum.WebPresenceMap
local convertUniverseIdToString = require(CorePackages.Workspace.Packages.SharedFlags).ConvertUniverseIdToString

game:DefineFastFlag("LuaAppFixActiveGameLoadingCheck", false)

return function(friendsPresence, store)
	local placeIds = {}

	if game:GetFastFlag("LuaAppFixActiveGameLoadingCheck") and not store:getState().UniversePlaceInfos then
		-- If UniversePlaceInfos is missing from this state, it means it's not
		-- being stored/used by this rodux store. This happens with the
		-- in-experience rodux store and causes warnings in the output
		
		-- Since we don't need this data in experience, we return an empty placeId table here to
		-- prevent corescripts from trying to fetch/store in the non-existent table
		return placeIds
	end

	for _, presenceModel in pairs(friendsPresence) do
		local universeId = convertUniverseIdToString(presenceModel.universeId)
		if WebPresenceMap[presenceModel.userPresenceType] == User.PresenceType.IN_GAME
			and (not store:getState().UniversePlaceInfos[universeId]) then
			table.insert(placeIds, presenceModel.placeId)
		end
	end

	return placeIds
end
