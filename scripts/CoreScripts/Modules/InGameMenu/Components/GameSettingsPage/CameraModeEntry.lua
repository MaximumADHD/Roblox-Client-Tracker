local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local ComputerCameraMovementModeChanged = UserGameSettings:GetPropertyChangedSignal("ComputerCameraMovementMode")

local localPlayer = Players.LocalPlayer
local playerScripts = localPlayer:WaitForChild("PlayerScripts")
local DevComputerMovementModeChanged = localPlayer:GetPropertyChangedSignal("DevComputerMovementMode")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local DropDownSelection = require(InGameMenu.Components.DropDownSelection)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local InputLabel = require(script.Parent.InputLabel)
local DeveloperLockLabel = require(script.Parent.DeveloperLockLabel)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local CAMERA_MODE_LOCALIZATION_KEYS = {
	[Enum.ComputerCameraMovementMode.Classic] = "CoreScripts.InGameMenu.GameSettings.CameraModeClassic",
	[Enum.ComputerCameraMovementMode.Follow] = "CoreScripts.InGameMenu.GameSettings.CameraModeFollow",
	[Enum.ComputerCameraMovementMode.Default] = "CoreScripts.InGameMenu.GameSettings.Default",
	[Enum.ComputerCameraMovementMode.CameraToggle] = "CoreScripts.InGameMenu.GameSettings.CameraModeCameraToggle",
}

local CameraModeEntry = Roact.PureComponent:extend("CameraSensitivityEntry")
CameraModeEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
})

function CameraModeEntry:init()
	self:setState({
		selectedComputerMode = UserGameSettings.ComputerCameraMovementMode,
		computerOptions = playerScripts:GetRegisteredComputerCameraMovementModes(),
		developerComputerMode = localPlayer.DevComputerCameraMode,
	})
end

function CameraModeEntry:render()
	-- TODO: Support gamepad and touch controls.

	local result = {
		ComputerCameraMovementModeListener = Roact.createElement(ExternalEventConnection, {
			event = ComputerCameraMovementModeChanged,
			callback = function()
				self:setState({
					selectedComputerMode = UserGameSettings.ComputerCameraMovementMode,
				})
			end,
		}),
		ComputerCameraMovementModeRegisteredListener = Roact.createElement(ExternalEventConnection, {
			event = playerScripts.ComputerCameraMovementModeRegistered,
			callback = function()
				self:setState({
					computerOptions = playerScripts:GetRegisteredComputerCameraMovementModes(),
				})
			end,
		}),
		LocalPlayerComputerMovementMode = Roact.createElement(ExternalEventConnection, {
			event = DevComputerMovementModeChanged,
			callback = function()
				self:setState({
					developerComputerMode = localPlayer.DevComputerCameraMode,
				})
			end,
		}),
	}

	if #self.state.computerOptions == 0 then
		return Roact.createFragment(result)
	end

	local disabled = self.state.developerComputerMode ~= Enum.DevComputerCameraMovementMode.UserChoice
	local optionTexts = {}
	local selectedIndex = 0

	if not disabled then
		for index, enum in ipairs(self.state.computerOptions) do
			optionTexts[index] = CAMERA_MODE_LOCALIZATION_KEYS[enum]
			assert(optionTexts[index] ~= nil, "Camera movement mode " .. enum.Name .. " has no localization key")

			if self.state.selectedComputerMode.Value == enum.Value then
				selectedIndex = index
			end
		end
	end

	result.CameraModeEntrySelector = Roact.createElement("Frame", {
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
			localizationKey = "CoreScripts.InGameMenu.GameSettings.CameraMode",
			Size = UDim2.new(1, 0, 0, 56),
			Position = UDim2.new(0, 0, 0, 0),
			AnchorPoint = Vector2.new(0, 0),
		}),
		Dropdown = withLocalization({
			placeholder = disabled and CAMERA_MODE_LOCALIZATION_KEYS[self.state.developerComputerMode] or nil
		})(function(localized)
				return Roact.createElement(DropDownSelection, {
				Size = UDim2.new(1, 0, 0, 44),
				Position = UDim2.new(0, 0, 0, 56),
				selections = optionTexts,
				selectedIndex = selectedIndex,
				placeHolderText = self.state.developerComputerMode.Name,
				enabled = not disabled,
				localize = true,
				selectionChanged = function(newSelection)
					UserGameSettings.ComputerCameraMovementMode = self.state.computerOptions[newSelection]
					SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
				end,
			})
		end),
		LockedLabel = disabled and Roact.createElement(DeveloperLockLabel, {
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, 0),
			Size = UDim2.new(1, -72, 0.25, 0),
		}),
	})

	return Roact.createFragment(result)
end

return CameraModeEntry