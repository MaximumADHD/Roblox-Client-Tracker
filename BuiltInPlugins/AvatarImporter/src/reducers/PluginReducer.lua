local root = script.Parent.Parent.Parent

-- imports
local Rodux = require(root.lib.Rodux)
local Cryo = require(root.lib.Cryo)

local Constants = require(root.src.Constants)

local actions = root.src.actions
local ClosePlugin = require(actions.ClosePlugin)
local TogglePlugin = require(actions.TogglePlugin)
local SetScreen = require(actions.SetScreen)

return Rodux.createReducer({
	enabled = false,
	screen = Constants.SCREENS.AVATAR,
}, {

	[ClosePlugin.name] = function(state, action)
		if state.screen ~= Constants.SCREENS.LOADING or action.force then
			return Cryo.Dictionary.join(state, {
				enabled = false,
			})
		else
			return state
		end
	end,

	[TogglePlugin.name] = function(state)
		return Cryo.Dictionary.join(state, {
			enabled = not state.enabled,
			screen = Constants.SCREENS.AVATAR,
		})
	end,

	[SetScreen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			screen = action.screen,
		})
	end,

})