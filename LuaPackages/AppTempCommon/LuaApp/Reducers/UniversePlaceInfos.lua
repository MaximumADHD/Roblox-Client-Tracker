local CorePackages = game:GetService("CorePackages")

local Immutable = require(CorePackages.AppTempCommon.Common.Immutable)
local ReceivedPlacesInfos = require(CorePackages.AppTempCommon.LuaApp.Actions.ReceivedPlacesInfos)

return function(state, action)
	state = state or {}

	if action.type == ReceivedPlacesInfos.name then
		for _, placeInfo in pairs(action.placesInfos) do
			state = Immutable.Set(state, tostring(placeInfo.universeId), placeInfo)
		end
	end

	return state
end