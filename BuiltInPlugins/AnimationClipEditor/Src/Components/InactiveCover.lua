--[[
	This component covers the editor if the user deactivates the plugin
	while it is open (for example, selecting a part or other plugin).
	The OnFocused callback is for when the user returns focus to the editor.

	Props:
		function OnFocused() = A callback for when the user wants to
			return focus to the Animation Editor plugin.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local CaptureFocus = Framework.UI.CaptureFocus
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local InactiveCover = Roact.PureComponent:extend("InactiveCover")

function InactiveCover:render()
	local onFocused = self.props.OnFocused
	local theme = GetFFlagExtendPluginTheme() and self.props.Stylizer or self.props.Stylizer.PluginTheme
	local localization = self.props.Localization

	return Roact.createElement(CaptureFocus, {
		Priority = 100,
	}, {
		Text = Roact.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = Color3.new(),
			BackgroundTransparency = 0.35,
			AutoButtonColor = false,

			Font = theme.font,
			TextSize = theme.startScreenTheme.textSize,
			TextColor3 = theme.startScreenTheme.darkTextColor,
			Text = localization:getText("Title", "ClickToContinue"),

			[Roact.Event.Activated] = onFocused,
		}),
	})
end

InactiveCover = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(InactiveCover)

return InactiveCover
