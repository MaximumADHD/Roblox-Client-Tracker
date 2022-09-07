--!nonstrict
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

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
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local Flags = InGameMenu.Flags
local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)
local GetFFlagInGameMenuVRToggle = require(Flags.GetFFlagInGameMenuVRToggle)
	 
local VREnabledChanged = UserGameSettings:GetPropertyChangedSignal("VREnabled")
local EngineFeatureEnableVRUpdate3 = game:GetEngineFeature("EnableVRUpdate3")

local BasicPage = Roact.PureComponent:extend("BasicPage")
BasicPage.validateProps = t.strictInterface({
	switchToAdvancedPage = t.callback,
	pageTitle = t.string,
	isMenuOpen = t.boolean,
	currentPage = t.optional(t.string),
	canCaptureFocus = t.optional(t.boolean),
	canGamepadCaptureFocus = t.optional(t.boolean),
	vrService = GetFFlagInGameMenuVRToggle() and t.optional(t.union(t.Instance, t.table)) or nil,
	currentZone = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.number) or nil,
})

BasicPage.defaultProps = {
	-- vrService can be overridden as a prop to allow a mock for testing
	vrService = GetFFlagInGameMenuVRToggle() and VRService or nil,
}

local vrEnabledAtModuleLoad = UserGameSettings.VREnabled

function BasicPage:init()
	self:setState({
		shiftLockEnabled = localPlayer.DevEnableMouseLock,
		fullScreenEnabled = UserGameSettings:InFullScreen(),
		invertedCameraEnabled = UserGameSettings.IsUsingCameraYInverted,
		vrActive =  GetFFlagInGameMenuVRToggle() and self.props.vrService.VREnabled or nil,
		vrEnabled = UserGameSettings.VREnabled,
		voiceChatEnabled = false,
	})

	self.pageSize, self.setPageSize = Roact.createBinding(UDim2.new(0, 0, 0, 0))

	self.cameraModeButton = Roact.createRef() -- reference to the cameramode button at the top of the page
	self.volumeButton = Roact.createRef() -- reference to the slider button at the top of the page in vr
end

function BasicPage:didUpdate(prevProps)
	local shouldSettingsDisabledInVRBeShown = not (GetFFlagInGameMenuVRToggle() and self.state.vrActive)

	if not GetFFlagIGMGamepadSelectionHistory() then
		-- Gamepad navigation
		-- if there is nothing selected on page open, select the first button in the menu
		if (self.props.canCaptureFocus and self.props.canGamepadCaptureFocus)
			and not (prevProps.canCaptureFocus and prevProps.canGamepadCaptureFocus)
		then
			if shouldSettingsDisabledInVRBeShown then
				GuiService.SelectedCoreObject = self.cameraModeButton:getValue()
			else
				GuiService.SelectedCoreObject = self.volumeButton:getValue()
			end
		end
	end
end

