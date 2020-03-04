local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local Screens = require(Plugin.Src.Util.Screens)

return Rodux.createReducer({
	--[[
		members of the screen table should have the structure of 
		SCREENNAME = {
			Parent = <SCREENNAME of parent>,
			Key = "ScreenName",
		}
	]]
	screensTable = {},
	currentScreen = Screens.MAIN,
	previousScreens = {},
	nextScreens = {},
}, {
	SetScreen = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentScreen = action.screen,
			previousScreens = Cryo.Dictionary.join(state.previousScreens, {
                [#state.previousScreens + 1] = state.currentScreen,
            }),
			nextScreens = {},
		})
	end,

	SetToPreviousScreen = function(state, action)
		assert(#state.previousScreens > 0, "previousScreens should not be empty")
		return Cryo.Dictionary.join(state, {
			currentScreen = state.previousScreens[#state.previousScreens],
			previousScreens = {unpack(state.previousScreens, 1, #state.previousScreens-1)},
			nextScreens = Cryo.Dictionary.join(state.nextScreens, {
                [#state.nextScreens + 1] = state.currentScreen,
            }),
		})
	end,

	SetToNextScreen = function(state, action)
		assert(#state.nextScreens > 0, "nextScreens should not be empty")
		return Cryo.Dictionary.join(state, {
			currentScreen = state.nextScreens[#state.nextScreens],
			previousScreens = Cryo.Dictionary.join(state.previousScreens, {
                [#state.previousScreens + 1] = state.currentScreen,
			}),
			nextScreens = {unpack(state.nextScreens, 1, #state.nextScreens-1)},
		})
	end,
})
