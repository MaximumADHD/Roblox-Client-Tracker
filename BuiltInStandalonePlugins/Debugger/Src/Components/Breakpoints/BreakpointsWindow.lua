local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local BreakpointsTable = require(Plugin.Src.Components.Breakpoints.BreakpointsTable)

local FFlagDebuggerUIQTitanDockingFixes = require(Plugin.Src.Flags.GetFFlagDebuggerUIQTitanDockingFixes)

local BreakpointWindow = Roact.PureComponent:extend("BreakpointWindow")

function BreakpointWindow:render()
	local props = self.props
	local localization = props.Localization

	local enabled = props.Enabled
	local onClose = props.OnClose

	return Roact.createElement(DockWidget, {
		Title = localization:getText("BreakpointsWindow", "WindowName"),
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		InitialDockState = Enum.InitialDockState.Bottom,
		InitialEnabled = if FFlagDebuggerUIQTitanDockingFixes() then nil else true,
		InitialEnabledShouldOverrideRestore = if FFlagDebuggerUIQTitanDockingFixes() then nil else false,
		Size = Vector2.new(750, 480),
		MinSize = Vector2.new(250, 200),
		Enabled = enabled,
		OnClose = onClose,
		ShouldRestore = if FFlagDebuggerUIQTitanDockingFixes() then true else nil,
		OnWidgetRestored = if FFlagDebuggerUIQTitanDockingFixes() then props.OnRestore else nil,
		[Roact.Change.Enabled] = if FFlagDebuggerUIQTitanDockingFixes() then props.OnWidgetEnabledChanged else nil,
	}, {
		BreakpointsTable = Roact.createElement(BreakpointsTable),
	})
end

BreakpointWindow = ContextServices.withContext({
	Localization = Localization,
})(BreakpointWindow)

return BreakpointWindow
