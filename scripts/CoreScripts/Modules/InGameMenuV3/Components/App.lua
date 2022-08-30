--[[
    The topbar button that opens the in-game menu.
]]

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local React = require(CorePackages.Packages.React)

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
local SideNavigationMemo = React.memo(SideNavigation)
local PageContainerMemo = React.memo(PageContainer)
local RespawnDialogMemo = React.memo(RespawnDialog)
local ScreenshotToastMemo = React.memo(ScreenshotToast)
local ScreenOrientationSwitcherMemo = React.memo(ScreenOrientationSwitcher)
local ViewportOverlayMemo = React.memo(ViewportOverlay)
local MenuIconTooltipMemo = React.memo(MenuIconTooltip)


local Constants = require(InGameMenu.Resources.Constants)

local function App(props)
	local fullscreenTitleBar = nil
	if props.enableFullscreenTitleBar then
		fullscreenTitleBar = Roact.createElement(FullscreenTitleBar, {
			displayOrder = Constants.DisplayOrder.FullscreenTitleBar,
		})
	end

	return Roact.createFragment({
		Overlay = Roact.createElement(ViewportOverlayMemo),
		SideNavigation = Roact.createElement(SideNavigationMemo),
		PageContainer = Roact.createElement(PageContainerMemo),
		RespawnDialog = Roact.createElement(RespawnDialogMemo),
		LeaveGameDialog = Roact.createElement(LeaveGameDialog),
		ControlLayoutSetter = Roact.createElement(ControlLayoutSetter),
		Connection = Roact.createElement(Connection),
		EducationalPopup = props.isEducationalPopupEnabled and Roact.createElement(EducationalPopup) or nil,
		MenuIconTooltip = props.isEducationalPopupEnabled and Roact.createElement(MenuIconTooltipMemo) or nil,
		FullscreenTitleBar = fullscreenTitleBar,
		QuickActions = Roact.createElement(QuickActions),
		ScreenshotToast = Roact.createElement(ScreenshotToastMemo),
		ScreenOrientationSwitcher = Roact.createElement(ScreenOrientationSwitcherMemo),
	})
end

App = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		enableFullscreenTitleBar = appPolicy.enableFullscreenTitleBar(),
		isEducationalPopupEnabled = appPolicy.enableEducationalPopup(),
	}
end)(App)

return App
