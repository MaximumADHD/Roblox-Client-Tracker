local CorePackages = game:GetService("CorePackages")

local Immutable = require(CorePackages.Workspace.Packages.AppCommonLib).Immutable
local ReceivedPlacesInfos = require(CorePackages.Workspace.Packages.PlaceInfoRodux).Actions.ReceivedPlacesInfos

local convertUniverseIdToString = require(CorePackages.Workspace.Packages.SharedFlags).ConvertUniverseIdToString

return function(state, action)
	state = state or {}

	if action.type == ReceivedPlacesInfos.name then
		for _, placeInfo in pairs(action.placesInfos) do
			local universeId = convertUniverseIdToString(placeInfo.universeId)

			state = Immutable.Set(state, universeId, placeInfo)
		end
	end

	return state
end
