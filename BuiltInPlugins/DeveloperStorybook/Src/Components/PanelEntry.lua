--[[
	An entry in the InfoPanel with a header and automatic size from contents.

	Required Props:
		string Header: The header text of this component.

	Optional Props:
		string Description: A description which displays beneath the header.
		number LayoutOrder: The sort order of this component.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local Dash = Framework.Dash
local join = Dash.join

local ContextServices = Framework.ContextServices
local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local PanelEntry = Roact.PureComponent:extend("InfoPanel")

function PanelEntry:render()
	local props = self.props
	local style = props.Stylizer
	local text = style.Text
	local sizes = style.Sizes
	local header = props.Header
	local description = props.Description
	local layoutOrder = props.LayoutOrder

	local children = {
		Name = Roact.createElement(TextLabel, {
			LayoutOrder = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			Text = header,
			TextSize = text.Header.Size,
			TextColor = text.Header.Color,
		}),
		Description = description and Roact.createElement(TextLabel, {
			LayoutOrder = 2,
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			Text = description,
			TextWrapped = true,
		}),
	}
	return Roact.createElement(Pane, {
		Style = "BorderBox",
		Padding = sizes.OuterPadding,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = layoutOrder,
		AutomaticSize = Enum.AutomaticSize.Y,
	}, join(children, self.props[Roact.Children]))
end

ContextServices.mapToProps(PanelEntry, {
	Stylizer = ContextServices.Stylizer
})

return PanelEntry
