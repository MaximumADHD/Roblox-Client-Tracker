local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ImageSetButton = UIBlox.Core.ImageSet.Button
local Images = UIBlox.App.ImageSet.Images

local Presentation = script.Parent.Presentation
local MenuIcon = require(Presentation.MenuIcon)
local ChatIcon = require(Presentation.ChatIcon)
local MoreMenu = require(Presentation.MoreMenu)
local HealthBar = require(Presentation.HealthBar)
local HurtOverlay = require(Presentation.HurtOverlay)

local Connection = require(script.Parent.Connection)

local TopBar = Presentation.Parent.Parent
local Constants = require(TopBar.Constants)
local SetScreenSize = require(TopBar.Actions.SetScreenSize)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local FFlagHideTopBarWhenInspectOpen = require(RobloxGui.Modules.Flags.FFlagHideTopBarWhenInspectOpen)
local FFlagFixTopBarOverLoadingScreen = require(RobloxGui.Modules.Flags.FFlagFixTopBarOverLoadingScreen)

local CLOSE_MENU_ICON_SIZE = 30

local TopBarApp = Roact.PureComponent:extend("TopBarApp")

TopBarApp.validateProps = t.strictInterface({
	menuOpen = t.boolean,
	inspectMenuOpen = FFlagHideTopBarWhenInspectOpen and t.boolean or nil,

	setScreenSize = t.callback,
})

function TopBarApp:render()
	local screenSideOffset = Constants.ScreenSideOffset
	local topBarHeight = Constants.TopBarHeight
	if TenFootInterface:IsEnabled() then
		screenSideOffset = Constants.ScreenSideOffsetTenFoot
		topBarHeight = Constants.TopBarHeightTenFoot
	end

	local isTopBarVisible = not self.props.menuOpen
	if FFlagHideTopBarWhenInspectOpen then
		isTopBarVisible = not (self.props.menuOpen or self.props.inspectMenuOpen)
	end

	return Roact.createElement("ScreenGui", {
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		AutoLocalize = false,
		DisplayOrder = FFlagFixTopBarOverLoadingScreen and 6 or nil,

		[Roact.Change.AbsoluteSize] = function(rbx)
			self.props.setScreenSize(rbx.AbsoluteSize)
		end,
	}, {
		Connection = Roact.createElement(Connection),

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
				Position = UDim2.new(0, 0, 0.5, 0),
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
		}, {
			LeftFrame = not TenFootInterface:IsEnabled() and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.5, -screenSideOffset, 1, 0),
				Position = UDim2.new(0, screenSideOffset, 0, 0),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, Constants.Padding),
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				MenuIcon = Roact.createElement(MenuIcon, {
					layoutOrder = 1,
				}),

				ChatIcon = Roact.createElement(ChatIcon, {
					layoutOrder = 2,
				}),
			}),

			RightFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.5, -screenSideOffset, 1, 0),
				Position = UDim2.new(1, -screenSideOffset, 0, 0),
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
	return {
		menuOpen = state.displayOptions.menuOpen,
		inspectMenuOpen = FFlagHideTopBarWhenInspectOpen and state.displayOptions.inspectMenuOpen or nil,
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