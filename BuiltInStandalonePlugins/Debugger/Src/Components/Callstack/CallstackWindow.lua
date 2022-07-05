local Plugin = script.Parent.Parent.Parent.Parent
-- local Types = require(Plugin.Src.Types) -- Uncomment to access types
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local CallstackComponent = require(Plugin.Src.Components.Callstack.CallstackComponent)

local FFlagDebuggerUIQTitanDockingFixes = require(Plugin.Src.Flags.GetFFlagDebuggerUIQTitanDockingFixes)

local CallstackWindow = Roact.PureComponent:extend("CallstackWindow")

function CallstackWindow:render()
	local props = self.props
	local localization = props.Localization

	local enabled = props.Enabled
	local onClose = props.OnClose

	return Roact.createElement(DockWidget, {
		Title = localization:getText("Callstack", "WindowName"),
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		InitialDockState = Enum.InitialDockState.Bottom,
		InitialEnabled = if FFlagDebuggerUIQTitanDockingFixes() then nil else true,
		InitialEnabledShouldOverrideRestore = if FFlagDebuggerUIQTitanDockingFixes() then nil else false,
		Size = Vector2.new(640, 480),
		MinSize = Vector2.new(250, 200),
		Enabled = enabled,
		OnClose = onClose,
		ShouldRestore = if FFlagDebuggerUIQTitanDockingFixes() then true else nil,
		OnWidgetRestored = if FFlagDebuggerUIQTitanDockingFixes() then props.OnRestore else nil,
		[Roact.Change.Enabled] = if FFlagDebuggerUIQTitanDockingFixes() then props.OnWidgetEnabledChanged else nil,
	}, {
		Callstack = Roact.createElement(CallstackComponent),
	})
end

CallstackWindow = withContext({
	Localization = Localization,
})(CallstackWindow)

return CallstackWindow
