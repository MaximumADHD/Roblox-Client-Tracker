local Plugin = script.Parent.Parent.Parent

local getFFlagDevFrameworkTextInput2 = require(Plugin.Src.Flags.getFFlagDevFrameworkTextInput2)

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane
local TextInput = UI.TextInput -- Remove with FFlagDevFrameworkTextInput2
local TextInput2 = UI.TextInput2

local TopBar = Roact.PureComponent:extend("TopBar")

function TopBar:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer.TopBar

	local offset = style.ButtonSize.X.Offset + style.Spacing

	return Roact.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Horizontal,
		Padding = style.Padding,
		Size = props.Size,
		Spacing = style.Spacing,
	}, {
		BrowseButton = Roact.createElement(Button, {
			LayoutOrder = 1,
			Size = style.ButtonSize,
			Style = "Round",
			Text = localization:getText("Plugin", "Browse"),
			OnClick = self.props.OnBrowse,
		}),
		TextInput = Roact.createElement(getFFlagDevFrameworkTextInput2() and TextInput2 or TextInput, {
			Disabled = getFFlagDevFrameworkTextInput2() and true or nil,
			Enabled = not getFFlagDevFrameworkTextInput2() and false or nil,
			LayoutOrder = 2,
			Size = UDim2.new(1, -offset, 1, 0),
			Style = not getFFlagDevFrameworkTextInput2() and "RoundedBorder" or nil,
			Text = props.FileName,
		}),
	})
end

TopBar = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(TopBar)

return TopBar
