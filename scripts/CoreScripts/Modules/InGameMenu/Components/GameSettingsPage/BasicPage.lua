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
local GraphicsQualityEntry = require(script.Parent.GraphicsQualityEntry)
local MovementModeEntry = require(script.Parent.MovementModeEntry)
local ToggleEntry = require(script.Parent.ToggleEntry)
local VolumeEntry = require(script.Parent.VolumeEntry)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local FFlagInGameMenuVRToggle = game:DefineFastFlag("InGameMenuVRToggle", false)

local GetFFlagFullscreenAnalytics = require(RobloxGui.Modules.Flags.GetFFlagFullscreenAnalytics)

local VRAvailableChanged = VRService:GetPropertyChangedSignal("VREnabled")
local VREnabledChanged = UserGameSettings:GetPropertyChangedSignal("VREnabled")

local BasicPage = Roact.PureComponent:extend("BasicPage")
BasicPage.validateProps = t.strictInterface({
	switchToAdvancedPage = t.callback,
	pageTitle = t.string,
})

local vrEnabledAtModuleLoad = UserGameSettings.VREnabled

function BasicPage:init()
	self:setState({
		shiftLockEnabled = localPlayer.DevEnableMouseLock,
		fullScreenEnabled = UserGameSettings:InFullScreen(),
		invertedCameraEnabled = UserGameSettings.IsUsingCameraYInverted,
		vrAvailable = VRService.VREnabled,
		vrEnabled = UserGameSettings.VREnabled,
	})

	self.pageSize, self.setPageSize = Roact.createBinding(UDim2.new(0, 0, 0, 0))
end

function BasicPage:render()
	local shouldSettingsDisabledInVRBeShown = not (FFlagInGameMenuVRToggle and self.state.vrEnabled and self.state.vrAvailable)

	return Roact.createElement(Page, {
		pageTitle = self.props.pageTitle,
		position = self.props.position,
	}, {
		PageContents = Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			CanvasSize = self.pageSize,
			Position = self.props.position,
			Size = UDim2.new(1, 0, 1, 0),
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
			}),
			InvertedCamera = shouldSettingsDisabledInVRBeShown and self.state.invertedCameraEnabled and Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = 3,
				labelKey = "CoreScripts.InGameMenu.GameSettings.InvertedCamera",
				instance = UserGameSettings,
				key = "CameraYInverted",
			}),
			CameraSensitivity = shouldSettingsDisabledInVRBeShown and Roact.createElement(CameraSensitivityEntry, {
				LayoutOrder = 4,
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
				key = "ControlMode",
				onValue = Enum.ControlMode.MouseLockSwitch,
				offValue = Enum.ControlMode.Classic,
				lockedToOff = not self.state.shiftLockEnabled,
			}),
			MovementMode = shouldSettingsDisabledInVRBeShown and Roact.createElement(MovementModeEntry, {
				LayoutOrder = 8,
			}),
			VolumeEntry = Roact.createElement(VolumeEntry, {
				LayoutOrder = 9,
			}),
			ControlsDivider = Roact.createElement(Divider, {
				LayoutOrder = 10,
				Size = UDim2.new(1, -24, 0, 1),
			}),

			GraphicsHeader = Roact.createElement(CategoryHeader, {
				LayoutOrder = 11,
				localizationKey = "CoreScripts.InGameMenu.GameSettings.GraphicsTitle",
			}),
			GraphicsQualityEntry = Roact.createElement(GraphicsQualityEntry, {
				LayoutOrder = 12,
			}),
			FullScreen = shouldSettingsDisabledInVRBeShown and Roact.createElement(ToggleEntry, {
				LayoutOrder = 13,
				labelKey = "CoreScripts.InGameMenu.GameSettings.FullScreen",
				checked = self.state.fullScreenEnabled,
				onToggled = function()
					GuiService:ToggleFullscreen()
					SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
				end,
			}),
			VRMode = FFlagInGameMenuVRToggle and self.state.vrAvailable and Roact.createElement(AutoPropertyToggleEntry, {
				LayoutOrder = 14,
				labelKey = "CoreScripts.InGameMenu.GameSettings.VREnabled",
				instance = UserGameSettings,
				key = "VREnabled",
				subtextEnabled = self.state.vrEnabled ~= vrEnabledAtModuleLoad,
				subtextKey = "CoreScripts.InGameMenu.GameSettings.RestartPending",
			}),
			GraphicsDivider = Roact.createElement(Divider, {
				LayoutOrder = 15,
				Size = UDim2.new(1, -24, 0, 1),
			}),
			AdvancedSettings = Roact.createElement("TextButton", {
				LayoutOrder = 16,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 54),
				Text = "",
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
				LayoutOrder = 17,
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

					if GetFFlagFullscreenAnalytics() then
						SendAnalytics(Constants.AnalyticsInGameMenuName, Constants.AnalyticsFullscreenModeName, {
							enabled = newFullscreenStatus,
						})
					end
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
			VRAvailableListener = FFlagInGameMenuVRToggle and Roact.createElement(ExternalEventConnection, {
				event = VRAvailableChanged,
				callback = function()
					self:setState({
						vrAvailable = VRService.VREnabled
					})
				end,
			}),
			VREnabledListener = FFlagInGameMenuVRToggle and Roact.createElement(ExternalEventConnection, {
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

return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		switchToAdvancedPage = function()
			dispatch(SetCurrentPage(Constants.advancedSettingsPageKey))
		end,
	}
end)(BasicPage)

