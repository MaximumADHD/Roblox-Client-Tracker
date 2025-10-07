--!nonstrict
local CorePackages = game:GetService("CorePackages")
local AppStorageService = game:GetService("AppStorageService")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local React = require(CorePackages.Packages.React)

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local RoactAppExperiment = require(CorePackages.Packages.RoactAppExperiment)

local withStyle = UIBlox.Core.Style.withStyle
local GamepadNavigationDialogShowCounter = require(script.GamepadNavigationDialogShowCounter)

local Components = script.Parent.Parent
local TopBar = script.Parent.Parent.Parent
local Actions = Components.Parent.Actions
local SetGamepadNavigationDialogOpen = require(Actions.SetGamepadNavigationDialogOpen)

local GetFStringGamepadNavigationDialogABTestLayerName =
	require(TopBar.Flags.GetFStringGamepadNavigationDialogABTestLayerName)
local FFlagAlwaysShowGamepadNavigationDialog =
	require(TopBar.Flags.FFlagAlwaysShowGamepadNavigationDialog)
local FFlagAlwaysSelectButtonDismissesGamepadNavigationDialog =
	require(TopBar.Flags.FFlagAlwaysSelectButtonDismissesGamepadNavigationDialog)
local GetFIntGamepadNavigationDialogShowCount = require(TopBar.Flags.GetFIntGamepadNavigationDialogShowCount)
local FFlagTopBarDeprecateGamepadNavigationDialogRodux = require(TopBar.Flags.FFlagTopBarDeprecateGamepadNavigationDialogRodux)

local function GamepadNavigationDialogContainer(props)
	local gamepadNavigationDialogOpen, setGamepadNavigationDialogOpen = React.useState(false)

	React.useEffect(function() 
		local connection = nil
		local function disconnectGamepadConnected()
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end
		-- selene: allow(denylist_filter)
		if UserInputService:GetGamepadConnected(Enum.UserInputType.Gamepad1) then
			setGamepadNavigationDialogOpen(true)
		else
			connection = UserInputService.GamepadConnected:Connect(function()
				setGamepadNavigationDialogOpen(true)
				disconnectGamepadConnected()
			end)
		end

		GuiService:GetPropertyChangedSignal("MenuIsOpen"):Connect(disconnectGamepadConnected)

		return disconnectGamepadConnected
	end, {})

	return if gamepadNavigationDialogOpen 
		then React.createElement(GamepadNavigationDialogShowCounter, {
			isGamepadNavigationDialogEnabled = FFlagAlwaysShowGamepadNavigationDialog,
			selectButtonDismissesGamepadNavigationDialog = FFlagAlwaysSelectButtonDismissesGamepadNavigationDialog,
			appStorageKey = "GamepadMenuVirtualCursorPromptShown",
			maxShownCount = GetFIntGamepadNavigationDialogShowCount(),
			isGamepadNavigationDialogOpen = gamepadNavigationDialogOpen,
			SetGamepadNavigationDialogOpen = setGamepadNavigationDialogOpen,
		})
	else nil
end

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

if FFlagTopBarDeprecateGamepadNavigationDialogRodux then
	return GamepadNavigationDialogContainer
else
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
end