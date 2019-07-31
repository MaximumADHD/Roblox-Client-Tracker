local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local Constants = require(Plugin.Src.Resources.Constants)

local initial = {
	screen = Constants.SCREENS.CREATE_NEW_GAME,
}

return Rodux.createReducer(initial, {
	SetScreen = function(state, action)
		return Cryo.Dictionary.join(state, {
			screen = action.screen
		})
	end,
})
