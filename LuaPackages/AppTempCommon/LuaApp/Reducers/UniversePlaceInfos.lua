local CorePackages = game:GetService("CorePackages")

local Immutable = require(CorePackages.AppTempCommon.Common.Immutable)
local ReceivedPlacesInfos = require(CorePackages.AppTempCommon.LuaApp.Actions.ReceivedPlacesInfos)

local LuaAppFlags = CorePackages.AppTempCommon.LuaApp.Flags
local convertUniverseIdToString = require(LuaAppFlags.ConvertUniverseIdToString)

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