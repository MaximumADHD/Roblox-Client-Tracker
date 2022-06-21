local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local UserInputService = game:GetService("UserInputService")

local ComputerMovementModeChanged = UserGameSettings:GetPropertyChangedSignal("ComputerMovementMode")
local TouchMovementModeChanged = UserGameSettings:GetPropertyChangedSignal("TouchMovementMode")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreUtility = require(RobloxGui.Modules.CoreUtility)

local localPlayer = Players.LocalPlayer
local playerScripts = CoreUtility.waitForChildOfClass(localPlayer, "PlayerScripts")
local DevComputerMovementModeChanged = localPlayer:GetPropertyChangedSignal("DevComputerMovementMode")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
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
local UIBloxConfig = require(InGameMenu.Parent.UIBloxInGameConfig)

local MOVEMENT_MODE_LOCALIZATION_KEYS = {
	[Enum.ComputerMovementMode.KeyboardMouse] = "CoreScripts.InGameMenu.GameSettings.ComputerMoveModeKeyboardMouse",
	[Enum.ComputerMovementMode.ClickToMove] = "CoreScripts.InGameMenu.GameSettings.ComputerMoveModeClickToMove",
	[Enum.ComputerMovementMode.Default] = "CoreScripts.InGameMenu.GameSettings.Default",
}

local TOUCH_MOVEMENT_MODE_LOCALIZATION_KEYS = {
	[Enum.TouchMovementMode.Default] = "CoreScripts.InGameMenu.GameSettings.Default",
	[Enum.TouchMovementMode.Thumbstick] = "CoreScripts.InGameMenu.Controls.ClassicThumbstick",
	[Enum.TouchMovementMode.DPad] = "CoreScripts.InGameMenu.Controls.ClassicThumbstick",
	[Enum.TouchMovementMode.Thumbpad] = "CoreScripts.InGameMenu.Controls.ClassicThumbstick",
	[Enum.TouchMovementMode.ClickToMove] = "CoreScripts.InGameMenu.Controls.TapToMove",
	[Enum.TouchMovementMode.DynamicThumbstick] = "CoreScripts.InGameMenu.Controls.DynamicThumbstick",
}

local DEV_MOVEMENT_MODE_LOCALIZATION_KEYS = {
	[Enum.DevComputerMovementMode.KeyboardMouse] = "CoreScripts.InGameMenu.GameSettings.ComputerMoveModeKeyboardMouse",
	[Enum.DevComputerMovementMode.ClickToMove] = "CoreScripts.InGameMenu.GameSettings.ComputerMoveModeClickToMove",
	[Enum.DevComputerMovementMode.Scriptable] = nil,	-- TODO(APPEXP-304): add localization
}

local MovementModeEntry = Roact.PureComponent:extend("MovementModeEntry")
MovementModeEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	screenSize = t.Vector2,
	canOpen = t.optional(t.boolean),
	canCaptureFocus = t.optional(t.boolean),
	controlLayout = t.optional(t.string),
})

