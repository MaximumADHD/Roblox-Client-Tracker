local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane
local TextInput = UI.TextInput

local TopBar = Roact.PureComponent:extend("TopBar")

function TopBar:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer.TopBar

	local offset = style.ButtonSize.X.Offset + style.Spacing

	return Roact.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Horizontal,
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
		TextInput = Roact.createElement(TextInput, {
			Enabled = false,
			LayoutOrder = 2,
			Size = UDim2.new(1, -offset, 0, 30),
			Style = "RoundedBorder",
			Text = props.FileName,
		}),
	})
end

ContextServices.mapToProps(TopBar, {
	Localization = Localization,
	Stylizer = Stylizer,
})

return TopBar
