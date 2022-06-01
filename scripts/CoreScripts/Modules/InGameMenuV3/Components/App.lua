--[[
    The topbar button that opens the in-game menu.
]]

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local ViewportOverlay = require(script.Parent.ViewportOverlay)
local SideNavigation = require(script.Parent.SideNavigation)
local LeaveGameDialog = require(script.Parent.LeaveGameDialog)
local PageContainer = require(script.Parent.PageContainer)
local RespawnDialog = require(script.Parent.RespawnDialog)
local ControlLayoutSetter = require(script.Parent.ControlsPage.ControlLayoutSetter)
local Connection = require(script.Parent.Connection)
local EducationalPopup = require(script.Parent.EducationalPopup)
local MenuIconTooltip = require(script.Parent.MenuIconTooltip)
local FullscreenTitleBar = require(script.Parent.FullscreenTitleBar)
local QuickActions = require(script.Parent.QuickActions)
local ScreenshotToast = require(script.Parent.ScreenshotToast)
local ScreenOrientationSwitcher = require(script.Parent.ScreenOrientationSwitcher)

local Constants = require(InGameMenu.Resources.Constants)

local function App(props)
	local fullscreenTitleBar = nil
	if props.enableFullscreenTitleBar then
		fullscreenTitleBar = Roact.createElement(FullscreenTitleBar, {
			displayOrder = Constants.DisplayOrder.FullscreenTitleBar,
		})
	end

	return Roact.createFragment({
		Overlay = Roact.createElement(ViewportOverlay),
		SideNavigation = Roact.createElement(SideNavigation),
		LeaveGameDialog = Roact.createElement(LeaveGameDialog),
		PageContainer = Roact.createElement(PageContainer),
		RespawnDialog = Roact.createElement(RespawnDialog),
		ControlLayoutSetter = Roact.createElement(ControlLayoutSetter),
		Connection = Roact.createElement(Connection),
		EducationalPopup = props.isEducationalPopupEnabled and Roact.createElement(EducationalPopup) or nil,
		MenuIconTooltip = props.isEducationalPopupEnabled and Roact.createElement(MenuIconTooltip) or nil,
		FullscreenTitleBar = fullscreenTitleBar,
		QuickActions = Roact.createElement(QuickActions),
		ScreenshotToast = Roact.createElement(ScreenshotToast),
		ScreenOrientationSwitcher = Roact.createElement(ScreenOrientationSwitcher),
	})
end

App = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		enableFullscreenTitleBar = appPolicy.enableFullscreenTitleBar(),
		isEducationalPopupEnabled = appPolicy.enableEducationalPopup(),
	}
end)(App)

local function mapStateToProps(state, props)
	return {
		isMenuOpen = state.isMenuOpen,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(App)
