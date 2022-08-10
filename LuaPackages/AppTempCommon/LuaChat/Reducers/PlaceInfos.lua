local CorePackages = game:GetService("CorePackages")

local Common = CorePackages.AppTempCommon.Common
local LuaChat = CorePackages.AppTempCommon.LuaChat

local ReceivedMultiplePlaceInfos = require(LuaChat.Actions.ReceivedMultiplePlaceInfos)

local Immutable = require(Common.Immutable)

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
