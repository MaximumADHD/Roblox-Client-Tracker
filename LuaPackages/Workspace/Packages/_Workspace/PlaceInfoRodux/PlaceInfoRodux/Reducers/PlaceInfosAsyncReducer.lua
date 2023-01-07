local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
local Packages = PlaceInfoRodux.Parent

local Immutable = require(Packages.AppCommonLib).Immutable

local RequestMultiplePlaceInfos = require(PlaceInfoRodux.Actions).RequestMultiplePlaceInfos
local FailedToFetchMultiplePlaceInfos = require(PlaceInfoRodux.Actions).FailedToFetchMultiplePlaceInfos
local ReceivedMultiplePlaceInfos = require(PlaceInfoRodux.Actions).ReceivedMultiplePlaceInfos

return function(state, action)
	state = state or {}
	if action.type == RequestMultiplePlaceInfos.name then
		local newFlags = {}
		for _, placeId in ipairs(action.placeIds) do
			newFlags[placeId] = true
		end
		return Immutable.JoinDictionaries(state, newFlags)
	elseif action.type == ReceivedMultiplePlaceInfos.name then
		local newFlags = {}
		for _, placeInfo in ipairs(action.placeInfos) do
			newFlags[placeInfo.placeId] = false
		end
		return Immutable.JoinDictionaries(state, newFlags)
	elseif action.type == FailedToFetchMultiplePlaceInfos.name then
		local newFlags = {}
		for _, placeId in ipairs(action.placeIds) do
			newFlags[placeId] = false
		end
		return Immutable.JoinDictionaries(state, newFlags)
	end
	return state
end
