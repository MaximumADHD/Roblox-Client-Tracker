--[[
    The topbar button that opens the in-game menu.
]]

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

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

local GetFFlagEducationalPopupOnNativeClose = require(RobloxGui.Modules.Flags.GetFFlagEducationalPopupOnNativeClose)
local FFlagLuaMenuPerfImprovements = require(script.Parent.Parent.Flags.FFlagLuaMenuPerfImprovements)
local GetFFlagInGameMenuIconTooltip = require(RobloxGui.Modules.Flags.GetFFlagInGameMenuIconTooltip)

local function App(props)
	if FFlagLuaMenuPerfImprovements then
		return Roact.createFragment({
			Content = props.visible and Roact.createFragment({
				Overlay = Roact.createElement(ViewportOverlay),
				SideNavigation = Roact.createElement(SideNavigation),
				LeaveGameDialog = Roact.createElement(LeaveGameDialog),
				PageContainer = Roact.createElement(PageContainer),
				RespawnDialog = Roact.createElement(RespawnDialog),
				ReportDialog = Roact.createElement(ReportDialog),
				ReportSentDialog = Roact.createElement(ReportSentDialog),
				ControlLayoutSetter = Roact.createElement(ControlLayoutSetter),
				EducationalPopup = GetFFlagEducationalPopupOnNativeClose() and Roact.createElement(EducationalPopup) or nil,
				MenuIconTooltip = GetFFlagInGameMenuIconTooltip() and Roact.createElement(MenuIconTooltip) or nil,
			}) or nil,
			Connection = Roact.createElement(Connection),
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
			ControlLayoutSetter = Roact.createElement(ControlLayoutSetter),
			Connection = Roact.createElement(Connection),
			EducationalPopup = GetFFlagEducationalPopupOnNativeClose() and Roact.createElement(EducationalPopup) or nil,
			MenuIconTooltip = GetFFlagInGameMenuIconTooltip() and Roact.createElement(MenuIconTooltip) or nil,
		})
	end
end

local function mapStateToProps(state, props)
	return { visible = state.isMenuOpen }
end

return RoactRodux.connect(mapStateToProps, nil)(App)