function BasicPage:renderWithSelectionCursor(getSelectionCursor)
	local shouldSettingsDisabledInVRBeShown = not (GetFFlagInGameMenuVRToggle() and self.state.vrActive)
	local showVoiceChatOptions = self.state.voiceChatEnabled

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
				elseif shouldSettingsDisabledInVRBeShown then
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

			CameraHeader = Roact.createElement(CategoryHeader, {
				LayoutOrder = 1,
				localizationKey = "CoreScripts.InGameMenu.GameSettings.CameraTitle",
			}),
			CameraMode = shouldSettingsDisabledInVRBeShown and Roact.createElement(CameraModeEntry, {
				LayoutOrder = 2,
				ButtonRef = self.cameraModeButton,
				canOpen = self.props.canCaptureFocus,
				canCaptureFocus = self.props.canGamepadCaptureFocus,
			}),
			InvertedCamera = shouldSettingsDisabledInVRBeShown and
				self.state.invertedCameraEnabled and Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = 3,
				labelKey = "CoreScripts.InGameMenu.GameSettings.InvertedCamera",
				instance = UserGameSettings,
				valueKey = "CameraYInverted",
			}),
			CameraSensitivity = shouldSettingsDisabledInVRBeShown and Roact.createElement(CameraSensitivityEntry, {
				LayoutOrder = 4,
				canCaptureFocus = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
				isMenuOpen = self.props.isMenuOpen,
			}),
			CameraDivider = Roact.createElement(Divider, {
				LayoutOrder = 5,
				Size = UDim2.new(1, -24, 0, 1),
			}),

			ControlsHeader = Roact.createElement(CategoryHeader, {
				LayoutOrder = 6,
				localizationKey = "CoreScripts.InGameMenu.GameSettings.ControlsAudio",
			}),
			ShiftLock = shouldSettingsDisabledInVRBeShown and Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = 7,
				labelKey = "CoreScripts.InGameMenu.GameSettings.ShiftLock",
				instance = UserGameSettings,
				valueKey = "ControlMode",
				onValue = Enum.ControlMode.MouseLockSwitch,
				offValue = Enum.ControlMode.Classic,
				lockedToOff = not self.state.shiftLockEnabled,
			}),
			MovementMode = shouldSettingsDisabledInVRBeShown and Roact.createElement(MovementModeEntry, {
				LayoutOrder = 8,
				canOpen = self.props.canCaptureFocus,
				canCaptureFocus = self.props.canGamepadCaptureFocus,
			}),
			VolumeEntry = Roact.createElement(VolumeEntry, {
				LayoutOrder = 9,
				buttonRef = self.volumeButton,
				canCaptureFocus = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
				isMenuOpen = self.props.isMenuOpen,
			}),
			InputDevice = showVoiceChatOptions and Roact.createElement(DeviceSelectionEntry, {
				LayoutOrder = 10,
				deviceType = DeviceSelectionEntry.DeviceType.Input,
				isMenuOpen = self.props.isMenuOpen,
				canOpen = self.props.canCaptureFocus,
				canCaptureFocus = self.props.canGamepadCaptureFocus,
			}),
			OutputDevice = showVoiceChatOptions and Roact.createElement(DeviceSelectionEntry, {
				LayoutOrder = 11,
				deviceType = DeviceSelectionEntry.DeviceType.Output,
				isMenuOpen = self.props.isMenuOpen,
				canOpen = self.props.canCaptureFocus,
				canCaptureFocus = self.props.canGamepadCaptureFocus,
			}),
			ControlsDivider = Roact.createElement(Divider, {
				LayoutOrder = 12,
				Size = UDim2.new(1, -24, 0, 1),
			}),

			GraphicsHeader = Roact.createElement(CategoryHeader, {
				LayoutOrder = 13,
				localizationKey = "CoreScripts.InGameMenu.GameSettings.GraphicsTitle",
			}),
			GraphicsQualityEntry = Roact.createElement(GraphicsQualityEntry, {
				LayoutOrder = 14,
				canCaptureFocus = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
				isMenuOpen = self.props.isMenuOpen,
			}),
			FullScreen = shouldSettingsDisabledInVRBeShown and Roact.createElement(ToggleEntry, {
				LayoutOrder = 15,
				labelKey = "CoreScripts.InGameMenu.GameSettings.FullScreen",
				checked = self.state.fullScreenEnabled,
				onToggled = function()
					GuiService:ToggleFullscreen()
					SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
				end,
			}),
			VRMode = GetFFlagInGameMenuVRToggle() and (self.state.vrActive or UserGameSettings.HasEverUsedVR) and Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = 16,
				labelKey = "CoreScripts.InGameMenu.GameSettings.VREnabled",
				instance = UserGameSettings,
				valueKey = "VREnabled",
				subtextEnabled = self.state.vrEnabled ~= vrEnabledAtModuleLoad,
				subtextKey = "CoreScripts.InGameMenu.GameSettings.RestartPending",
			}),
			VignetteEnabled = self.state.vrActive and Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = 17,
				labelKey = "CoreScripts.InGameMenu.GameSettings.VignetteEnabled",
				instance = UserGameSettings,
				valueKey = "VignetteEnabled",
			}),
			VRSmoothRotationEnabled = self.state.vrActive and EngineFeatureEnableVRUpdate3 and Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = 18,
				labelKey = "CoreScripts.InGameMenu.GameSettings.VRSmoothRotationEnabled",
				instance = UserGameSettings,
				valueKey = "VRSmoothRotationEnabled",
			}),
			GraphicsDivider = Roact.createElement(Divider, {
				LayoutOrder = 19,
				Size = UDim2.new(1, -24, 0, 1),
			}),
			AdvancedSettings = Roact.createElement("TextButton", {
				LayoutOrder = 20,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 54),
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
						Size = UDim2.new(1, -96, 1, 0),
						Position = UDim2.new(0, 24, 0.5, 0),
						AnchorPoint = Vector2.new(0, 0.5),
					})
				end),
				Icon = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Assets.Images.NavigateForward,
					Size = UDim2.new(0, 36, 0, 36),
					Position = UDim2.new(1, -36, 0.5, 0),
					AnchorPoint = Vector2.new(1, 0.5),
				}),
			}),
			AdvancedDivider = Roact.createElement(Divider, {
				LayoutOrder = 21,
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
			VRActiveListener = GetFFlagInGameMenuVRToggle() and Roact.createElement(ExternalEventConnection, {
				event = self.props.vrService:GetPropertyChangedSignal("VREnabled"),
				callback = function()
					if self.props.vrService.VREnabled then
						UserGameSettings.HasEverUsedVR = true
					end
					self:setState({
						vrActive = self.props.vrService.VREnabled
					})
				end,
			}),
			VREnabledListener = GetFFlagInGameMenuVRToggle() and Roact.createElement(ExternalEventConnection, {
				event = VREnabledChanged,
				callback = function()
					self:setState({
						vrEnabled = UserGameSettings.VREnabled
					})
				end,
			}),
		})
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
		VoiceChatServiceManager:asyncInit():andThen(function()
			self:setState({
				voiceChatEnabled = true,
			})
		end)
		:catch(function() end)
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state)
	local canCaptureFocus = state.menuPage == "GameSettings"
		and state.isMenuOpen
		and not state.respawn.dialogOpen

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
	}
end)(BasicPage)
