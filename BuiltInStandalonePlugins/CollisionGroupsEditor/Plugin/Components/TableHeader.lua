local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame
local TextLabel = UI.Decoration.TextLabel

local StyleModifier = Framework.Util.StyleModifier

local Constants = require(script.Parent.Parent.Constants)
local GroupCountDisplay = require(script.Parent.GroupCountDisplay)

local TableHeader = Roact.Component:extend("TableHeader")

function TableHeader:render()
	local props = self.props
	local style = props.Stylizer.TableHeader
	local localization = props.Localization

	local headers = {}

	for index, group in ipairs(props.Groups) do
		local text = group.Name
		if text == "Default" then
			text = localization:getText("Groups", "DefaultGroupName")
		end

		headers[group.Name] = Roact.createElement(Pane, {
			Size = Constants.GridHeaderLabelSize,
			Style = "GroupLabel",
			StyleModifier = if group.Name == props.ColHovered then StyleModifier.Hover else nil,
			LayoutOrder = #props.Groups - index,
		}, {
			TextLabel = Roact.createElement(TextLabel, {
				Style = "GroupLabel",
				TextWrapped = true,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Size = UDim2.new(1, 0, 1, 0),
				Text = text,
			}),
		})
	end

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 0, Constants.GroupRowHeight),
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		Padding = style.Padding,
		Spacing = -1,
	}, {
		GroupCountDisplay = Roact.createElement(GroupCountDisplay, {
			GroupCount = #props.Groups,
			LayoutOrder = 1,
		}),

		Headers = Roact.createElement(ScrollingFrame, {
			Size = style.ScrollingFrameSize,
			AutomaticCanvasSize = Enum.AutomaticSize.XY,
			CanvasPosition = Vector2.new(props.ScrollPositionX, 0),
			ScrollingDirection = Enum.ScrollingDirection.X,
			Layout = Enum.FillDirection.Horizontal,
			Padding = style.ScrollingFramePadding,
			LayoutOrder = 2,
			ScrollBarThickness = 0,
			ScrollingEnabled = false,
		}, headers)
	})
end

TableHeader = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(TableHeader)

return TableHeader
