--[[
	An array of strings and/or elements displayed as a bulleted list.
	Required Props:
		array[BulletListItem] Items: The item to display after each bullet point. Should be an array of strings and/or elements.
			Strings will be measured to determine the item size. Elements must specify their own size.
	Optional Props:
		UDim2 Position: The Position of the BulletList.
		UDim2 Size: The Size of the BulletList.
		number LayoutOrder: Order in which the element is placed.
		boolean TextWrapped: Sets text wrapped.
		Enum.TextTruncate TextTruncate: Sets text truncated.
		ListStyle ListStyle: The style to apply to the list.
			Defaults to DEFAULT_LIST_STYLE.
			See below for details on the ListStyle.
	List Style Values:
		Enum.Font Font: The font used to render the text.
		number ItemOffset: The distance between the marker's right edge and the list item, in pixels.
		string MarkerImage: The Marker Image. The image will be colorised with the TextColor.
		number MarkerSize: The size of the Marker - assumes a 1:1 aspect ratio.
		number Padding: The padding value to apply between each item.
		Color3 TextColor: The color of the text.
		number TextSize: The size of the text.
		SubItemStyle SubItemStyle: The style to apply to sub-items.
			SubItemStyle is an object with the following properties:
				number ItemOffset: The distance between the marker's right edge and the sub-item, in pixels.
				number ItemIndentation: The indentation of the sub-item, in pixels.
]]
local Packages = script:FindFirstAncestor("MarkdownCore").Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)

local map = Dash.map
type ReactElement<T> = React.Element<T>

local View = Foundation.View
local Image = Foundation.Image
local Text = Foundation.Text

local DEFAULT_LIST_STYLE = {
	ItemOffset = 12,
	MarkerImage = "rbxasset://textures/StudioSharedUI/dot.png",
	MarkerSize = 4,
	Padding = 6,
	LineHeight = 18,
	Font = Enum.Font.BuilderSans,
	TextColor = Color3.fromRGB(0, 0, 0),
	TextSize = 18,
	ItemIndentation = 0,
	SubItemStyle = {
		ItemIndentation = 20,
		ItemOffset = 12,
	},
}

local function calculateItemOffset(itemOffset: number, markerSize: number): number
	return markerSize + itemOffset
end

type BulletListItem = string | ReactElement<any> | {
	Prefix: string?,
	Text: string,
	Style: string?,
} | {
	Prefix: string?,
	Item: ReactElement<any>,
}

type ListStyle = {
	Font: Enum.Font?,
	LineHeight: number?,
	ItemOffset: number?,
	MarkerImage: string?,
	MarkerSize: number?,
	Padding: number?,
	TextColor: Color3?,
	TextSize: number?,
	ItemIndentation: number?,
	SubItemStyle: {
		ItemOffset: number?,
		ItemIndentation: number?,
	}?,
}

type Props = {
	Items: { BulletListItem },
	Position: UDim2?,
	Size: UDim2?,
	LayoutOrder: number?,
	StyleModifier: string?,
	TextWrapped: boolean?,
	TextTruncate: Enum.TextTruncate?,
	ListStyle: ListStyle?,
	children: { [any]: ReactElement<any> }?,
}

local function isOrdered(prefix: string?)
	return prefix and not prefix:find("^*") and not prefix:find("^-")
end