MovementModeEntry.defaultProps = {
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

function currentInputModeList(touchInputActive)
	if touchInputActive then
		return playerScripts:GetRegisteredTouchMovementModes()
	else
		return playerScripts:GetRegisteredComputerMovementModes()
	end
end

function currentInputMode(touchInputActive)
	if touchInputActive then
		return UserGameSettings.TouchMovementMode
	else
		return UserGameSettings.ComputerMovementMode
	end
end

function localizationKeys(touchInputActive)
	if touchInputActive then
		return TOUCH_MOVEMENT_MODE_LOCALIZATION_KEYS
	else
		return MOVEMENT_MODE_LOCALIZATION_KEYS
	end
end

function setInputMode(touchInputActive, mode)
	if touchInputActive then
		UserGameSettings.TouchMovementMode = mode
	else
		UserGameSettings.ComputerMovementMode = mode
	end
end

function MovementModeEntry:init()
	local touchInputActive = isTouchInputActive()
	self:setState({
		touchInputActive = touchInputActive,
		selectedInputMode = currentInputMode(touchInputActive),
		inputModeList = currentInputModeList(touchInputActive),
		developerComputerMode = localPlayer.DevComputerMovementMode,
	})
end

function MovementModeEntry:willUpdate(nextProps)
	if self.props.controlLayout ~= nextProps.controlLayout then
		local touchInputActive = isTouchInputActive()
		self:setState({
			touchInputActive = touchInputActive,
			selectedInputMode = currentInputMode(touchInputActive),
			inputModeList = currentInputModeList(touchInputActive),
			developerComputerMode = localPlayer.DevComputerMovementMode,
		})
	end
end

function MovementModeEntry:render()
	-- TODO: Support gamepad controls.

	local result = {
		ComputerMovementModeListener = Roact.createElement(ExternalEventConnection, {
			event = ComputerMovementModeChanged,
			callback = function()
				local touchInputActive = isTouchInputActive()
				self:setState({
					touchInputActive = touchInputActive,
					selectedInputMode = currentInputMode(touchInputActive),
				})
			end,
		}),
		TouchMovementModeListener = Roact.createElement(ExternalEventConnection, {
			event = TouchMovementModeChanged,
			callback = function()
				local touchInputActive = isTouchInputActive()
				self:setState({
					touchInputActive = touchInputActive,
					selectedInputMode = currentInputMode(touchInputActive),
				})
			end,
		}),
		ComputerMovementModeRegisteredListener = Roact.createElement(ExternalEventConnection, {
			event = playerScripts.ComputerMovementModeRegistered,
			callback = function()
				local touchInputActive = isTouchInputActive()
				self:setState({
					touchInputActive = touchInputActive,
					inputModeList = currentInputModeList(touchInputActive),
				})
			end,
		}),
		TouchMovementModeRegisteredListener = Roact.createElement(ExternalEventConnection, {
			event = playerScripts.TouchMovementModeRegistered,
			callback = function()
				local touchInputActive = isTouchInputActive()
				self:setState({
					touchInputActive = touchInputActive,
					inputModeList = currentInputModeList(touchInputActive),
				})
			end,
		}),
		DevComputerMovementMode = Roact.createElement(ExternalEventConnection, {
			event = DevComputerMovementModeChanged,
			callback = function()
				local touchInputActive = isTouchInputActive()
				self:setState({
					touchInputActive = touchInputActive,
					developerComputerMode = localPlayer.DevComputerMovementMode,
				})
			end,
		}),
	}

	if #self.state.inputModeList == 0 then
		return Roact.createFragment(result)
	end

	local disabled = self.state.developerComputerMode ~= Enum.DevComputerMovementMode.UserChoice
	local localizedTexts = {}
	local selectedIndex = 0

	if not disabled then
		local movementLocalizationKeys = localizationKeys(self.state.touchInputActive)
		for index, enum in ipairs(self.state.inputModeList) do
			localizedTexts[index] = movementLocalizationKeys[enum]
			assert(localizedTexts[index] ~= nil, "Movement mode " .. enum.Name .. " has no localization key")

			if self.state.selectedInputMode.Value == enum.Value then
				selectedIndex = index
			end
		end
	else
		localizedTexts.placeholder = DEV_MOVEMENT_MODE_LOCALIZATION_KEYS[self.state.developerComputerMode]
	end


	result.MovementModeEntrySelector = Roact.createElement("Frame", {
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
				-- TODO(APPEXP-304): Remove this after localization is added.
				local placeholderText = localized.placeholder or "" -- Make sure placeholderText is not nil.
				local optionTexts = {}
				local nameToIndex = {}
				if disabled then
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
							dropdownMenuOpen = menuOpen
						})
					end,
					placeholder = disabled and placeholderText or localized[selectedIndex],
					size = (not UIBloxConfig.fixDropdownMenuListPositionAndSize) and UDim2.new(1, 0, 0, 44) or nil,
					height = UIBloxConfig.fixDropdownMenuListPositionAndSize and UDim.new(0,44) or nil,
					screenSize = self.props.screenSize,
					cellDatas = optionTexts,
					isDisabled = disabled,
					onChange = function(newSelection)
						local selection = nameToIndex[newSelection]
						if selection ~= nil then
							setInputMode(self.state.touchInputActive, self.state.inputModeList[selection])
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
end)(MovementModeEntry)
