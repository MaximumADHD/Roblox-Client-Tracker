local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)

local SetInspectMenuEnabled = require(InGameMenu.Actions.SetInspectMenuEnabled)
local SetInputType = require(InGameMenu.Actions.SetInputType)

local InputType = Constants.InputType

local GetFFlagFixDisplayOptionsReducer = require(InGameMenu.Flags.GetFFlagFixDisplayOptionsReducer)

return Rodux.createReducer({
	inspectMenuEnabled = true,
	inputType = InputType.MouseAndKeyboard,
}, {
	[SetInspectMenuEnabled.name] = function(state, action)
		return {
			inspectMenuEnabled = action.enabled,
			inputType = state.inputType,
		}
	end,

	[SetInputType.name] = function(state, action)
		if GetFFlagFixDisplayOptionsReducer() then
			return {
				inspectMenuEnabled = state.inspectMenuEnabled,
				inputType = action.inputType,
			}
		else
			return {
				inspectMenuEnabled = state.enabled,
				inputType = action.inputType,
			}
		end
	end,
})