local function BulletList(props: Props)
	local tokens = Foundation.Hooks.useTokens()

	local textWrapped = props.TextWrapped
	local textTruncate = props.TextTruncate
	local listStyle = props.ListStyle or DEFAULT_LIST_STYLE

	local items = props.Items

	local itemIndentation = listStyle.ItemIndentation or DEFAULT_LIST_STYLE.ItemIndentation

	local itemOffset = calculateItemOffset(tokens.Gap.Small, listStyle.MarkerSize or DEFAULT_LIST_STYLE.MarkerSize)
	local itemSize = UDim2.new(1, -itemOffset, 0, 0)

	local children = map(items, function(item, i: number)
		local itemElement
		local currItemIndentation = itemIndentation
		local currMarkerImage = listStyle.MarkerImage or DEFAULT_LIST_STYLE.MarkerImage
		local itemPadding

		local prefix = nil

		if type(item) == "string" then
			itemElement = React.createElement(Text, {
				AutomaticSize = Enum.AutomaticSize.XY,
				Font = listStyle.Font or DEFAULT_LIST_STYLE.Font,
				LayoutOrder = 2,
				Size = itemSize,
				Text = item,
				TextColor = listStyle.TextColor or DEFAULT_LIST_STYLE.TextColor,
				TextSize = listStyle.TextSize or DEFAULT_LIST_STYLE.TextSize,
				TextTruncate = textTruncate,
				TextWrapped = textWrapped,
				Padding = listStyle.Padding or DEFAULT_LIST_STYLE.Padding,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		elseif typeof(item) == "table" and item.Text then
			prefix = item.Prefix

			local subItemStyle = listStyle.SubItemStyle

			local subItemSize =
				UDim2.new(1, -subItemStyle.ItemOffset or DEFAULT_LIST_STYLE.SubItemStyle.ItemOffset, 0, 0)

			currItemIndentation = subItemStyle.ItemIndentation or currItemIndentation

			currMarkerImage = subItemStyle.MarkerStyle or currMarkerImage

			if currItemIndentation then
				itemPadding = React.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, currItemIndentation),
				})
			end

			itemElement = React.createElement(Text, {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
				Size = subItemSize,
				textStyle = {
					Color3 = listStyle.TextColor or DEFAULT_LIST_STYLE.TextColor,
				},
				FontStyle = {
					Font = listStyle.Font or DEFAULT_LIST_STYLE.Font,
					FontSize = listStyle.TextSize or DEFAULT_LIST_STYLE.TextSize,
				},
				Text = item.Text,
				TextWrapped = textWrapped,
				TextTruncate = textTruncate,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		elseif typeof(item) == "table" and item.Item then
			prefix = item.Prefix

			itemElement = React.createElement(View, {
				tag = "auto-y",
				LayoutOrder = 2,
				Size = itemSize,
			}, {
				ContentElement = item.Item,
			})
		else
			itemElement = React.createElement(View, {
				tag = "auto-y",
				LayoutOrder = 2,
				Size = itemSize,
			}, {
				ContentElement = item,
			})
		end

		return React.createElement(View, {
			key = tostring(i),
			testId = "--markdown--bullet-list-item",
			LayoutOrder = i,
			tag = "gap-small auto-xy row align-x-left align-y-top",
		}, {
			Marker = React.createElement(View, {
				LayoutOrder = 1,
				Size = UDim2.fromOffset(
					listStyle.MarkerSize or DEFAULT_LIST_STYLE.MarkerSize,
					listStyle.LineHeight or DEFAULT_LIST_STYLE.LineHeight
				),
			}, {
				Image = if isOrdered(prefix)
					then React.createElement(Text, {
						tag = "position-center-left anchor-center-left",
						Text = `{prefix}.`,
						fontStyle = {
							Font = listStyle.Font or DEFAULT_LIST_STYLE.Font,
							FontSize = listStyle.TextSize or DEFAULT_LIST_STYLE.TextSize,
						},
						textStyle = {
							Color3 = listStyle.TextColor or DEFAULT_LIST_STYLE.TextColor,
						},
						Size = UDim2.fromOffset(
							listStyle.MarkerSize or DEFAULT_LIST_STYLE.MarkerSize,
							listStyle.MarkerSize or DEFAULT_LIST_STYLE.MarkerSize
						),
					})
					else React.createElement(Image, {
						tag = "position-center-left anchor-center-left",
						Image = currMarkerImage,
						imageStyle = {
							Color3 = listStyle.TextColor or DEFAULT_LIST_STYLE.TextColor,
						},
						LayoutOrder = 1,
						Size = UDim2.fromOffset(
							listStyle.MarkerSize or DEFAULT_LIST_STYLE.MarkerSize,
							listStyle.MarkerSize or DEFAULT_LIST_STYLE.MarkerSize
						),
					}),
			}),
			Content = itemElement,
			Padding = itemPadding,
		})
	end)

	local size = props.Size
	local position = props.Position
	local automaticSize = Enum.AutomaticSize.XY
	if size and (size.X.Scale > 0 or size.X.Offset > 0) then
		automaticSize = Enum.AutomaticSize.Y
	end

	return React.createElement(View, {
		testId = "--markdown--bullet-list",
		tag = "col align-x-left gap-small",
		AutomaticSize = automaticSize,
		backgroundStyle = {
			Transparency = 1,
		},
		LayoutOrder = props.LayoutOrder or 1,
		Position = position,
		Size = size,
	}, Dash.assign(children, props.children or {}))
end

return BulletList
