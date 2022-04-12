local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local ComputerMovementModeChanged = UserGameSettings:GetPropertyChangedSignal("ComputerMovementMode")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreUtility = require(RobloxGui.Modules.CoreUtility)

local localPlayer = Players.LocalPlayer
local playerScripts = CoreUtility.waitForChildOfClass(localPlayer, "PlayerScripts")
local DevComputerMovementModeChanged = localPlayer:GetPropertyChangedSignal("DevComputerMovementMode")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local DropdownMenu = UIBlox.App.Menu.DropdownMenu
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local InputLabel = require(script.Parent.InputLabel)
local DeveloperLockLabel = require(script.Parent.DeveloperLockLabel)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local MOVEMENT_MODE_LOCALIZATION_KEYS = {
	[Enum.ComputerMovementMode.KeyboardMouse] = "CoreScripts.InGameMenu.GameSettings.ComputerMoveModeKeyboardMouse",
	[Enum.ComputerMovementMode.ClickToMove] = "CoreScripts.InGameMenu.GameSettings.ComputerMoveModeClickToMove",
	[Enum.ComputerMovementMode.Default] = "CoreScripts.InGameMenu.GameSettings.Default",
}

local MovementModeEntry = Roact.PureComponent:extend("MovementModeEntry")
MovementModeEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	canOpen = t.optional(t.boolean),
	canCaptureFocus = t.optional(t.boolean),
})

MovementModeEntry.defaultProps = {
	canOpen = true
}

function MovementModeEntry:init()
	self:setState({
		selectedComputerMode = UserGameSettings.ComputerMovementMode,
		computerOptions = playerScripts:GetRegisteredComputerMovementModes(),
		developerComputerMode = localPlayer.DevComputerMovementMode,
	})
end

function MovementModeEntry:render()
	-- TODO: Support gamepad and touch controls.

	local result = {
		ComputerMovementModeListener = Roact.createElement(ExternalEventConnection, {
			event = ComputerMovementModeChanged,
			callback = function()
				self:setState({
					selectedComputerMode = UserGameSettings.ComputerMovementMode,
				})
			end,
		}),
		ComputerMovementModeRegisteredListener = Roact.createElement(ExternalEventConnection, {
			event = playerScripts.ComputerMovementModeRegistered,
			callback = function()
				self:setState({
					computerOptions = playerScripts:GetRegisteredComputerMovementModes(),
				})
			end,
		}),
		DevComputerMovementMode = Roact.createElement(ExternalEventConnection, {
			event = DevComputerMovementModeChanged,
			callback = function()
				self:setState({
					developerComputerMode = localPlayer.DevComputerMovementMode,
				})
			end,
		}),
	}

	if #self.state.computerOptions == 0 then
		return Roact.createFragment(result)
	end

	local disabled = self.state.developerComputerMode ~= Enum.DevComputerMovementMode.UserChoice
	local localizedTexts = {}
	local selectedIndex = 0

	if not disabled then
		for index, enum in ipairs(self.state.computerOptions) do
			localizedTexts[index] = MOVEMENT_MODE_LOCALIZATION_KEYS[enum]
			assert(localizedTexts[index] ~= nil, "Movement mode " .. enum.Name .. " has no localization key")

			if self.state.selectedComputerMode.Value == enum.Value then
				selectedIndex = index
			end
		end
	end

	result.MovementModeEntrySelector = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 44 + 56 + 20),
		BackgroundTransparency = 1,
		LayoutOrder = self.props.LayoutOrder,
		ZIndex = 2,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24),
			PaddingRight = UDim.new(0, 24),
		}),
		InputLabel = Roact.createElement(InputLabel, {
			localizationKey = "CoreScripts.InGameMenu.GameSettings.MovementMode",
			Size = UDim2.new(1, 0, 0, 56),
			Position = UDim2.new(0, 0, 0, 0),
			AnchorPoint = Vector2.new(0, 0),
		}),
		OffsetFrame = Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, 56),
			Size = UDim2.new(1, 0, 0, 44),
			BackgroundTransparency = 1,
		}, {
			Dropdown = withLocalization(localizedTexts)(function(localized)
				local optionTexts = {}
				local nameToIndex = {}
				for index, text in ipairs(localized) do
					nameToIndex[text] = index;
					optionTexts[index] = { text = text }
				end

				return Roact.createElement(DropdownMenu, {
					placeholder = localized[selectedIndex],
					height = UDim.new(0, 44),
					screenSize = self.props.screenSize,
					cellDatas = optionTexts,
					isDisabled = disabled,
					onChange = function(newSelection)
						local selection = nameToIndex[newSelection]
						if (selection ~= nil) then
							UserGameSettings.ComputerMovementMode = self.state.computerOptions[selection]
							SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
						end
					end,
				})
			end),
		}),
		LockedLabel = disabled and Roact.createElement(DeveloperLockLabel, {
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, 0),
			Size = UDim2.new(1, -72, 0.25, 0),
		}),
	})

	return Roact.createFragment(result)
end

return MovementModeEntry
