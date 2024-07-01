--!nonstrict
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local UserInputService = game:GetService("UserInputService")

local platform = UserInputService:GetPlatform()
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local localPlayer = Players.LocalPlayer
local DevEnableMouseLockChanged = localPlayer:GetPropertyChangedSignal("DevEnableMouseLock")

local IsUsingCameraYInvertedChanged = UserGameSettings:GetPropertyChangedSignal("IsUsingCameraYInverted")

local FocusHandler = require(script.Parent.Parent.Connection.FocusHandler)

local InGameMenu = script.Parent.Parent.Parent

local Divider = require(InGameMenu.Components.Divider)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local Page = require(InGameMenu.Components.Page)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local withLocalization = require(InGameMenu.Localization.withLocalization)
local Assets = require(InGameMenu.Resources.Assets)

local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local AutoPropertyToggleEntry = require(script.Parent.AutoPropertyToggleEntry)
local SafetyBubbleModeEntry = require(script.Parent.SafetyBubbleModeEntry)
local ComfortSettingsEntry
if game:GetEngineFeature("VRMoreComfortSettings") then
	ComfortSettingsEntry = require(script.Parent.ComfortSettingsEntry)
end
local CameraModeEntry = require(script.Parent.CameraModeEntry)
local CameraSensitivityEntry = require(script.Parent.CameraSensitivityEntry)
local CategoryHeader = require(script.Parent.CategoryHeader)
local DeviceSelectionEntry = require(script.Parent.DeviceSelectionEntry)
local GraphicsQualityEntry = require(script.Parent.GraphicsQualityEntry)
local MovementModeEntry = require(script.Parent.MovementModeEntry)
local ToggleEntry = require(script.Parent.ToggleEntry)
local VolumeEntry = require(script.Parent.VolumeEntry)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local Flags = InGameMenu.Flags
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagAddHapticsToggle = SharedFlags.GetFFlagAddHapticsToggle
local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)
local GetFFlagAlwaysShowVRToggle = require(RobloxGui.Modules.Flags.GetFFlagAlwaysShowVRToggle)

local EnableNewComfortSettingsUI = game:GetEngineFeature("VRMoreComfortSettings")

local VREnabledChanged = UserGameSettings:GetPropertyChangedSignal("VREnabled")
local IsVRAppBuild = require(CorePackages.Workspace.Packages.AppCommonLib).IsVRAppBuild

local NAVIGATE_FORWARD_BUTTON_HEIGHT = 54
local NAVIGATE_FORWARD_TEXT_PADDING_LEFT = 24
local NAVIGATE_FORWARD_TEXT_PADDING_RIGHT = 72
local NAVIGATE_FORWARD_ICON_SIZE = 36

local BasicPage = Roact.PureComponent:extend("BasicPage")
BasicPage.validateProps = t.strictInterface({
	switchToAdvancedPage = t.callback,
	switchToVRComfortSettingsPage = t.callback,
	pageTitle = t.string,
	isMenuOpen = t.boolean,
	currentPage = t.optional(t.string),
	canCaptureFocus = t.optional(t.boolean),
	canGamepadCaptureFocus = t.optional(t.boolean),
	vrService = t.optional(t.union(t.Instance, t.table)),
	isVRAppBuild = t.optional(t.callback),
	currentZone = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.number) or nil,
})

BasicPage.defaultProps = {
	-- vrService can be overridden as a prop to allow a mock for testing
	vrService = VRService,
	isVRAppBuild = IsVRAppBuild,
}

local vrEnabledAtModuleLoad = UserGameSettings.VREnabled

function BasicPage:init()
	self:setState({
		shiftLockEnabled = localPlayer.DevEnableMouseLock,
		fullScreenEnabled = UserGameSettings:InFullScreen(),
		invertedCameraEnabled = UserGameSettings.IsUsingCameraYInverted,
		vrActive = self.props.vrService.VREnabled,
		vrEnabled = UserGameSettings.VREnabled,
		voiceChatEnabled = false,
	})

	self.pageSize, self.setPageSize = Roact.createBinding(UDim2.new(0, 0, 0, 0))

	self.cameraModeButton = Roact.createRef() -- reference to the cameramode button at the top of the page
	self.volumeButton = Roact.createRef() -- reference to the slider button at the top of the page in vr
