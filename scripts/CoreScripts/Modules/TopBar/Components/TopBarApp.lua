local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local ExternalEventConnection = require(CorePackages.RoactUtilities.ExternalEventConnection)
local Analytics = require(CorePackages.Analytics.Analytics)

local ImageSetButton = UIBlox.Core.ImageSet.Button
local Images = UIBlox.App.ImageSet.Images

local Presentation = script.Parent.Presentation
local MenuIcon = require(Presentation.MenuIcon)
local ChatIcon = require(Presentation.ChatIcon)
local MoreMenu = require(Presentation.MoreMenu)
local HealthBar = require(Presentation.HealthBar)
local HurtOverlay = require(Presentation.HurtOverlay)
local GamepadMenu = require(Presentation.GamepadMenu)
local HeadsetMenu = require(Presentation.HeadsetMenu)
local VoiceBetaBadge = require(Presentation.VoiceBetaBadge)

local Connection = require(script.Parent.Connection)

local TopBar = Presentation.Parent.Parent
local Constants = require(TopBar.Constants)
local SetScreenSize = require(TopBar.Actions.SetScreenSize)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local GetFFlagEnableVoiceBetaBadge = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceBetaBadge)

local CLOSE_MENU_ICON_SIZE = 30

local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

local TopBarApp = Roact.PureComponent:extend("TopBarApp")

TopBarApp.validateProps = t.strictInterface({
	menuOpen = t.boolean,
	inspectMenuOpen = t.boolean,

	setScreenSize = t.callback,
})

function TopBarApp:init(props)
	if game:GetEngineFeature("NotchSpaceSupportEnabled") then
		self.topFramePosition, self.updateTopFramePosition = Roact.createBinding(UDim2.new(1, 0, 1, 0))
		self.leftFramePosition, self.updateLeftFramePosition = Roact.createBinding(UDim2.new(1, 0, 1, 0))
		self.rightFramePosition, self.updateRightFramePosition = Roact.createBinding(UDim2.new(1, 0, 1, 0))
		self.closeButtonPosition, self.updateCloseButtonPosition = Roact.createBinding(UDim2.new(1, 0, 1, 0))

		self:updateValues(playerGui)

		self.screenOrientationUpdate = function()
			self:updateValues()
		end
	end
end

function TopBarApp:updateValues()
	if game:GetEngineFeature("NotchSpaceSupportEnabled") then
		if (playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait) then
			self.updateTopFramePosition(UDim2.new(0, 0, 0, Constants.TopBarHeight))
			self.updateLeftFramePosition(UDim2.new(0, Constants.ScreenSideOffset, 0, 0))
			self.updateRightFramePosition(UDim2.new(1, -1 * Constants.ScreenSideOffset, 0, 0))
			self.updateCloseButtonPosition(UDim2.new(0, 0, 0.5, Constants.TopBarHeight))
		else
			self.updateTopFramePosition(UDim2.new(0, 0, 0, 0))
			self.updateLeftFramePosition(UDim2.new(0, Constants.TopBarHeight, 0, 0))
			self.updateRightFramePosition(UDim2.new(1, -1 * Constants.TopBarHeight, 0, 0))
			self.updateCloseButtonPosition(UDim2.new(0, Constants.TopBarHeight / 2, 0.5, 0))
		end
	end
end

function TopBarApp:render()
	local screenSideOffset = Constants.ScreenSideOffset
	local topBarHeight = Constants.TopBarHeight
	if TenFootInterface:IsEnabled() then
		screenSideOffset = Constants.ScreenSideOffsetTenFoot
		topBarHeight = Constants.TopBarHeightTenFoot
	end

	local isTopBarVisible = not (self.props.menuOpen or self.props.inspectMenuOpen)
	local topBarFramePosition = UDim2.new(0, 0, 0, 0)
	local topBarLeftFramePosition = UDim2.new(0, screenSideOffset, 0, 0)
	local topBarRightFramePosition = UDim2.new(1, -screenSideOffset, 0, 0)
	local closeMenuButtonPosition = UDim2.new(0, 0, 0.5, 0)

	if game:GetEngineFeature("NotchSpaceSupportEnabled") then
		topBarFramePosition = self.topFramePosition
		topBarLeftFramePosition = self.leftFramePosition
		topBarRightFramePosition = self.rightFramePosition
		closeMenuButtonPosition = self.closeButtonPosition
	end

	return Roact.createElement("ScreenGui", {
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		AutoLocalize = false,
		DisplayOrder = 6,

		[Roact.Change.AbsoluteSize] = function(rbx)
			self.props.setScreenSize(rbx.AbsoluteSize)
		end,
	}, {
		Connection = Roact.createElement(Connection),

		OrientationChangedConnection = game:GetEngineFeature("NotchSpaceSupportEnabled") and Roact.createElement(ExternalEventConnection, {
			event = playerGui:GetPropertyChangedSignal("CurrentScreenOrientation"),
			callback = self.screenOrientationUpdate,
		}),

		GamepadMenu = Roact.createElement(GamepadMenu),
		HeadsetMenu = Roact.createElement(HeadsetMenu),

		FullScreenFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = isTopBarVisible,
		}, {
			HurtOverlay = Roact.createElement(HurtOverlay),
		}),

		--Remove with isNewInGameMenuEnabled
		LegacyCloseMenu = not isNewInGameMenuEnabled() and Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, screenSideOffset, 0, 0),
			Size = UDim2.new(1, 0, 0, topBarHeight),
			Visible = self.props.menuOpen,
		}, {
			CloseMenuButton = Roact.createElement(ImageSetButton, {
				Visible = not TenFootInterface:IsEnabled(),
				BackgroundTransparency = 1,
				Position = closeMenuButtonPosition,
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(0, CLOSE_MENU_ICON_SIZE, 0, CLOSE_MENU_ICON_SIZE),
				Image = Images["icons/controls/close-ingame"],

				[Roact.Event.Activated] = function()
					local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
					SettingsHub:ToggleVisibility()
				end,
			})
		}),

		TopBarFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, topBarHeight),
			Visible = isTopBarVisible,
			Position = topBarFramePosition,
		}, {
			LeftFrame = not TenFootInterface:IsEnabled() and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.5, -screenSideOffset, 1, 0),
				Position = topBarLeftFramePosition,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, Constants.Padding),
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = if GetFFlagEnableVoiceBetaBadge()
						then Enum.VerticalAlignment.Top
						else Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				MenuIcon = Roact.createElement(MenuIcon, {
					layoutOrder = 1,
				}),

				ChatIcon = Roact.createElement(ChatIcon, {
					layoutOrder = 2,
				}),

				VoiceBetaBadge = GetFFlagEnableVoiceBetaBadge() and Roact.createElement(VoiceBetaBadge, {
					layoutOrder = 3,
					Analytics = Analytics.new()
				}),
			}),

			RightFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.5, -screenSideOffset, 1, 0),
				Position = topBarRightFramePosition,
				AnchorPoint = Vector2.new(1, 0),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, Constants.Padding),
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				HealthBar = Roact.createElement(HealthBar, {
					layoutOrder = 1,
				}),

				MoreMenu = not TenFootInterface:IsEnabled() and Roact.createElement(MoreMenu, {
					layoutOrder = 2,
				}),
			}),
		}),
	})
end

local function mapStateToProps(state)
	local inspectMenuOpen = state.displayOptions.inspectMenuOpen

	return {
		menuOpen = state.displayOptions.menuOpen,
		inspectMenuOpen = inspectMenuOpen,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setScreenSize = function(screenSize)
			return dispatch(SetScreenSize(screenSize))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(TopBarApp)
