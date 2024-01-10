--[[
	An entry in the InfoPanel with a header and automatic size from contents.

	Required Props:
		string Header: The header text of this component.

	Optional Props:
		string Description: A description which displays beneath the header.
		number LayoutOrder: The sort order of this component.
]]

local Main = script.Parent.Parent.Parent
local React = require(Main.Packages.React)
local Framework = require(Main.Packages.Framework)

local Dash = Framework.Dash
local mapOne = Dash.mapOne

local UI = Framework.UI
local Pane = UI.Pane
local joinTags = Framework.Styling.joinTags
local TextLabel = UI.TextLabel

local PanelEntry = React.PureComponent:extend("InfoPanel")

function PanelEntry:render()
	local props = self.props
	local header = props.Header
	local description = props.Description
	local layoutOrder = props.LayoutOrder
	local size = props.Size

	local contentChildren = props.children
	local hasChild = contentChildren and mapOne(contentChildren)
	local hasDescription = typeof(description) == "string" and description ~= ""

	local children = {
		Name = React.createElement(TextLabel, {
			LayoutOrder = 1,
			Text = header,
			[React.Tag] = joinTags("Wrap X-FitY", if props.IsTitle then "Title" else "Subtitle"),
		}),
		Description = hasDescription and React.createElement(TextLabel, {
			LayoutOrder = 2,
			Text = description,
			[React.Tag] = "Wrap X-FitY",
		}),
		Content = hasChild and React.createElement(Pane, {
			LayoutOrder = 3,
			[React.Tag] = "X-Pad X-ColumnM X-FitY",
		}, contentChildren),
	}
	return React.createElement(Pane, {
		LayoutOrder = layoutOrder,
		Size = size,
		[React.Tag] = "Main Border X-Pad X-ColumnM X-FitY",
	}, children)
end

return PanelEntry