end

function BasicPage:didUpdate(prevProps)
	if not GetFFlagIGMGamepadSelectionHistory() then
		-- Gamepad navigation
		-- if there is nothing selected on page open, select the first button in the menu
		if (self.props.canCaptureFocus and self.props.canGamepadCaptureFocus)
			and not (prevProps.canCaptureFocus and prevProps.canGamepadCaptureFocus)
		then
			if not self.state.vrActive then
				GuiService.SelectedCoreObject = self.cameraModeButton:getValue()
			else
				GuiService.SelectedCoreObject = self.volumeButton:getValue()
			end
		end
	end
end

local function createLayoutOrderGenerator()
	local layoutOrder = 0
	return function()
		layoutOrder += 1
		return layoutOrder
	end
end

function BasicPage:renderWithSelectionCursor(getSelectionCursor)
	local getNextLayoutOrder = createLayoutOrderGenerator()
	local showInputOutputAudioDevices = self.state.voiceChatEnabled and not self.props.isVRAppBuild()
	local showVRToggle = if GetFFlagAlwaysShowVRToggle() then platform == Enum.Platform.Windows or platform == Enum.Platform.UWP else (self.state.vrActive or UserGameSettings.HasEverUsedVR) and not self.props.isVRAppBuild()

	return Roact.createElement(Page, {
		pageTitle = self.props.pageTitle,
		position = self.props.position,
	}, {
		FocusHandler = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandler, {
			isFocused = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
			shouldForgetPreviousSelection = self.props.currentPage == Constants.MainPagePageKey or self.props.currentZone == 0,
			didFocus = function(previousSelection)
				if previousSelection then
					GuiService.SelectedCoreObject = previousSelection
				elseif not self.state.vrActive then
					GuiService.SelectedCoreObject = self.cameraModeButton:getValue()
				else
					GuiService.SelectedCoreObject = self.volumeButton:getValue()
				end
			end
		}) or nil,
		PageContents = Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			CanvasSize = self.pageSize,
			Position = self.props.position,
			Size = UDim2.new(1, 0, 1, 0),
			Selectable = false,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				[Roact.Change.AbsoluteContentSize] = function(rbx)
					self.setPageSize(UDim2.new(0, 0, 0, rbx.AbsoluteContentSize.Y))
				end,
			}),
			VRControlsHeader = if self.state.vrActive then Roact.createElement(CategoryHeader, {
				LayoutOrder = getNextLayoutOrder(),
				localizationKey = "CoreScripts.InGameMenu.GameSettings.VrControlsTitle",
			}) else nil,
			VignetteEnabled = if not EnableNewComfortSettingsUI and self.state.vrActive then Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = getNextLayoutOrder(),
				labelKey = "CoreScripts.InGameMenu.GameSettings.VignetteEnabled",
				instance = UserGameSettings,
				valueKey = "VignetteEnabled",
			}) else nil,
			VRSmoothRotationEnabled = if not EnableNewComfortSettingsUI and self.state.vrActive then Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = getNextLayoutOrder(),
				labelKey = "CoreScripts.InGameMenu.GameSettings.VRSmoothRotationEnabled",
				instance = UserGameSettings,
				valueKey = "VRSmoothRotationEnabled",
			}) else nil,
			VRComfortSettings = if EnableNewComfortSettingsUI and self.state.vrActive then Roact.createElement(ComfortSettingsEntry, {
				LayoutOrder = getNextLayoutOrder(),
			}) else nil,
			VRComfortSettingsPageButton = if EnableNewComfortSettingsUI and self.state.vrActive then Roact.createElement("TextButton", {
				LayoutOrder = getNextLayoutOrder(),
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, NAVIGATE_FORWARD_BUTTON_HEIGHT),
				Text = "",
				[Roact.Event.Activated] = self.props.switchToVRComfortSettingsPage,
			}, {
				Text = withLocalization({
					text = "CoreScripts.InGameMenu.GameSettings.SwitchToVRComfortSettings",
				})(function(localization)
					return Roact.createElement(ThemedTextLabel, {
						Text = localization.text,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontKey = "Body",
						themeKey = "TextDefault",
						Size = UDim2.new(1, -(NAVIGATE_FORWARD_TEXT_PADDING_LEFT + NAVIGATE_FORWARD_TEXT_PADDING_RIGHT), 1, 0),
						Position = UDim2.new(0, NAVIGATE_FORWARD_TEXT_PADDING_LEFT, 0.5, 0),
						AnchorPoint = Vector2.new(0, 0.5),
					})
				end),
				Icon = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Assets.Images.NavigateForward,
					Size = UDim2.new(0, NAVIGATE_FORWARD_ICON_SIZE, 0, NAVIGATE_FORWARD_ICON_SIZE),
					Position = UDim2.new(1, -NAVIGATE_FORWARD_ICON_SIZE, 0.5, 0),
					AnchorPoint = Vector2.new(1, 0.5),
				}),
			}) else nil,
			VRMode = if showVRToggle then Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = getNextLayoutOrder(),
				labelKey = "CoreScripts.InGameMenu.GameSettings.VREnabled",
				instance = UserGameSettings,
				valueKey = "VREnabled",
				subtextEnabled = self.state.vrEnabled ~= vrEnabledAtModuleLoad,
				subtextKey = "CoreScripts.InGameMenu.GameSettings.RestartPending",
			}) else nil,
			VRSafetyBubbleMode = if self.state.vrActive then Roact.createElement(SafetyBubbleModeEntry, {
				LayoutOrder = getNextLayoutOrder(),
			}) else nil,
			VRControlsDivider = if self.state.vrActive then Roact.createElement(Divider, {
				LayoutOrder = getNextLayoutOrder(),
				Size = UDim2.new(1, -24, 0, 1),
			}) else nil,
			CameraHeader = if not self.state.vrActive then Roact.createElement(CategoryHeader, {
				LayoutOrder = getNextLayoutOrder(),
				localizationKey = "CoreScripts.InGameMenu.GameSettings.CameraTitle",
			}) else nil,
			CameraMode = not self.state.vrActive and Roact.createElement(CameraModeEntry, {
				LayoutOrder = getNextLayoutOrder(),
				ButtonRef = self.cameraModeButton,
				canOpen = self.props.canCaptureFocus,
				canCaptureFocus = self.props.canGamepadCaptureFocus,
			}),
			InvertedCamera = not self.state.vrActive
				and self.state.invertedCameraEnabled
				and Roact.createElement(AutoPropertyToggleEntry, {
					LayoutOrder = getNextLayoutOrder(),
				labelKey = "CoreScripts.InGameMenu.GameSettings.InvertedCamera",
				instance = UserGameSettings,
				valueKey = "CameraYInverted",
			}),
			CameraSensitivity = not self.state.vrActive and Roact.createElement(CameraSensitivityEntry, {
				LayoutOrder = getNextLayoutOrder(),
				canCaptureFocus = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
				isMenuOpen = self.props.isMenuOpen,
			}),
			CameraDivider = if not self.state.vrActive then Roact.createElement(Divider, {
				LayoutOrder = getNextLayoutOrder(),
				Size = UDim2.new(1, -24, 0, 1),
			}) else nil,

			ControlsHeader = Roact.createElement(CategoryHeader, {
				LayoutOrder = getNextLayoutOrder(),
				localizationKey = "CoreScripts.InGameMenu.GameSettings.ControlsAudio",
			}),
			ShiftLock = not self.state.vrActive and Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = getNextLayoutOrder(),
				labelKey = "CoreScripts.InGameMenu.GameSettings.ShiftLock",
				instance = UserGameSettings,
				valueKey = "ControlMode",
				onValue = Enum.ControlMode.MouseLockSwitch,
				offValue = Enum.ControlMode.Classic,
				lockedToOff = not self.state.shiftLockEnabled,
			}),
			MovementMode = not self.state.vrActive and Roact.createElement(MovementModeEntry, {
				LayoutOrder = getNextLayoutOrder(),
				canOpen = self.props.canCaptureFocus,
				canCaptureFocus = self.props.canGamepadCaptureFocus,
			}),
			VolumeEntry = Roact.createElement(VolumeEntry, {
				LayoutOrder = getNextLayoutOrder(),
				buttonRef = self.volumeButton,
				canCaptureFocus = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
				isMenuOpen = self.props.isMenuOpen,
			}),
			HapticsToggle = if GetFFlagAddHapticsToggle() then Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = getNextLayoutOrder(),
				labelKey = "Feature.Accessibility.Header.Haptics",
				instance = UserGameSettings,
				valueKey = "HapticStrength",
				onValue = 1,
				offValue = 0,
			}) else nil,
			InputDevice = showInputOutputAudioDevices and Roact.createElement(DeviceSelectionEntry, {
				LayoutOrder = getNextLayoutOrder(),
				deviceType = DeviceSelectionEntry.DeviceType.Input,
				isMenuOpen = self.props.isMenuOpen,
				canOpen = self.props.canCaptureFocus,
				canCaptureFocus = self.props.canGamepadCaptureFocus,
			}),
			OutputDevice = showInputOutputAudioDevices and Roact.createElement(DeviceSelectionEntry, {
				LayoutOrder = getNextLayoutOrder(),
				deviceType = DeviceSelectionEntry.DeviceType.Output,
				isMenuOpen = self.props.isMenuOpen,
				canOpen = self.props.canCaptureFocus,
				canCaptureFocus = self.props.canGamepadCaptureFocus,
			}),
			ControlsDivider = Roact.createElement(Divider, {
				LayoutOrder = getNextLayoutOrder(),
				Size = UDim2.new(1, -24, 0, 1),
			}),

			GraphicsHeader = Roact.createElement(CategoryHeader, {
				LayoutOrder = getNextLayoutOrder(),
				localizationKey = "CoreScripts.InGameMenu.GameSettings.GraphicsTitle",
			}),
			GraphicsQualityEntry = Roact.createElement(GraphicsQualityEntry, {
				LayoutOrder = getNextLayoutOrder(),
				canCaptureFocus = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
				isMenuOpen = self.props.isMenuOpen,
			}),
			FullScreen = not self.state.vrActive and Roact.createElement(ToggleEntry, {
				LayoutOrder = getNextLayoutOrder(),
				labelKey = "CoreScripts.InGameMenu.GameSettings.FullScreen",
				checked = self.state.fullScreenEnabled,
				onToggled = function()
					GuiService:ToggleFullscreen()
					SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
				end,
			}),
			GraphicsDivider = Roact.createElement(Divider, {
				LayoutOrder = getNextLayoutOrder(),
				Size = UDim2.new(1, -24, 0, 1),
			}),
			AdvancedSettings = Roact.createElement("TextButton", {
				LayoutOrder = getNextLayoutOrder(),
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, NAVIGATE_FORWARD_BUTTON_HEIGHT),
				Text = "",
				SelectionImageObject = getSelectionCursor(CursorKind.Square),
				[Roact.Event.Activated] = self.props.switchToAdvancedPage,
			}, {
				Text = withLocalization({
					text = "CoreScripts.InGameMenu.GameSettings.SwitchToAdvancedSettings",
				})(function(localization)
					return Roact.createElement(ThemedTextLabel, {
						Text = localization.text,
						TextXAlignment = Enum.TextXAlignment.Left,
						fontKey = "Body",
						themeKey = "TextDefault",
						Size = UDim2.new(1, -(NAVIGATE_FORWARD_TEXT_PADDING_LEFT + NAVIGATE_FORWARD_TEXT_PADDING_RIGHT), 1, 0),
						Position = UDim2.new(0, NAVIGATE_FORWARD_TEXT_PADDING_LEFT, 0.5, 0),
						AnchorPoint = Vector2.new(0, 0.5),
					})
				end),
				Icon = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Assets.Images.NavigateForward,
					Size = UDim2.new(0, NAVIGATE_FORWARD_ICON_SIZE, 0, NAVIGATE_FORWARD_ICON_SIZE),
					Position = UDim2.new(1, -NAVIGATE_FORWARD_ICON_SIZE, 0.5, 0),
					AnchorPoint = Vector2.new(1, 0.5),
				}),
			}),
			AdvancedDivider = Roact.createElement(Divider, {
				LayoutOrder = getNextLayoutOrder(),
				Size = UDim2.new(1, -24, 0, 1),
			}),

			ShiftLockEnabledListener = Roact.createElement(ExternalEventConnection, {
				event = DevEnableMouseLockChanged,
				callback = function()
					self:setState({
						shiftLockEnabled = localPlayer.DevEnableMouseLock,
					})
				end,
			}),
			FullScreenListener = Roact.createElement(ExternalEventConnection, {
				event = UserGameSettings.FullscreenChanged,
				callback = function(newFullscreenStatus)
					self:setState({
						fullScreenEnabled = newFullscreenStatus,
					})

					SendAnalytics(Constants.AnalyticsInGameMenuName, Constants.AnalyticsFullscreenModeName, {
						enabled = newFullscreenStatus,
					})
				end,
			}),
			CameraYInvertedListener = Roact.createElement(ExternalEventConnection, {
				event = IsUsingCameraYInvertedChanged,
				callback = function()
					self:setState({
						invertedCameraEnabled = UserGameSettings.IsUsingCameraYInverted,
					})
				end,
			}),
			VRActiveListener = Roact.createElement(ExternalEventConnection, {
				event = self.props.vrService:GetPropertyChangedSignal("VREnabled"),
				callback = function()
					if self.props.vrService.VREnabled then
						UserGameSettings.HasEverUsedVR = true
					end
					self:setState({
						vrActive = self.props.vrService.VREnabled,
					})
				end,
			}),
			VREnabledListener = Roact.createElement(ExternalEventConnection, {
				event = VREnabledChanged,
				callback = function()
					self:setState({
						vrEnabled = UserGameSettings.VREnabled,
					})
				end,
			}),
		}),
	})
