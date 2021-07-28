local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local BreakpointsTable = require(Plugin.Src.Components.Breakpoints.BreakpointsTable)

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
		InitialEnabled = true,
		InitialEnabledShouldOverrideRestore = true,
		Size = Vector2.new(750, 480),
		MinSize =  Vector2.new(250, 200),
		Enabled = enabled,
		OnClose = onClose,
	}, {
		BreakpointsTable = Roact.createElement(BreakpointsTable),
	})
end

ContextServices.mapToProps(BreakpointWindow, {
	Localization = Localization,
})

return BreakpointWindow
