local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local Screens = require(Plugin.Src.Util.Screens)

return Rodux.createReducer({
	currentScreen = Screens.MAIN,
	previousScreens = {},
	nextScreens = {},
}, {
	SetScreen = function(state, action)
		local previousScreens = state.previousScreens
		table.insert(previousScreens, state.currentScreen)
		return Cryo.Dictionary.join(state, {
			currentScreen = action.screen,
			previousScreens = previousScreens,
			nextScreens = {},
		})
	end,

	SetToPreviousScreen = function(state, action)
		assert(#state.previousScreens > 0, "previousScreens should not be empty")
		local previousScreens = state.previousScreens
		local nextScreens = state.nextScreens
		local screen = table.remove(previousScreens)
		table.insert(nextScreens, state.currentScreen)
		return Cryo.Dictionary.join(state, {
			currentScreen = screen,
			previousScreens = previousScreens,
			nextScreens = nextScreens,
		})
	end,

	SetToNextScreen = function(state, action)
		assert(#state.nextScreens > 0, "nextScreens should not be empty")
		local previousScreens = state.previousScreens
		local nextScreens = state.nextScreens
		local screen = table.remove(nextScreens)
		table.insert(previousScreens, state.currentScreen)
		return Cryo.Dictionary.join(state, {
			currentScreen = screen,
			previousScreens = previousScreens,
			nextScreens = nextScreens,
		})
	end,
})
