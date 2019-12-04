local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local SetInspectMenuEnabled = require(InGameMenu.Actions.SetInspectMenuEnabled)

return Rodux.createReducer({
	inspectMenuEnabled = true,
}, {
	[SetInspectMenuEnabled.name] = function(state, action)
		return {
			inspectMenuEnabled = action.enabled,
		}
	end,
})