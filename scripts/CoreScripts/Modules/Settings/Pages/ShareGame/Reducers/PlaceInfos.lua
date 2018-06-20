
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ShareGame = Modules.Settings.Pages.ShareGame
local Immutable = require(ShareGame.Immutable)
local ReceivedPlaceInfo = require(ShareGame.Actions.ReceivedPlaceInfo)

return function(state, action)
	state = state or {}
	if action.type == ReceivedPlaceInfo.name then
		state = Immutable.Set(state, action.placeInfo.placeId, action.placeInfo)
	end
	return state
end
