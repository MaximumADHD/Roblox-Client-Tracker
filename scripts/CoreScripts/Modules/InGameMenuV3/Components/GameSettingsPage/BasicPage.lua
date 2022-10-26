--!nonstrict
local Players = game:GetService("Players")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local UserInputService = game:GetService("UserInputService")

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
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnectionMemo)
local Page = require(InGameMenu.Components.Page)
local PageUtils = require(InGameMenu.Components.Pages.PageUtils)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local withLocalization = require(InGameMenu.Localization.withLocalization)
local Assets = require(InGameMenu.Resources.Assets)

local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local AutoPropertyToggleEntry = require(script.Parent.AutoPropertyToggleEntry)
local CameraModeEntry = require(script.Parent.CameraModeEntry)
local CameraSensitivityEntry = require(script.Parent.CameraSensitivityEntry)
local CategoryHeader = require(script.Parent.CategoryHeader)
local DeviceSelectionEntry = require(script.Parent.DeviceSelectionEntry)
local GraphicsQualityEntry = require(script.Parent.GraphicsQualityEntry)
local MovementModeEntry = require(script.Parent.MovementModeEntry)
local ToggleEntry = require(script.Parent.ToggleEntry)
local VolumeEntry = require(script.Parent.VolumeEntry)
local VideoCameraEntry = require(script.Parent.VideoCameraEntry)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local VerticalScrollViewWithIndicator = UIBlox.App.Container.VerticalScrollViewWithIndicator

local Flags = InGameMenu.Flags
local GetFFlagInGameMenuVRToggle = require(Flags.GetFFlagInGameMenuVRToggle)

local VREnabledChanged = UserGameSettings:GetPropertyChangedSignal("VREnabled")
local EngineFeatureEnableVRUpdate3 = game:GetEngineFeature("EnableVRUpdate3")

local platform = UserInputService:GetPlatform()
local isMobileClient = (platform == Enum.Platform.IOS) or (platform == Enum.Platform.Android)

local BasicPage = Roact.PureComponent:extend("BasicPage")
BasicPage.validateProps = t.strictInterface({
	switchToAdvancedPage = t.callback,
	pageTitle = t.string,
	currentPage = t.optional(t.string),
	canCaptureFocus = t.optional(t.boolean),
	canGamepadCaptureFocus = t.optional(t.boolean),
	vrService = GetFFlagInGameMenuVRToggle() and t.optional(t.union(t.Instance, t.table)) or nil,
	shouldForgetPreviousSelection = t.optional(t.boolean),
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
		vrActive = GetFFlagInGameMenuVRToggle() and self.props.vrService.VREnabled or nil,
		vrEnabled = UserGameSettings.VREnabled,
		voiceChatEnabled = false,
		heightOffset = 0,
	})
	self.scrollingThread = nil
	self.scrollingDown = nil

	self.cameraModeButton = Roact.createRef() -- reference to the cameramode button at the top of the page
	self.volumeButton = Roact.createRef() -- reference to the slider button at the top of the page in vr
	self.scrollingFrameRef = Roact.createRef()

	self.pageHeaderActivated = function()
		local scrollingFrame = self.scrollingFrameRef:getValue()
		if scrollingFrame then
			scrollingFrame:scrollToTop()
		end
	end

	self.menuOpenChange = function(menuOpen, wasOpen)
		if menuOpen and not wasOpen then
			local scrollingFrame = self.scrollingFrameRef:getValue()
			if scrollingFrame and scrollingFrame.CanvasPosition.Y > 0 then
				scrollingFrame.CanvasPosition = Vector2.new(0, 0)
			end
		end
	end
end

