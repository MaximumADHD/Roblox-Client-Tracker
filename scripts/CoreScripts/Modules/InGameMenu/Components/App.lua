--[[
    The topbar button that opens the in-game menu.
]]

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenuPolicy = require(RobloxGui.Modules.InGameMenu.InGameMenuPolicy)

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

local GetFFlagEducationalPopupOnNativeClose = require(RobloxGui.Modules.Flags.GetFFlagEducationalPopupOnNativeClose)
local FFlagLuaMenuPerfImprovements = require(script.Parent.Parent.Flags.FFlagLuaMenuPerfImprovements)
local GetFFlagInGameMenuIconTooltip = require(RobloxGui.Modules.Flags.GetFFlagInGameMenuIconTooltip)
local GetFFlagUseRoactPolicyProvider = require(RobloxGui.Modules.Flags.GetFFlagUseRoactPolicyProvider)

local Constants = require(script.Parent.Parent.Resources.Constants)

local function App(props)
	local fullscreenTitleBar = nil
	if props.enableFullscreenTitleBar then
		fullscreenTitleBar = Roact.createElement(FullscreenTitleBar, {
			displayOrder = Constants.DisplayOrder.FullscreenTitleBar,
		})
	end

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
			}) or nil,
			Connection = Roact.createElement(Connection),
			EducationalPopup = GetFFlagEducationalPopupOnNativeClose() and Roact.createElement(EducationalPopup) or nil,
			MenuIconTooltip = GetFFlagInGameMenuIconTooltip() and Roact.createElement(MenuIconTooltip) or nil,
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
			ControlLayoutSetter = Roact.createElement(ControlLayoutSetter),
			Connection = Roact.createElement(Connection),
			EducationalPopup = GetFFlagEducationalPopupOnNativeClose() and Roact.createElement(EducationalPopup) or nil,
			MenuIconTooltip = GetFFlagInGameMenuIconTooltip() and Roact.createElement(MenuIconTooltip) or nil,
			FullscreenTitleBar = fullscreenTitleBar,
		})
	end
end

if GetFFlagUseRoactPolicyProvider() then
	App = InGameMenuPolicy.connect(function(appPolicy, props)
		return {
			enableFullscreenTitleBar = appPolicy.enableFullscreenTitleBar(),
		}
	end)(App)
end

local function mapStateToProps(state, props)
	return { visible = state.isMenuOpen }
end

return RoactRodux.connect(mapStateToProps, nil)(App)
