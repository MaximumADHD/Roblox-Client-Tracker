--[[
	An array of strings and/or elements displayed as a bulleted list.
	Required Props:
		array[any] Items: The item to display after each bullet point. Should be an array of strings and/or elements.
			Strings will be measured to determine the item size. Elements must specify their own size.
	Optional Props:
		UDim2 Position: The Position of the BulletList.
		UDim2 Size: The Size of the BulletList.
		number LayoutOrder: Order in which the element is placed.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		boolean TextWrapped: Sets text wrapped.
		Enum.TextTruncate TextTruncate: Sets text truncated.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
	Style Values:
		Enum.Font Font: The font used to render the text.
		number ItemOffset: The distance between the marker's right edge and the list item, in pixels.
		string MarkerImage: The Marker Image. The image will be colorised with the TextColor.
		number MarkerSize: The size of the Marker - assumes a 1:1 aspect ratio.
		number Padding: The padding value to apply between each item.
		Color3 TextColor: The color of the text.
		number TextSize: The size of the text.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local t = require(Framework.Util.Typecheck.t)
local Typecheck = require(Framework.Util.Typecheck)
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local React = require(Framework.Util.React)

local Dash = require(Framework.Parent.Dash)
local map = Dash.map

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local Image = require(UI.Components.Image)
local TextLabel = require(UI.Components.TextLabel)

local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()
local isRoact17 = require(Framework.Util.isRoact17)(Roact)

local BulletList = Roact.PureComponent:extend("BulletList")
Typecheck.wrap(BulletList, script)

function BulletList:calculateItemOffset()
	local style = self.props.Stylizer

	local itemOffset = style.ItemOffset
	local markerSize = style.MarkerSize

	assert(t.numberMin(0)(markerSize), "MarkerSize style must be a number >= 0")
	assert(t.number(itemOffset), "ItemOffset style must be a number")

	return markerSize + itemOffset
end

function BulletList:render()
	local props = self.props
	local textWrapped = props.TextWrapped
	local textTruncate = props.TextTruncate

	local items = props.Items
	local style = props.Stylizer

	local font = style.Font
	local itemIndentation = style.ItemIndentation
	local markerImage = style.MarkerImage
	local markerSize = style.MarkerSize
	local textColor = style.TextColor
	local textSize = style.TextSize
	local lineHeight = style.LineHeight
	local spacing = style.Padding

	local itemOffset = self:calculateItemOffset()
	local itemSize = UDim2.new(1, -itemOffset, 0, 0)

	assert(t.numberMin(0)(markerSize), "MarkerSize style must be a number >= 0")
	assert(t.numberMin(0)(textSize), "TextSize style must be a number >= 0")

	local children = map(items, function(item, i: number)
		local itemElement
		local currItemIndentation = itemIndentation
		local currMarkerImage = markerImage

		if type(item) == "string" then
			itemElement = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Font = font,
				LayoutOrder = 2,
				Size = itemSize,
				Text = item,
				TextColor = textColor,
				TextSize = textSize,
				TextTruncate = textTruncate,
				TextWrapped = textWrapped,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		elseif typeof(item) == "table" and item.Text then
			local subItemStyle = style[string.format("&%s", item.Style)]
			assert(subItemStyle, string.format("BulletList Style '%s' was not found", item.Style))

			local subItemSize = UDim2.new(1, -subItemStyle.ItemOffset, 0, 0)
			currItemIndentation = subItemStyle.ItemIndentation or currItemIndentation
			currMarkerImage = subItemStyle.MarkerStyle or currMarkerImage

			itemElement = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Font = font,
				LayoutOrder = 2,
				Size = subItemSize,
				Text = item.Text,
				TextColor = textColor,
				TextWrapped = textWrapped,
				TextSize = textSize,
				TextTruncate = textTruncate,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		else
			itemElement = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 2,
				Size = itemSize,
			}, {
				ContentElement = item,
			})
		end

		return Roact.createElement(
			Pane,
			Dash.join(
				{
					key = if FFlagDevFrameworkFixMissingKeyErrors and isRoact17 then tostring(i) else nil,
					AutomaticSize = Enum.AutomaticSize.XY,
					LayoutOrder = i,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					Layout = Enum.FillDirection.Horizontal,
					Spacing = spacing,
					Padding = if currItemIndentation
						then {
							Left = currItemIndentation,
						}
						else nil,
				},
				if supportsStyleSheets
					then {
						[React.Tag] = "ListItem",
					}
					else {}
			),
			{
				Marker = Roact.createElement(Pane, {
					LayoutOrder = 1,
					Size = UDim2.fromOffset(markerSize, lineHeight),
				}, {
					Image = Roact.createElement(Image, {
						Image = currMarkerImage,
						ImageColor3 = textColor,
						LayoutOrder = 1,
						Position = UDim2.fromScale(0, 0.5),
						Size = UDim2.fromOffset(markerSize, markerSize),
					}),
				}),
				Content = itemElement,
			}
		)
	end)

	local size = props.Size
	local position = props.Position
	local automaticSize = Enum.AutomaticSize.XY
	if size and (size.X.Scale > 0 or size.X.Offset > 0) then
		automaticSize = Enum.AutomaticSize.Y
	end

	return Roact.createElement(
		Pane,
		Dash.join(
			{
				AutomaticSize = automaticSize,
				BackgroundTransparency = 1,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = props.LayoutOrder or 1,
				Position = position,
				Size = size,
			},
			if supportsStyleSheets
				then {
					[React.Tag] = "List",
				}
				else {}
		),
		children
	)
end

BulletList = withContext({
	Stylizer = ContextServices.Stylizer,
})(BulletList)

return BulletList
