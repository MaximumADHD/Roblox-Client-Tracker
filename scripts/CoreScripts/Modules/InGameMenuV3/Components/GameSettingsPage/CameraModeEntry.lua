--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local UserInputService = game:GetService("UserInputService")

local ComputerCameraMovementModeChanged = UserGameSettings:GetPropertyChangedSignal("ComputerCameraMovementMode")
local TouchCameraMovementModeChanged = UserGameSettings:GetPropertyChangedSignal("TouchCameraMovementMode")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreUtility = require(RobloxGui.Modules.CoreUtility)

local localPlayer = Players.LocalPlayer
local playerScripts = CoreUtility.waitForChildOfClass(localPlayer, "PlayerScripts")
local DevComputerCameraModeChanged = localPlayer:GetPropertyChangedSignal("DevComputerCameraMode")
local DevTouchCameraModeChanged = localPlayer:GetPropertyChangedSignal("DevTouchCameraMode")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local DropdownMenu = UIBlox.App.Menu.DropdownMenu

local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnectionMemo)

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

local TOUCH_CAMERA_MODE_LOCALIZATION_KEYS = {
	[Enum.TouchCameraMovementMode.Default] = "CoreScripts.InGameMenu.GameSettings.Default",
	[Enum.TouchCameraMovementMode.Follow] = "CoreScripts.InGameMenu.GameSettings.CameraModeFollow",
	[Enum.TouchCameraMovementMode.Classic] = "CoreScripts.InGameMenu.GameSettings.CameraModeClassic",
}

local DEV_CAMERA_MODE_LOCALIZATION_KEYS = {
	[Enum.DevComputerCameraMovementMode.Classic] = "CoreScripts.InGameMenu.GameSettings.CameraModeClassic",
	[Enum.DevComputerCameraMovementMode.Follow] = "CoreScripts.InGameMenu.GameSettings.CameraModeFollow",
	[Enum.DevComputerCameraMovementMode.CameraToggle] = "CoreScripts.InGameMenu.GameSettings.CameraModeCameraToggle",
}

local DEV_TOUCH_CAMERA_MODE_LOCALIZATION_KEYS = {
	[Enum.DevTouchCameraMovementMode.Follow] = "CoreScripts.InGameMenu.GameSettings.CameraModeFollow",
	[Enum.DevTouchCameraMovementMode.Classic] = "CoreScripts.InGameMenu.GameSettings.CameraModeClassic",
}

local CameraModeEntry = Roact.PureComponent:extend("CameraModeEntry")
CameraModeEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	canOpen = t.optional(t.boolean),
	canCaptureFocus = t.optional(t.boolean),
	ButtonRef = t.optional(t.union(t.callback, t.table)),
	controlLayout = t.optional(t.string),
})

CameraModeEntry.defaultProps = {
	canOpen = true,
}

function isTouchInputActive()
	local lastInputType = UserInputService:GetLastInputType()
	return UserInputService.TouchEnabled
		and (
			lastInputType == Enum.UserInputType.Touch
			or lastInputType == Enum.UserInputType.Focus
			or lastInputType == Enum.UserInputType.None
		)
end

function setCameraMode(touchInputActive, mode)
	if touchInputActive == true then
		UserGameSettings.TouchCameraMovementMode = mode
	else
		UserGameSettings.ComputerCameraMovementMode = mode
	end
end

function stateForInputType(touchInputActive)
	if touchInputActive == true then
		return {
			touchInputActive = true,
			selectedComputerMode = UserGameSettings.TouchCameraMovementMode,
			computerOptions = playerScripts:GetRegisteredTouchCameraMovementModes(),
			developerComputerMode = localPlayer.DevTouchCameraMode,
			disabled = localPlayer.DevTouchCameraMode ~= Enum.DevTouchCameraMovementMode.UserChoice,
			localizationKeys = TOUCH_CAMERA_MODE_LOCALIZATION_KEYS,
			localizationKeysDev = DEV_TOUCH_CAMERA_MODE_LOCALIZATION_KEYS,
		}
	else
		return {
			touchInputActive = false,
			selectedComputerMode = UserGameSettings.ComputerCameraMovementMode,
			computerOptions = playerScripts:GetRegisteredComputerCameraMovementModes(),
			developerComputerMode = localPlayer.DevComputerCameraMode,
			disabled = localPlayer.DevComputerCameraMode ~= Enum.DevComputerCameraMovementMode.UserChoice,
			localizationKeys = CAMERA_MODE_LOCALIZATION_KEYS,
			localizationKeysDev = DEV_CAMERA_MODE_LOCALIZATION_KEYS,
		}
	end
