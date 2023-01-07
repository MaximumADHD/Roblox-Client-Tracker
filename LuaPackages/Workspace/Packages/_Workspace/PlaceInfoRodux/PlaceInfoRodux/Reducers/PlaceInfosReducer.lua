local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
local Packages = PlaceInfoRodux.Parent

local ReceivedMultiplePlaceInfos = require(PlaceInfoRodux.Actions).ReceivedMultiplePlaceInfos

local Immutable = require(Packages.AppCommonLib).Immutable

-- FIXME: any type Rodux
return function(state: any?, action: any)
	state = state or {}
	if action.type == ReceivedMultiplePlaceInfos.name then
		local newInfos = {}
		for _, placeInfo in ipairs(action.placeInfos) do
			newInfos[placeInfo.placeId] = placeInfo
		end

		state = Immutable.JoinDictionaries(state, newInfos)
	end
	return state
end
