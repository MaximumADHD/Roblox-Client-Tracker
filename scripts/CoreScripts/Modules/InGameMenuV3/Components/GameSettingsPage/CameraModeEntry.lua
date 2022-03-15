local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local ComputerCameraMovementModeChanged = UserGameSettings:GetPropertyChangedSignal("ComputerCameraMovementMode")

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

local Flags = InGameMenu.Flags
local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

local CAMERA_MODE_LOCALIZATION_KEYS = {
	[Enum.ComputerCameraMovementMode.Classic] = "CoreScripts.InGameMenu.GameSettings.CameraModeClassic",
	[Enum.ComputerCameraMovementMode.Follow] = "CoreScripts.InGameMenu.GameSettings.CameraModeFollow",
	[Enum.ComputerCameraMovementMode.Default] = "CoreScripts.InGameMenu.GameSettings.Default",
	[Enum.ComputerCameraMovementMode.CameraToggle] = "CoreScripts.InGameMenu.GameSettings.CameraModeCameraToggle",
}

local CameraModeEntry = Roact.PureComponent:extend("CameraModeEntry")
CameraModeEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	canOpen = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.boolean) or nil,
	canCaptureFocus = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.boolean) or nil,
	ButtonRef = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.union(t.callback, t.table)) or nil,
})

if GetFFlagInGameMenuControllerDevelopmentOnly() then
	CameraModeEntry.defaultProps = {
		canOpen = true
	}
end

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
	local localizedTexts = {}
	local selectedIndex = 0

	if not disabled then
		for index, enum in ipairs(self.state.computerOptions) do
			localizedTexts[index] = CAMERA_MODE_LOCALIZATION_KEYS[enum];
			assert(localizedTexts[index] ~= nil, "Camera movement mode " .. enum.Name .. " has no localization key")

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
							UserGameSettings.ComputerCameraMovementMode = self.state.computerOptions[selection]
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

return CameraModeEntry