function BasicPage:renderWithSelectionCursor(getSelectionCursor)
	local shouldSettingsDisabledInVRBeShown = not (GetFFlagInGameMenuVRToggle() and self.state.vrActive)
	local showVoiceChatOptions = self.state.voiceChatEnabled
	local showVideoCameraOptions = game:GetEngineFeature("VideoCaptureService")
	local dividerSize = UDim2.new(1, -24, 0, 1)

	return PageUtils.withScrollDownState(function(onScroll, scrollingDown)
		self:updateHeightOffset(scrollingDown)

		return Roact.createElement(Page, {
			useLeaveButton = true,
			scrollingDown = scrollingDown,
			pageTitle = self.props.pageTitle,
			position = self.props.position,
			onHeaderActivated = self.pageHeaderActivated,
		}, {
			FocusHandler = Roact.createElement(FocusHandler, {
				isFocused = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
				shouldForgetPreviousSelection = self.props.shouldForgetPreviousSelection,
				didFocus = function(previousSelection)
					if previousSelection then
						GuiService.SelectedCoreObject = previousSelection
					elseif shouldSettingsDisabledInVRBeShown then
						GuiService.SelectedCoreObject = self.cameraModeButton:getValue()
					else
						GuiService.SelectedCoreObject = self.volumeButton:getValue()
					end
				end,
			}),
			PageContents = Roact.createElement(VerticalScrollViewWithIndicator, {
				position = self.props.position,
				size = UDim2.new(1, 0, 1, self.state.heightOffset),
				useAutomaticCanvasSize = true,
				canvasSizeY = UDim.new(0, 0), -- no minmum size
				scrollingFrameRef = self.scrollingFrameRef,
				[Roact.Change.CanvasPosition] = onScroll,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Top,
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
					screenSize = self.props.screenSize,
				}),
				InvertedCamera = shouldSettingsDisabledInVRBeShown
					and self.state.invertedCameraEnabled
					and Roact.createElement(AutoPropertyToggleEntry, {
						LayoutOrder = 3,
						labelKey = "CoreScripts.InGameMenu.GameSettings.InvertedCamera",
						instance = UserGameSettings,
						valueKey = "CameraYInverted",
					}),
				CameraSensitivity = shouldSettingsDisabledInVRBeShown and Roact.createElement(CameraSensitivityEntry, {
					LayoutOrder = 4,
					canCaptureFocus = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
				}),
				CameraDivider = Roact.createElement(Divider, {
					LayoutOrder = 5,
					Size = dividerSize,
				}),

				ControlsHeader = Roact.createElement(CategoryHeader, {
					LayoutOrder = 6,
					localizationKey = "CoreScripts.InGameMenu.GameSettings.ControlsAudio",
				}),
				ShiftLock = not isMobileClient and shouldSettingsDisabledInVRBeShown and Roact.createElement(AutoPropertyToggleEntry, {
					LayoutOrder = 7,
					labelKey = "CoreScripts.InGameMenu.GameSettings.ShiftLock",
					instance = UserGameSettings,
					valueKey = "ControlMode",
					onValue = Enum.ControlMode.MouseLockSwitch,
					offValue = Enum.ControlMode.Classic,
					lockedToOff = not self.state.shiftLockEnabled,
				}) or nil,
				MovementMode = shouldSettingsDisabledInVRBeShown and Roact.createElement(MovementModeEntry, {
					LayoutOrder = 8,
					canOpen = self.props.canCaptureFocus,
					canCaptureFocus = self.props.canGamepadCaptureFocus,
					screenSize = self.props.screenSize,
				}),
				VolumeEntry = Roact.createElement(VolumeEntry, {
					LayoutOrder = 9,
					buttonRef = self.volumeButton,
					canCaptureFocus = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
				}),
				InputDevice = showVoiceChatOptions and Roact.createElement(DeviceSelectionEntry, {
					LayoutOrder = 10,
					deviceType = DeviceSelectionEntry.DeviceType.Input,
					canOpen = self.props.canCaptureFocus,
					canCaptureFocus = self.props.canGamepadCaptureFocus,
					screenSize = self.props.screenSize,
				}),
				OutputDevice = showVoiceChatOptions and Roact.createElement(DeviceSelectionEntry, {
					LayoutOrder = 11,
					deviceType = DeviceSelectionEntry.DeviceType.Output,
					canOpen = self.props.canCaptureFocus,
					canCaptureFocus = self.props.canGamepadCaptureFocus,
					screenSize = self.props.screenSize,
				}),
				VideoCamera = showVideoCameraOptions and Roact.createElement(VideoCameraEntry, {
					LayoutOrder = 12,
					ButtonRef = self.cameraModeButton,
					screenSize = self.props.screenSize,
				}),
				ControlsDivider = Roact.createElement(Divider, {
					LayoutOrder = 13,
					Size = dividerSize,
				}),

				GraphicsHeader = Roact.createElement(CategoryHeader, {
					LayoutOrder = 14,
					localizationKey = "CoreScripts.InGameMenu.GameSettings.GraphicsTitle",
				}),
				GraphicsQualityEntry = Roact.createElement(GraphicsQualityEntry, {
					LayoutOrder = 15,
					canCaptureFocus = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
				}),
				FullScreen = not isMobileClient and shouldSettingsDisabledInVRBeShown and Roact.createElement(ToggleEntry, {
					LayoutOrder = 16,
					labelKey = "CoreScripts.InGameMenu.GameSettings.FullScreen",
					checked = self.state.fullScreenEnabled,
					onToggled = function()
						GuiService:ToggleFullscreen()
						SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
					end,
				}) or nil,
				VRMode = GetFFlagInGameMenuVRToggle()
					and (self.state.vrActive or UserGameSettings.HasEverUsedVR)
					and Roact.createElement(AutoPropertyToggleEntry, {
						LayoutOrder = 17,
						labelKey = "CoreScripts.InGameMenu.GameSettings.VREnabled",
						instance = UserGameSettings,
						valueKey = "VREnabled",
						subtextEnabled = self.state.vrEnabled ~= vrEnabledAtModuleLoad,
						subtextKey = "CoreScripts.InGameMenu.GameSettings.RestartPending",
					}),
				VRSmoothRotationEnabled = self.state.vrActive and EngineFeatureEnableVRUpdate3 and Roact.createElement(AutoPropertyToggleEntry, {
					LayoutOrder = 17,
					labelKey = "CoreScripts.InGameMenu.GameSettings.VRSmoothRotationEnabled",
					instance = UserGameSettings,
					valueKey = "VRSmoothRotationEnabled",
				}),
				VignetteEnabled = self.state.vrActive and Roact.createElement(
					AutoPropertyToggleEntry,
					{
						LayoutOrder = 18,
						labelKey = "CoreScripts.InGameMenu.GameSettings.VignetteEnabled",
						instance = UserGameSettings,
						valueKey = "VignetteEnabled",
					}
				),
				GraphicsDivider = Roact.createElement(Divider, {
					LayoutOrder = 19,
					Size = dividerSize,
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
					Size = dividerSize,
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
							vrActive = self.props.vrService.VREnabled,
						})
					end,
				}),
				VREnabledListener = GetFFlagInGameMenuVRToggle() and Roact.createElement(ExternalEventConnection, {
					event = VREnabledChanged,
					callback = function()
						self:setState({
							vrEnabled = UserGameSettings.VREnabled,
						})
					end,
				}),
				PageWatcher = Roact.createElement(PageNavigationWatcher, {
					desiredPage = Constants.GameSettingsPageKey,
					onNavigate = self.menuOpenChange,
				}),
			}),
		})
	end)
