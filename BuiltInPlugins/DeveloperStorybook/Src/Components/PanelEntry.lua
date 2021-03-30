--[[
	An entry in the InfoPanel with a header and automatic size from contents.

	Required Props:
		string Header: The header text of this component.

	Optional Props:
		string Description: A description which displays beneath the header.
		number LayoutOrder: The sort order of this component.
]]

local Main = script.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local Framework = require(Main.Packages.Framework)

local Dash = Framework.Dash
local mapOne = Dash.mapOne

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

	local contentChildren = props[Roact.Children]
	local hasChild = contentChildren and mapOne(contentChildren)
	local hasDescription = typeof(description) == "string" and description ~= ""

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
		Description = hasDescription and Roact.createElement(TextLabel, {
			LayoutOrder = 2,
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			Text = description,
			TextWrapped = true,
		}),
		Content = hasChild and Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, 0),
			LayoutOrder = 3,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Vertical,
			Padding = {
				Top = sizes.OuterPadding
			},
			Spacing = sizes.InnerPadding,
		}, contentChildren)
	}
	return Roact.createElement(Pane, {
		Style = "BorderBox",
		Padding = sizes.OuterPadding,
		Spacing = sizes.InnerPadding,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = layoutOrder,
		AutomaticSize = Enum.AutomaticSize.Y,
	}, children)
end

ContextServices.mapToProps(PanelEntry, {
	Stylizer = ContextServices.Stylizer
})

return PanelEntry
