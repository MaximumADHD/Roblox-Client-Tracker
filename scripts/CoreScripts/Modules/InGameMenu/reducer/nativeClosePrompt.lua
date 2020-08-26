local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux
local Cryo = InGameMenuDependencies.Cryo

local InGameMenu = script.Parent.Parent
local OpenNativeClosePrompt = require(InGameMenu.Actions.OpenNativeClosePrompt)
local CloseNativeClosePrompt = require(InGameMenu.Actions.CloseNativeClosePrompt)
local SetMenuIconTooltipOpen = require(InGameMenu.Actions.SetMenuIconTooltipOpen)

return Rodux.createReducer({
	closingApp = false,
}, {
	[OpenNativeClosePrompt.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			closingApp = true,
		})
	end,
	[CloseNativeClosePrompt.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			closingApp = false,
		})
	end,
	[SetMenuIconTooltipOpen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			menuIconTooltipOpen = action.menuIconTooltipOpen
		})
	end,
})