end

function BasicPage:updateHeightOffset(scrollingDown)
	if self.scrollingDown ~= scrollingDown then
		self.scrollingDown = scrollingDown

		if self.scrollingThread then
			task.cancel(self.scrollingThread)
		end

		if scrollingDown then
			self:setState({
				heightOffset = 0,
			})
		else
			self.scrollingThread = task.delay(Constants.LeaveButtonTweenTime, function()
				self:setState({
					heightOffset = -Constants.LeaveButtonContainerHeight,
				})
			end)
		end
	end
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
		VoiceChatServiceManager
			:asyncInit()
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

	local shouldForgetPreviousSelection = state.menuPage ~= Constants.GameSettingsPageKey
		or state.currentZone == 0

	return {
		shouldForgetPreviousSelection = shouldForgetPreviousSelection,
		canCaptureFocus = canCaptureFocus,
		canGamepadCaptureFocus = canGamepadCaptureFocus,
		screenSize = state.screenSize,
	}
end, function(dispatch)
	return {
		switchToAdvancedPage = function()
			dispatch(SetCurrentPage(Constants.advancedSettingsPageKey))

			SendAnalytics(Constants.AnalyticsInGameMenuName, Constants.advancedSettingsPageKey, {})
		end,
	}
end)(BasicPage)