end

function CameraModeEntry:init()
	self.updateStateFromTouch = function()
		local touchInputActive = isTouchInputActive()
		self:setState(stateForInputType(touchInputActive))
	end
	self:updateStateFromTouch()
end

function CameraModeEntry:willUpdate(nextProps)
	if self.props.controlLayout ~= nextProps.controlLayout then
		self:updateStateFromTouch()
	end
end

function CameraModeEntry:render()
	-- TODO: Support gamepad and touch controls.

	local result = {
		ComputerCameraMovementModeListener = Roact.createElement(ExternalEventConnection, {
			event = ComputerCameraMovementModeChanged,
			callback = self.updateStateFromTouch,
		}),
		ComputerCameraMovementModeRegisteredListener = Roact.createElement(ExternalEventConnection, {
			event = playerScripts.ComputerCameraMovementModeRegistered,
			callback = self.updateStateFromTouch,
		}),
		LocalPlayerComputerMovementMode = Roact.createElement(ExternalEventConnection, {
			event = DevComputerCameraModeChanged,
			callback = self.updateStateFromTouch,
		}),
		TouchCameraMovementModeListener = Roact.createElement(ExternalEventConnection, {
			event = TouchCameraMovementModeChanged,
			callback = self.updateStateFromTouch,
		}),
		TouchCameraMovementModeRegisteredListener = Roact.createElement(ExternalEventConnection, {
			event = playerScripts.TouchCameraMovementModeRegistered,
			callback = self.updateStateFromTouch,
		}),
		LocalPlayerTouchMovementMode = Roact.createElement(ExternalEventConnection, {
			event = DevTouchCameraModeChanged,
			callback = self.updateStateFromTouch,
		}),
	}

	if #self.state.computerOptions == 0 then
		return Roact.createFragment(result)
	end

	local disabled = self.state.disabled
	local localizedTexts = {}
	local selectedIndex = 0

	if disabled == true then
		localizedTexts.placeholder = self.state.localizationKeysDev[self.state.developerComputerMode]
	else
		for index, enum in ipairs(self.state.computerOptions) do
			localizedTexts[index] = self.state.localizationKeys[enum]
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
		ZIndex = self.state.dropdownMenuOpen and 3 or 2,
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
				local placeholderText = localized.placeholder or "" -- Make sure placeholderText is not nil.
				local optionTexts = {}
				local nameToIndex = {}
				if disabled == true then
					nameToIndex[placeholderText] = 1
					optionTexts[1] = { text = placeholderText }
				else
					for index, text in ipairs(localized) do
						nameToIndex[text] = index
						optionTexts[index] = { text = text }
					end
				end
				return Roact.createElement(DropdownMenu, {
					onMenuOpenChange = function(menuOpen)
						self:setState({
							dropdownMenuOpen = menuOpen,
						})
					end,
					placeholder = disabled and placeholderText or localized[selectedIndex],
					height = UDim.new(0, 44),
					screenSize = self.props.screenSize,
					cellDatas = optionTexts,
					isDisabled = disabled,
					onChange = function(newSelection)
						local selection = nameToIndex[newSelection]
						if selection ~= nil then
							setCameraMode(self.state.touchInputActive, self.state.computerOptions[selection])
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

return RoactRodux.connect(function(state)
	return {
		controlLayout = state.controlLayout,
	}
end)(CameraModeEntry)
