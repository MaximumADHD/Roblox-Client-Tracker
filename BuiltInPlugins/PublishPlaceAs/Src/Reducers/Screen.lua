local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local Constants = require(Plugin.Src.Resources.Constants)

local FFlagStudioPublishFlowDefaultScreen = game:DefineFastFlag("StudioPublishFlowDefaultScreen", false)

local initial
if FFlagStudioPublishFlowDefaultScreen and game.GameId == 0 then
	initial = {
		screen = Constants.SCREENS.CHOOSE_GAME,
	}
else
	initial = {
		screen = Constants.SCREENS.CREATE_NEW_GAME,
	}
end

return Rodux.createReducer(initial, {
	SetScreen = function(state, action)
		return Cryo.Dictionary.join(state, {
			screen = action.screen
		})
	end,

	ResetInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			screen = action.screen
		})
	end,
})
