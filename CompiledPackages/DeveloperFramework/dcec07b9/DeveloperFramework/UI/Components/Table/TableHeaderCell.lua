--[[
	A simple header cell of a table which can be sorted
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.Parent.Dash)
local assign = Dash.assign
local join = Dash.join

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local TextLabel = require(UI.Components.TextLabel)
local Image = require(UI.Components.Image)
local Tooltip = require(UI.Components.Tooltip)

local withControl = require(Framework.Wrappers.withControl)

local TableHeaderCell = Roact.PureComponent:extend("TableHeaderCell")

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local ARROW_HEIGHT = 8
local ARROW_OFFSET = 10
-- Height is used because the arrow is always rotated +-90 degrees, so its x axis is height
local TEXT_OFFSET = ARROW_OFFSET + ARROW_HEIGHT

function TableHeaderCell:render()
	local props = self.props
	local name = props.Name
	local order = props.Order
	local width = props.Width
	local index = props.ColumnIndex
	local style = props.Style
	local hasSort = props.OnPress ~= nil
	local tooltip = props.Tooltip
	local variant = props.Variant
	return Roact.createElement(
		Pane,
		assign(
			if supportsStyleSheets
				then {
					LayoutOrder = index,
					Size = UDim2.new(width.Scale, width.Offset, 1, 0),
					[React.Tag] = joinTags("Main X-PadS", if variant == "modern" then "X-Transparent" else "X-Border"),
				}
				else {
					LayoutOrder = index,
					BorderColor3 = style.Border,
					BorderSizePixel = 1,
					Padding = style.HeaderCellPadding,
					Style = "SubtleBox",
					StyleModifier = hasSort and props.StyleModifier or nil,
					Size = UDim2.new(width.Scale, width.Offset, 1, 0),
				},
			props.WrapperProps
		),
		{
			Text = Roact.createElement(
				TextLabel,
				if supportsStyleSheets
					then {
						Text = name,
						[React.Tag] = joinTags(
							"Left Truncate",
							if variant == "modern" then "BuilderSans Bold" else nil
						),
						Size = UDim2.new(1, if order then -TEXT_OFFSET else 0, 1, 0),
					}
					else {
						Text = name,
						Size = UDim2.new(1, if order then -TEXT_OFFSET else 0, 1, 0),
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
					}
			),
			Icon = order and Roact.createElement(
				Image,
				join(
					{
						ImageColor3 = if supportsStyleSheets then nil else style.IconColor,
						Image = "rbxasset://textures/DeveloperFramework/Table/sort_arrow.png",
						Size = UDim2.fromOffset(6, ARROW_HEIGHT),
						Position = UDim2.new(1, -ARROW_OFFSET, 0.5, -(ARROW_HEIGHT / 2)),
						Rotation = order == Enum.SortDirection.Descending and -90 or 90,
						AnchorPoint = Vector2.new(1, 0),
					},
					if supportsStyleSheets
						then {
							[React.Tag] = "Primary",
						}
						else nil
				)
			),
			Tooltip = tooltip and Roact.createElement(Tooltip, {
				Text = tooltip or name,
			}),
		}
	)
end

return withControl(TableHeaderCell)
