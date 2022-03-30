local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent
local SetQuickActionsTooltip = require(InGameMenu.Actions.SetQuickActionsTooltip)

return Rodux.createReducer({}, {
	[SetQuickActionsTooltip.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			tooltipText = action.tooltipText,
		})
	end,
})