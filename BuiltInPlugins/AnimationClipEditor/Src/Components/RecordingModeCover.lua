--[[
	This component covers the editor if the user is in the Recording mode
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local CaptureFocus = Framework.UI.CaptureFocus

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local RecordingModeCover = Roact.PureComponent:extend("RecordingModeCover")

function RecordingModeCover:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
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
			Text = localization:getText("FaceCapture", "IsRecordingCoverText"),
		}),
	})
end

RecordingModeCover = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(RecordingModeCover)

return RecordingModeCover