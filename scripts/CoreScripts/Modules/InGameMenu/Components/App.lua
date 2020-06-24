--[[
    The topbar button that opens the in-game menu.
]]

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact

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

local GetFFlagEducationalPopupOnNativeClose = require(RobloxGui.Modules.Flags.GetFFlagEducationalPopupOnNativeClose)

local function App(props)
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
	})
end

return App
