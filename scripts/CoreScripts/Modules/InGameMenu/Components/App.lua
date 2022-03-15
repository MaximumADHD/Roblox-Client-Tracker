--[[
    The topbar button that opens the in-game menu.
]]

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local IGMControllerBar = require(script.Parent.IGMControllerBar)
local InGameMenu = script.Parent.Parent
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local ViewportOverlay = require(script.Parent.ViewportOverlay)
local SideNavigation = require(script.Parent.SideNavigation)
local LeaveGameDialog = require(script.Parent.LeaveGameDialog)
local PageContainer = require(script.Parent.PageContainer)
local RespawnDialog = require(script.Parent.RespawnDialog)
local ReportDialog = require(script.Parent.ReportPage.ReportDialog)
local ReportSentDialog = require(script.Parent.ReportPage.ReportSentDialog)
local ControlLayoutSetter = require(script.Parent.ControlsPage.ControlLayoutSetter)
local Connection = require(script.Parent.Connection)
local EducationalPopup = require(script.Parent.EducationalPopup)
local MenuIconTooltip = require(script.Parent.MenuIconTooltip)
local FullscreenTitleBar = require(script.Parent.FullscreenTitleBar)

local Flags = InGameMenu.Flags
local FFlagLuaMenuPerfImprovements = require(Flags.FFlagLuaMenuPerfImprovements)
local GetFFlagUseIGMControllerBar = require(Flags.GetFFlagUseIGMControllerBar)
local GetFFlagIGMControllerBarRefactor = require(Flags.GetFFlagIGMControllerBarRefactor)

local Constants = require(InGameMenu.Resources.Constants)

local function App(props)
	local fullscreenTitleBar = nil
	if props.enableFullscreenTitleBar then
		fullscreenTitleBar = Roact.createElement(FullscreenTitleBar, {
			displayOrder = Constants.DisplayOrder.FullscreenTitleBar,
		})
	end

	if FFlagLuaMenuPerfImprovements then
		return Roact.createFragment({
			Content = props.isMenuOpen and Roact.createFragment({
				Overlay = Roact.createElement(ViewportOverlay),
				SideNavigation = Roact.createElement(SideNavigation),
				LeaveGameDialog = Roact.createElement(LeaveGameDialog),
				PageContainer = Roact.createElement(PageContainer),
				RespawnDialog = Roact.createElement(RespawnDialog),
				ReportDialog = Roact.createElement(ReportDialog),
				ReportSentDialog = Roact.createElement(ReportSentDialog),
				ControllerBar = (GetFFlagUseIGMControllerBar() and not GetFFlagIGMControllerBarRefactor()) and
					Roact.createElement(IGMControllerBar) or nil,
				ControlLayoutSetter = Roact.createElement(ControlLayoutSetter),
			}) or nil,
			Connection = Roact.createElement(Connection),
			EducationalPopup = props.isEducationalPopupEnabled and Roact.createElement(EducationalPopup) or nil,
			MenuIconTooltip = props.isEducationalPopupEnabled and Roact.createElement(MenuIconTooltip) or nil,
			FullscreenTitleBar = fullscreenTitleBar,
		})
	else
		return Roact.createFragment({
			Overlay = Roact.createElement(ViewportOverlay),
			SideNavigation = Roact.createElement(SideNavigation),
			LeaveGameDialog = Roact.createElement(LeaveGameDialog),
			PageContainer = Roact.createElement(PageContainer),
			RespawnDialog = Roact.createElement(RespawnDialog),
			ReportDialog = Roact.createElement(ReportDialog),
			ReportSentDialog = Roact.createElement(ReportSentDialog),
			ControllerBar = (GetFFlagUseIGMControllerBar() and not GetFFlagIGMControllerBarRefactor()) and
				Roact.createElement(IGMControllerBar) or nil,
			ControlLayoutSetter = Roact.createElement(ControlLayoutSetter),
			Connection = Roact.createElement(Connection),
			EducationalPopup = props.isEducationalPopupEnabled and Roact.createElement(EducationalPopup) or nil,
			MenuIconTooltip = props.isEducationalPopupEnabled and Roact.createElement(MenuIconTooltip) or nil,
			FullscreenTitleBar = fullscreenTitleBar,
		})
	end
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