end

function BasicPage:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

function BasicPage:didMount()
	spawn(function()
		-- Check if voice chat is enabled
		-- TODO: Clean up when API gets simplified
		local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
		VoiceChatServiceManager:asyncInit()
			:andThen(function()
			self:setState({
				voiceChatEnabled = true,
			})
		end)
		:catch(function() end)
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state)
	local canCaptureFocus = state.menuPage == "GameSettings" and state.isMenuOpen and not state.respawn.dialogOpen

	local canGamepadCaptureFocus = state.displayOptions.inputType == Constants.InputType.Gamepad
		and state.currentZone == 1

	local currentZone = nil -- can inline when flag is removed
	if GetFFlagIGMGamepadSelectionHistory() then
		currentZone = state.currentZone
	end

	return {
		isMenuOpen = state.isMenuOpen,
		currentPage = state.menuPage,
		currentZone = currentZone,
		canCaptureFocus = canCaptureFocus,
		canGamepadCaptureFocus = canGamepadCaptureFocus,
	}
end, function(dispatch)
	return {
		switchToAdvancedPage = function()
			dispatch(SetCurrentPage(Constants.advancedSettingsPageKey))
		end,
		switchToVRComfortSettingsPage = function()
			dispatch(SetCurrentPage(Constants.vrComfortSettingsPageKey))
		end,
	}
end)(BasicPage)
