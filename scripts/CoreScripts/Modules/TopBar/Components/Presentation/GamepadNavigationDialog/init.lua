--!nonstrict
local CorePackages = game:GetService("CorePackages")
local AppStorageService = game:GetService("AppStorageService")
local HttpService = game:GetService("HttpService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local RoactAppExperiment = require(CorePackages.Packages.RoactAppExperiment)

local withStyle = UIBlox.Core.Style.withStyle
local GamepadNavigationDialogShowCounter = require(script.GamepadNavigationDialogShowCounter)

local Components = script.Parent.Parent
local Actions = Components.Parent.Actions
local SetGamepadNavigationDialogOpen = require(Actions.SetGamepadNavigationDialogOpen)

local GetFStringGamepadNavigationDialogABTestLayerName =
	require(script.Parent.Parent.Parent.Flags.GetFStringGamepadNavigationDialogABTestLayerName)
local FFlagAlwaysShowGamepadNavigationDialog =
	require(script.Parent.Parent.Parent.Flags.FFlagAlwaysShowGamepadNavigationDialog)
local FFlagAlwaysSelectButtonDismissesGamepadNavigationDialog =
	require(script.Parent.Parent.Parent.Flags.FFlagAlwaysSelectButtonDismissesGamepadNavigationDialog)
local GetFIntGamepadNavigationDialogShowCount = require(Components.Parent.Flags.GetFIntGamepadNavigationDialogShowCount)

local abTestLayerName = GetFStringGamepadNavigationDialogABTestLayerName()
local GamepadNavigationDialogWithExperiments = RoactAppExperiment.connectUserLayer(
	{ abTestLayerName },
	function(variables, props)
		local variables = variables[abTestLayerName] or {}
		return {
			isGamepadNavigationDialogEnabled = FFlagAlwaysShowGamepadNavigationDialog
				or variables.isGamepadNavigationDialogEnabled,
			selectButtonDismissesGamepadNavigationDialog = FFlagAlwaysSelectButtonDismissesGamepadNavigationDialog
				or variables.selectButtonDismissesGamepadNavigationDialog,
			appStorageKey = "GamepadMenuVirtualCursorPromptShown",
			maxShownCount = GetFIntGamepadNavigationDialogShowCount(),
		}
	end
)(GamepadNavigationDialogShowCounter)

return RoactRodux.connect(function(state)
	return {
		isGamepadNavigationDialogOpen = state.displayOptions.isGamepadNavigationDialogOpen,
	}
end, function(dispatch)
	return {
		SetGamepadNavigationDialogOpen = function(open)
			return dispatch(SetGamepadNavigationDialogOpen(open))
		end,
	}
end)(GamepadNavigationDialogWithExperiments)
