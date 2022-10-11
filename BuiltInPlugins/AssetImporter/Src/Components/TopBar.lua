local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane
local TextInput2 = UI.TextInput2

local getFFlagDevFrameworkTextInput2SizingChoice = require(Plugin.Src.Flags.getFFlagDevFrameworkTextInput2SizingChoice)

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
		TextInput = Roact.createElement(TextInput2, {
			AutomaticSize = if getFFlagDevFrameworkTextInput2SizingChoice() then Enum.AutomaticSize.None else nil,
			Disabled = true,
			LayoutOrder = 2,
			Size = UDim2.new(1, -offset, 1, 0),
			Text = props.FileName,
		}),
	})
end

TopBar = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(TopBar)

return TopBar
